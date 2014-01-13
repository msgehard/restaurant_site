require "./item"
require 'csv'

class Menu
  def items
    CSV.foreach('config/menu.csv', headers: true).map do |row|
      Item.new(row[0], row[1], row[2])
    end
  end
end