# Script Runner test script
cmd("HK COMMAND")
wait_check("HK STATUS BOOL == 'FALSE'", 5)
