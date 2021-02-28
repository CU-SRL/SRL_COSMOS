# Script Runner test script
cmd("FM COMMAND")
wait_check("FM STATUS BOOL == 'FALSE'", 5)
