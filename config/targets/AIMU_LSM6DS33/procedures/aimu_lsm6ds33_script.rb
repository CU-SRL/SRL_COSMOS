# Script Runner test script
cmd("AIMU_LSM6DS33 COMMAND")
wait_check("AIMU_LSM6DS33 STATUS BOOL == 'FALSE'", 5)
