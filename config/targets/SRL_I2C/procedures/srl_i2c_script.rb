# Script Runner test script
cmd("SRL_I2C COMMAND")
wait_check("SRL_I2C STATUS BOOL == 'FALSE'", 5)
