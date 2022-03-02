class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    # binding.pry
    self.genre.name
  end

  def drake_made_this

    # binding.pry

    # .find_or_create
    found = Artist.all.find_by(name: "Drake")
    
    !!found ? self.update(artist_id: found.id) : self.update(artist_id: Artist.create(name: "Drake").id)

    # when this method is called it should assign the song's artist to Drake
    # Drake doesn't exist in the database as an artist yet, so you'll have to create a record
    # Hint: you won't want to create an artist record every time this method is called, only if an Drake is *not found*

  end
end