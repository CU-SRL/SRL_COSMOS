# To add this test to Test Runner edit config/tools/test_runner/test_runner.txt
# Add this line:
#   LOAD_UTILITY 'cfs_test'
#
# Test Runner test script
class CfsTest < Cosmos::Test
  # def setup
  #   # Implement group level setup
  # end

  def test_command
    cmd("CFS COMMAND")
    wait_check("CFS STATUS BOOL == 'FALSE'", 5)
  end

  # def teardown
  #   # Implement group level teardown
  # end
end

class CfsSuite < Cosmos::TestSuite
  # def setup
  #   # Implement suite level setup
  # end

  def initialize
    super()
    add_test('CfsTest')
  end

  # def teardown
  #   # Implement suite level teardown
  # end
end
