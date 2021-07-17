# To add this test to Test Runner edit config/tools/test_runner/test_runner.txt
# Add this line:
#   LOAD_UTILITY 'srl_i2c_test'
#
# Test Runner test script
class SRL_I2CTest < Cosmos::Test
  # def setup
  #   # Implement group level setup
  # end

  def test_command
    cmd("SRL_I2C COMMAND")
    wait_check("SRL_I2C STATUS BOOL == 'FALSE'", 5)
  end

  # def teardown
  #   # Implement group level teardown
  # end
end

class SRL_I2CSuite < Cosmos::TestSuite
  # def setup
  #   # Implement suite level setup
  # end

  def initialize
    super()
    add_test('SRL_I2CTest')
  end

  # def teardown
  #   # Implement suite level teardown
  # end
end
