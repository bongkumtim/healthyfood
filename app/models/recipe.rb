class Recipe < ApplicationRecord
	belongs_to :user
	has_many :comments
	mount_uploader :image, ImageUploader
	serialize :image
  acts_as_votable

  scope :gout, 					->{ where.not(tag: "protein")} 
  scope :hypertension, 	->{ where.not(tag: "salt")} 
  scope :diabetes, 			->{ where.not(tag: "sugar")} 
  scope :weight, 					->{ where.not(tag: "fat")} 
end
