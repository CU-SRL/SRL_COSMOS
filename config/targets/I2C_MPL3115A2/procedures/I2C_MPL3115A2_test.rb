# To add this test to Test Runner edit config/tools/test_runner/test_runner.txt
# Add this line:
#   LOAD_UTILITY 'I2C_MPL3115A2_test'
#
# Test Runner test script
class I2C_MPL3115A2Test < Cosmos::Test
  # def setup
  #   # Implement group level setup
  # end

  def test_command
    cmd("I2C_MPL3115A2 COMMAND")
    wait_check("I2C_MPL3115A2 STATUS BOOL == 'FALSE'", 5)
  end

  # def teardown
  #   # Implement group level teardown
  # end
end

class I2C_MPL3115A2Suite < Cosmos::TestSuite
  # def setup
  #   # Implement suite level setup
  # end

  def initialize
    super()
    add_test('I2C_MPL3115A2Test')
  end

  # def teardown
  #   # Implement suite level teardown
  # end
end
