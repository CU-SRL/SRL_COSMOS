# To add this test to Test Runner edit config/tools/test_runner/test_runner.txt
# Add this line:
#   LOAD_UTILITY 'sc_test'
#
# Test Runner test script
class ScTest < Cosmos::Test
  # def setup
  #   # Implement group level setup
  # end

  def test_command
    cmd("SC COMMAND")
    wait_check("SC STATUS BOOL == 'FALSE'", 5)
  end

  # def teardown
  #   # Implement group level teardown
  # end
end

class ScSuite < Cosmos::TestSuite
  # def setup
  #   # Implement suite level setup
  # end

  def initialize
    super()
    add_test('ScTest')
  end

  # def teardown
  #   # Implement suite level teardown
  # end
end
