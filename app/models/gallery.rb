class Gallery

  attr_reader :name, :city
  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @all
  end

  def paintings
    Painting.all.select {|painting| painting.gallery == self}
  end

  def artists
    (self.paintings.map {|painting| painting.artist}).uniq
  end

  def artist_names
    self.artists.map {|artist| artist.name}
  end

  def most_expensive_painting
    (self.paintings.sort_by {|painting| painting.price}).last # max_by would be more efficeient and wouldnt require the .last
  end


end

#work on staying with one topic at a time.