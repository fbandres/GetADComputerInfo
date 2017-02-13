##############################################################################################################
#
# Title: GetADComputerInfo
# Author: Francis Paulo B. Andres
# Website: http://francisandres.com
# Description: Get Active Directory Computer Information from a CSV file.
#
##############################################################################################################

# Import the CSV file to a variable
$computers = Import-CSV "C:\Users\francis\Desktop\ADComputers.csv"

# Get computer information using Get-ADComputer cmdlet
$computers | foreach-object {Get-AdComputer -Identity ($_.Servername) | Select Name, Enabled} | Format-Table -Autosize