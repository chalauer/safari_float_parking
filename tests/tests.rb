require "minitest/autorun"
require_relative "../parking"
require_relative "../float"

class TestParking < Minitest::Test
def setup
@parking = Parking.new
end

def test_drive_in
@parking.send(:drive_in, "ape", "truck", "green", "glitter")
parked_floats = @parking.instance_variable_get(:@float)
assert_equal 1, parked_floats.size
assert_equal "ape truck green glitter", parked_floats.first.to_s
end

def test_drive_out
@parking.send(:drive_in, "ape", "truck", "green", "glitter")
@parking.send(:drive_out, "ape", "truck", "green", "glitter")
parked_floats = @parking.instance_variable_get(:@float)
assert_equal 0, parked_floats.size
end
end
