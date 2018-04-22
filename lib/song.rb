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

  def artists
    @@artists.unique
  end
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
