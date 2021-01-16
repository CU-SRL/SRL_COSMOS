# Script Runner test script
cmd("TO_LAB COMMAND")
wait_check("TO_LAB STATUS BOOL == 'FALSE'", 5)
