# To add this test to Test Runner edit config/tools/test_runner/test_runner.txt
# Add this line:
#   LOAD_UTILITY 'cs_test'
#
# Test Runner test script
class CsTest < Cosmos::Test
  # def setup
  #   # Implement group level setup
  # end

  def test_command
    cmd("CS COMMAND")
    wait_check("CS STATUS BOOL == 'FALSE'", 5)
  end

  # def teardown
  #   # Implement group level teardown
  # end
end

class CsSuite < Cosmos::TestSuite
  # def setup
  #   # Implement suite level setup
  # end

  def initialize
    super()
    add_test('CsTest')
  end

  # def teardown
  #   # Implement suite level teardown
  # end
end
