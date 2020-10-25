class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @path.split
  end

  def import(filename)
    Song.new_by_filename(filename)


end
