class Menu
  def items
    File.open('config/menu.txt').readlines
  end
end