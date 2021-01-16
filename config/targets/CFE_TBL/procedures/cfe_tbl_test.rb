# To add this test to Test Runner edit config/tools/test_runner/test_runner.txt
# Add this line:
#   LOAD_UTILITY 'cfe_tbl_test'
#
# Test Runner test script
class Cfe_tblTest < Cosmos::Test
  # def setup
  #   # Implement group level setup
  # end

  def test_command
    cmd("CFE_TBL COMMAND")
    wait_check("CFE_TBL STATUS BOOL == 'FALSE'", 5)
  end

  # def teardown
  #   # Implement group level teardown
  # end
end

class Cfe_tblSuite < Cosmos::TestSuite
  # def setup
  #   # Implement suite level setup
  # end

  def initialize
    super()
    add_test('Cfe_tblTest')
  end

  # def teardown
  #   # Implement suite level teardown
  # end
end
