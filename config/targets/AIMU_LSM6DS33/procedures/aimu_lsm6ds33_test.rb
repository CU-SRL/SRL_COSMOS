# To add this test to Test Runner edit config/tools/test_runner/test_runner.txt
# Add this line:
#   LOAD_UTILITY 'aimu_lsm6ds33_test'
#
# Test Runner test script
class aimu_lsm6ds33Test < Cosmos::Test
  # def setup
  #   # Implement group level setup
  # end

  def test_command
    cmd("AIMU_LSM6DS33 COMMAND")
    wait_check("AIMU_LSM6DS33 STATUS BOOL == 'FALSE'", 5)
  end

  # def teardown
  #   # Implement group level teardown
  # end
end

class aimu_lsm6ds33Suite < Cosmos::TestSuite
  # def setup
  #   # Implement suite level setup
  # end

  def initialize
    super()
    add_test('aimu_lsm6ds33Test')
  end

  # def teardown
  #   # Implement suite level teardown
  # end
end
