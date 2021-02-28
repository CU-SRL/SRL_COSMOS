# Script Runner test script
cmd("DS COMMAND")
wait_check("DS STATUS BOOL == 'FALSE'", 5)
