# Script Runner test script
cmd("AIMU_LPS25H COMMAND")
wait_check("AIMU_LPS25H STATUS BOOL == 'FALSE'", 5)
