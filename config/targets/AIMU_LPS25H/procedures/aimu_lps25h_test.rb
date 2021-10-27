# To add this test to Test Runner edit config/tools/test_runner/test_runner.txt
# Add this line:
#   LOAD_UTILITY 'aimu_lps25h_test'
#
# Test Runner test script
class aimu_lps25hTest < Cosmos::Test
  # def setup
  #   # Implement group level setup
  # end

  def test_command
    cmd("AIMU_LPS25H COMMAND")
    wait_check("AIMU_LPS25H STATUS BOOL == 'FALSE'", 5)
  end

  # def teardown
  #   # Implement group level teardown
  # end
end

class aimu_lps25hSuite < Cosmos::TestSuite
  # def setup
  #   # Implement suite level setup
  # end

  def initialize
    super()
    add_test('aimu_lps25hTest')
  end

  # def teardown
  #   # Implement suite level teardown
  # end
end
