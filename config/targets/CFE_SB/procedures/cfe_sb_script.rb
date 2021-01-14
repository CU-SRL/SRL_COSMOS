# Script Runner test script
cmd("CFE_SB COMMAND")
wait_check("CFE_SB STATUS BOOL == 'FALSE'", 5)
