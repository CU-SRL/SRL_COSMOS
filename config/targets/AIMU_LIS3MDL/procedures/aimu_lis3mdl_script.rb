# Script Runner test script
cmd("AIMU_LIS3MDL COMMAND")
wait_check("AIMU_LIS3MDL STATUS BOOL == 'FALSE'", 5)
