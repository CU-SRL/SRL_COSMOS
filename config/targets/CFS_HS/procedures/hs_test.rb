# To add this test to Test Runner edit config/tools/test_runner/test_runner.txt
# Add this line:
#   LOAD_UTILITY 'hs_test'
#
# Test Runner test script
class HsTest < Cosmos::Test
  # def setup
  #   # Implement group level setup
  # end

  def test_command
    cmd("HS COMMAND")
    wait_check("HS STATUS BOOL == 'FALSE'", 5)
  end

  # def teardown
  #   # Implement group level teardown
  # end
end

class HsSuite < Cosmos::TestSuite
  # def setup
  #   # Implement suite level setup
  # end

  def initialize
    super()
    add_test('HsTest')
  end

  # def teardown
  #   # Implement suite level teardown
  # end
end
