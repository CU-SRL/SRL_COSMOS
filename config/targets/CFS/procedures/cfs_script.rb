# Script Runner test script
cmd("CFS COMMAND")
wait_check("CFS STATUS BOOL == 'FALSE'", 5)
