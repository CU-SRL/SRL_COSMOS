# Script Runner test script
cmd("CFE_TBL COMMAND")
wait_check("CFE_TBL STATUS BOOL == 'FALSE'", 5)
