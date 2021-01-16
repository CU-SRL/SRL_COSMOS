# To add this test to Test Runner edit config/tools/test_runner/test_runner.txt
# Add this line:
#   LOAD_UTILITY 'cfs_pi_test'
#
# Test Runner test script
class Cfs_piTest < Cosmos::Test
  # def setup
  #   # Implement group level setup
  # end

  def test_command
    cmd("CFS_PI COMMAND")
    wait_check("CFS_PI STATUS BOOL == 'FALSE'", 5)
  end

  # def teardown
  #   # Implement group level teardown
  # end
end

class Cfs_piSuite < Cosmos::TestSuite
  # def setup
  #   # Implement suite level setup
  # end

  def initialize
    super()
    add_test('Cfs_piTest')
  end

  # def teardown
  #   # Implement suite level teardown
  # end
end
