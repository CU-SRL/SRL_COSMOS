# Script Runner test script
cmd("CI_LAB COMMAND")
wait_check("CI_LAB STATUS BOOL == 'FALSE'", 5)
