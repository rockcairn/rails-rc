require "test_helper"

class PeakTest < ActiveSupport::TestCase
  test "should save peak with name" do
    peak = Peak.new(name: "Test Peak")
    assert peak.save, "Failed to save Peak with a name"

    saved_peak = Peak.last
    assert_equal "Test Peak", saved_peak.name
  end

  test "should not save peak without name" do
    peak = Peak.new
    assert_not peak.save, "Saved the Peak without a name"
    assert_not_nil peak.errors[:name], "No validation error for name present"
    assert_includes peak.errors[:name], "can't be blank"
  end

  test "should update peak with name" do
    peak = Peak.new(name: "Test Peak")
    assert peak.save, "Failed to save Peak with a name"

    peak.update(name: "Updated Peak")
    assert peak.save, "Failed to update Peak with a new name"
    saved_peak = Peak.last
    assert_equal "Updated Peak", saved_peak.name
  end

  test "should be able to destroy peak" do
    peak = Peak.new(name: "Test Peak to Destroy")
    peak.save
    assert_difference "Peak.count", -1, "Failed to destroy Peak" do
      peak.destroy
    end
  end
end
