require "minitest/autorun"
require_relative "../parking"

class TestParking < Minitest::Test

def test_drive_in
  assert_equal @floats, @floats.drive_in(@animal, @vehicle, @color, @decoration), "Float not parked successfully"
end


def test_drive_out
  assert_equal nil, @floats.drive_out(@animal, @vehicle, @color, @decoration), "Float not retrieved successfully"
end

end
