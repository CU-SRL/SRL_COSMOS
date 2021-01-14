# Script Runner test script
cmd("CFE_EVS COMMAND")
wait_check("CFE_EVS STATUS BOOL == 'FALSE'", 5)
