class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    genre.name
  end

  def drake_made_this
    (Artist.find_by(name: 'Drake') || Artist.create(name: 'Drake')).songs << self
  end
end