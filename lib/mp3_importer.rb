class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir["/path/to/search/*"]
  end

  def import(filename)
    Song.new_by_filename(filename)
  end

end
