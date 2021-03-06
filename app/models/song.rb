class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    genre.name
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    drakes_song = Song.new(name: "Drakes Song")
    drake = Artist.new(name: "Drake")
    drakes_song.artist = drake
  end
end
