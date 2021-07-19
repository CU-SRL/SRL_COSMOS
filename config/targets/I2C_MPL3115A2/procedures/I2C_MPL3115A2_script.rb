# Script Runner test script
cmd("I2C_MPL3115A2 COMMAND")
wait_check("I2C_MPL3115A2 STATUS BOOL == 'FALSE'", 5)
