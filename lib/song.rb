class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end
  
  def self.create
    song = self.new
    song.save
    song
  end
  
  def self.new_by_name(name)
      song = self.new
      song.name = name
      song
  end
  
  def self.create_by_name(name)
    song = self.new
    song.name = name
    song.save
    song
  end
  
  def self.find_by_name(name)
    self.all.find {|song| song.name == name}
  end
  
  def self.find_or_create_by_name(name)
    song = self.find_by_name(name)
    if song == nil 
      song = self.create_by_name(name)
   end
   song
  end
  
  def self.alphabetical
    self.all.sort_by { |song| song.name }
  end
  
  def self.new_from_filename(mp3_data_name)
    split_data = mp3_data_name.split(" - ")
    name = split_data[1]
    artist_name = split_data[0]
    
    song = self.new
    song.name = name
    song.artist_name = artist_name
    song
  end
  
  def self.destroy_all
    self.all.clear
  end
  
  def save
    self.class.all << self
  end

end
