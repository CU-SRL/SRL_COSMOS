# Script Runner test script
cmd("SAMPLE_APP COMMAND")
wait_check("SAMPLE_APP STATUS BOOL == 'FALSE'", 5)
