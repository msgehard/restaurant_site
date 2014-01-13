class Item
  attr_reader :name, :description

  def initialize(name, original_price, description)
    @name = name
    @original_price = original_price
    @description = description
  end

  def price
    if Date.today.wednesday?
      original_price * 0.9
    else
      original_price
    end
  end

  private

  attr_reader :original_price
end