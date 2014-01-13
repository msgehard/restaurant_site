class Images
  def random
    image_files = Dir.glob("./public/images/*.jpg")
    image_files.map { |filename| "images/#{File.basename(filename)}" }.sample
  end
end