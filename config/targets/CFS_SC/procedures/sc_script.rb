# Script Runner test script
cmd("SC COMMAND")
wait_check("SC STATUS BOOL == 'FALSE'", 5)
