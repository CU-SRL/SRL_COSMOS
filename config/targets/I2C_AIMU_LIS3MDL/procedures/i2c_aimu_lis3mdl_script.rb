# Script Runner test script
cmd("I2C_AIMU_LIS3MDL COMMAND")
wait_check("I2C_AIMU_LIS3MDL STATUS BOOL == 'FALSE'", 5)
