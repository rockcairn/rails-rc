require "test_helper"

class PeakTest < ActiveSupport::TestCase
  test "should save peak with name" do
    peak = Peak.new(name: "Test Peak")
    assert peak.save, "Failed to save Peak with a name"

    saved_peak = Peak.last
    assert_equal "Test Peak", saved_peak.name
  end
end
