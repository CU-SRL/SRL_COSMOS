# Script Runner test script
cmd("HS COMMAND")
wait_check("HS STATUS BOOL == 'FALSE'", 5)
