require 'test_helper'

describe Item do
  it "calculates a 10% discount on Wednsedays" do
    item = Item.new("Hamburger", 10.00, "Yummy Goodness")

    Timecop.freeze(Date.new(2014, 1, 16)) do
      item.price.must_equal 10.00
    end

    Timecop.freeze(Date.new(2014, 1, 15)) do
      item.price.must_equal 9.00
    end
  end
end