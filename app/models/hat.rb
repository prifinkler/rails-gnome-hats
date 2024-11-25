class Hat < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews
  has_one_attached :photo

  validates :color, :style, :description, presence: true
  validates :price, presence: true, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }, numericality: { greater_than_or_equal_to: 1 }

  before_destroy :destroy_related_bookings

  def self.random_card_class
    (([''] * 3) + ['wide', 'tall', 'big']).sample # this ensures the normal class '' appears n times more frequently than the other sizes
  end

  private

  def destroy_related_bookings
    user.bookings.where(hat_id: id).destroy_all
  end
end
