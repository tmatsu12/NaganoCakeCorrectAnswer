class Item < ApplicationRecord
  belongs_to :genre
  
  validates :name, presence: true
  validates :introduction, presence: true
  validates :price, presence: true, :numericality => { :greater_than_or_equal_to => 0 }
  attachment :image

  scope :where_genre_active, -> { joins(:genre).where(genres: { is_active: true }) }
end
