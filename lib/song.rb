class Song

  @@count
  @@artists=[]
  @@genres=[]

  attr_accessor :name, :artist,:genre

  def initialize(name, artist,genre)
    @name=name
    @artist=artist
    @genre=genre
    @@count+=1
  end

  def count
    @@count
  end

  def artist=(artist)
    if @@artists.detect {|i| i==artist} == nil
      @@artists<<artist
    else
      @@artists[artist]+=1
    end
  end

  def artists
    @@artists
  end
end
