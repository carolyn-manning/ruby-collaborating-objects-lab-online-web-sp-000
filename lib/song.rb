class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(file_name)
    file_array = file_name.split(" - ")
    song = self.new(file_array[1])
    song.artist = Artist.find_or_create_by_name(file_array[0])
    song
  end

  Def artist_name= (name)

end
