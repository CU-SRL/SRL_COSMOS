# To add this test to Test Runner edit config/tools/test_runner/test_runner.txt
# Add this line:
#   LOAD_UTILITY 'i2c_aimu_lis3mdl_test'
#
# Test Runner test script
class I2c_aimu_lis3mdlTest < Cosmos::Test
  # def setup
  #   # Implement group level setup
  # end

  def test_command
    cmd("I2C_AIMU_LIS3MDL COMMAND")
    wait_check("I2C_AIMU_LIS3MDL STATUS BOOL == 'FALSE'", 5)
  end

  # def teardown
  #   # Implement group level teardown
  # end
end

class I2c_aimu_lis3mdlSuite < Cosmos::TestSuite
  # def setup
  #   # Implement suite level setup
  # end

  def initialize
    super()
    add_test('I2c_aimu_lis3mdlTest')
  end

  # def teardown
  #   # Implement suite level teardown
  # end
end
