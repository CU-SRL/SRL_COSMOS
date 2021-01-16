# Script Runner test script
cmd("CFE_ES COMMAND")
wait_check("CFE_ES STATUS BOOL == 'FALSE'", 5)
