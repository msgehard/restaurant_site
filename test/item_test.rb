require 'test_helper'

describe Item do
  it "calculates a 10% discount on Wednsedays" do
    item = Item.new("Hamburger", 10.00, "Yummy Goodness")

    not_wednesday = Date.new(2014, 1, 16)
    item.price_on(not_wednesday).must_equal 10.00

    wednesday = Date.new(2014, 1, 15)
    item.price_on(wednesday).must_equal 9.00
  end
end