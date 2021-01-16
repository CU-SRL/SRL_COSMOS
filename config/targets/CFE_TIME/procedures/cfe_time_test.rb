# To add this test to Test Runner edit config/tools/test_runner/test_runner.txt
# Add this line:
#   LOAD_UTILITY 'cfe_time_test'
#
# Test Runner test script
class Cfe_timeTest < Cosmos::Test
  # def setup
  #   # Implement group level setup
  # end

  def test_command
    cmd("CFE_TIME COMMAND")
    wait_check("CFE_TIME STATUS BOOL == 'FALSE'", 5)
  end

  # def teardown
  #   # Implement group level teardown
  # end
end

class Cfe_timeSuite < Cosmos::TestSuite
  # def setup
  #   # Implement suite level setup
  # end

  def initialize
    super()
    add_test('Cfe_timeTest')
  end

  # def teardown
  #   # Implement suite level teardown
  # end
end
