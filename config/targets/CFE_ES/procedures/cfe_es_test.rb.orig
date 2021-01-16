# To add this test to Test Runner edit config/tools/test_runner/test_runner.txt
# Add this line:
#   LOAD_UTILITY 'cfe_es_test'
#
# Test Runner test script
class Cfe_esTest < Cosmos::Test
  # def setup
  #   # Implement group level setup
  # end

  def test_command
    cmd("CFE_ES COMMAND")
    wait_check("CFE_ES STATUS BOOL == 'FALSE'", 5)
  end

  # def teardown
  #   # Implement group level teardown
  # end
end

class Cfe_esSuite < Cosmos::TestSuite
  # def setup
  #   # Implement suite level setup
  # end

  def initialize
    super()
    add_test('Cfe_esTest')
  end

  # def teardown
  #   # Implement suite level teardown
  # end
end
