import pyodbc
import openpyxl

# Connect to the DB2 database using pyodbc
cnxn = pyodbc.connect('DRIVER={DB2 ODBC DRIVER};'
                      'DATABASE=database_name;'
                      'HOSTNAME=hostname;'
                      'PORT=port;'
                      'PROTOCOL=TCPIP;'
                      'UID=username;'
                      'PWD=password')

# Create a cursor to execute SQL queries
cursor = cnxn.cursor()

# Execute an SQL query to retrieve customer information
query = 'SELECT * FROM CUSTOMERS'
cursor.execute(query)

# Save the query results in a variable
customers = cursor.fetchall()

# Close the cursor and connection
cursor.close()
cnxn.close()

# Create an Excel workbook and add a worksheet
wb = openpyxl.Workbook()
ws = wb.active

# Add the query results to the worksheet, starting at cell A1
for row in customers:
    ws.append(row)

# Save the Excel workbook
wb.save('customers.xlsx')
