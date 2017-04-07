class Genre

  attr_reader :name, :songs, :artists

  def initialize(name) @name, @songs = name, [] end

  def artists() self.songs.map { |x| x.artist } end

  def add_song(song) @songs << song end

end
