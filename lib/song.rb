class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def initalize
    end

  def self.all
    @name = name
    @@all << self
    @@all
  end
  
  def self.create
    song = self.new
    song.save
    song
  end
  
  def self.new_by_name
      print self
  end
  

  def save
    self.class.all << self
  end

end
