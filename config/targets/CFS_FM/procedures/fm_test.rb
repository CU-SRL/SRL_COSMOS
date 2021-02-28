# To add this test to Test Runner edit config/tools/test_runner/test_runner.txt
# Add this line:
#   LOAD_UTILITY 'fm_test'
#
# Test Runner test script
class FmTest < Cosmos::Test
  # def setup
  #   # Implement group level setup
  # end

  def test_command
    cmd("FM COMMAND")
    wait_check("FM STATUS BOOL == 'FALSE'", 5)
  end

  # def teardown
  #   # Implement group level teardown
  # end
end

class FmSuite < Cosmos::TestSuite
  # def setup
  #   # Implement suite level setup
  # end

  def initialize
    super()
    add_test('FmTest')
  end

  # def teardown
  #   # Implement suite level teardown
  # end
end
