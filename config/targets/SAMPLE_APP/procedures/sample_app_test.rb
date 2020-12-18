# To add this test to Test Runner edit config/tools/test_runner/test_runner.txt
# Add this line:
#   LOAD_UTILITY 'sample_app_test'
#
# Test Runner test script
class Sample_appTest < Cosmos::Test
  # def setup
  #   # Implement group level setup
  # end

  def test_command
    cmd("SAMPLE_APP COMMAND")
    wait_check("SAMPLE_APP STATUS BOOL == 'FALSE'", 5)
  end

  # def teardown
  #   # Implement group level teardown
  # end
end

class Sample_appSuite < Cosmos::TestSuite
  # def setup
  #   # Implement suite level setup
  # end

  def initialize
    super()
    add_test('Sample_appTest')
  end

  # def teardown
  #   # Implement suite level teardown
  # end
end
