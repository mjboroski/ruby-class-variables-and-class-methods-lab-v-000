class Song

  @@count=0
  @@artists=[]
  @@genres=[]

  attr_accessor :name, :artist,:genre

  def initialize
    @@count+=1
  end

  def count
    @@count
  end

  def artist=(artist)
     if @@artists.detect {|i| i==artist} == nil
      @@artists<<artist
    else @@artists[artist]+=1
    end
end
