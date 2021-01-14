# Script Runner test script
cmd("CFE_TIME COMMAND")
wait_check("CFE_TIME STATUS BOOL == 'FALSE'", 5)
