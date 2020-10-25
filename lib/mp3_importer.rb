class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(@path).select {|file| file.end_w?(".mp3")}
  end

  def import(filename)
    Song.new_by_filename(filename)
  end

end
