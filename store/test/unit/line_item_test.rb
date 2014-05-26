require 'test_helper'

class LineItemTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert LineItem.new.valid?
  end
  
  test "should not save line_item without cart_id" do
    line_item = LineItem.new(:cart_id => nil)
    assert !line_item.save
  end
end
