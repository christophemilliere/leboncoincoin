class Annonce < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :city, presence: true
  validates :zip_code, presence: true
  validates :category, presence: true


  belongs_to :category
  belongs_to :user
  mount_uploader :photo, PhotoUploader
  scope :get_particular, -> { where(represent: represents[:particular])}
  scope :get_professionals, -> { where(represent: represents[:professionals])}

  enum  represent: [:particular, :professionals]
end
