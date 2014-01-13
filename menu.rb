class Menu
  def items
    file = File.open('config/menu.txt')
    file.readlines
  end
end