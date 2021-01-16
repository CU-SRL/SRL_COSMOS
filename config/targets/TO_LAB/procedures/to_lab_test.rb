# To add this test to Test Runner edit config/tools/test_runner/test_runner.txt
# Add this line:
#   LOAD_UTILITY 'to_lab_test'
#
# Test Runner test script
class To_labTest < Cosmos::Test
  # def setup
  #   # Implement group level setup
  # end

  def test_command
    cmd("TO_LAB COMMAND")
    wait_check("TO_LAB STATUS BOOL == 'FALSE'", 5)
  end

  # def teardown
  #   # Implement group level teardown
  # end
end

class To_labSuite < Cosmos::TestSuite
  # def setup
  #   # Implement suite level setup
  # end

  def initialize
    super()
    add_test('To_labTest')
  end

  # def teardown
  #   # Implement suite level teardown
  # end
end
