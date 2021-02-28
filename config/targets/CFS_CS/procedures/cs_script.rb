# Script Runner test script
cmd("CS COMMAND")
wait_check("CS STATUS BOOL == 'FALSE'", 5)
