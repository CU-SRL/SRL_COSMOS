# To add this test to Test Runner edit config/tools/test_runner/test_runner.txt
# Add this line:
#   LOAD_UTILITY 'ci_lab_test'
#
# Test Runner test script
class Ci_labTest < Cosmos::Test
  # def setup
  #   # Implement group level setup
  # end

  def test_command
    cmd("CI_LAB COMMAND")
    wait_check("CI_LAB STATUS BOOL == 'FALSE'", 5)
  end

  # def teardown
  #   # Implement group level teardown
  # end
end

class Ci_labSuite < Cosmos::TestSuite
  # def setup
  #   # Implement suite level setup
  # end

  def initialize
    super()
    add_test('Ci_labTest')
  end

  # def teardown
  #   # Implement suite level teardown
  # end
end
