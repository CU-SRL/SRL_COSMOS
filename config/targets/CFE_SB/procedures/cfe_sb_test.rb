# To add this test to Test Runner edit config/tools/test_runner/test_runner.txt
# Add this line:
#   LOAD_UTILITY 'cfe_sb_test'
#
# Test Runner test script
class Cfe_sbTest < Cosmos::Test
  # def setup
  #   # Implement group level setup
  # end

  def test_command
    cmd("CFE_SB COMMAND")
    wait_check("CFE_SB STATUS BOOL == 'FALSE'", 5)
  end

  # def teardown
  #   # Implement group level teardown
  # end
end

class Cfe_sbSuite < Cosmos::TestSuite
  # def setup
  #   # Implement suite level setup
  # end

  def initialize
    super()
    add_test('Cfe_sbTest')
  end

  # def teardown
  #   # Implement suite level teardown
  # end
end
