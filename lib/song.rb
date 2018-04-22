class Song

  @@count=0
  @@artists=[]
  @@genres=[]

  attr_accessor :name, :artist,:genre

  def initialize(name, artist,genre)
    @name=name
    @artist=artist
    @genre=genre
    @@artists<<artist
    @@genres<<genre
    @@count+=1
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.artist_count
    artist_count={}
    @@artists.each do |artist|
      artist_count.artist ? artist_count[artist] += 1 : artist_count[artist] = 1
    end
    artist_count
  end


end
