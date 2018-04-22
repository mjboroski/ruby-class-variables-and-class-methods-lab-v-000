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

  def count
    return @@count
  end

  # def artist=(artist)
  #   if @@artists.detect {|i| i==artist} == nil
  #     @@artists<<artist
  #   else
  #     @@artists[artist]+=1
  #   end
  # end

  # def artists
  #   x=[]
  #   @@artists.each do |y|
  #     x<<y
  #   end
  #   return x
  # end

  # def genres
  #   @@genres
  # end

end
