# Script Runner test script
cmd("CFS_PI COMMAND")
wait_check("CFS_PI STATUS BOOL == 'FALSE'", 5)
