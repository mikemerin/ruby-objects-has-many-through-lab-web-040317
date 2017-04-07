class Artist

  attr_reader :name, :songs

  def initialize(name) @name, @songs = name, [] end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def genres() self.songs.map { |x| x.genre } end


end
