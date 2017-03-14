class Recipe < ApplicationRecord
	belongs_to :user
	has_many :comments
  has_attached_file :image
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  acts_as_votable

  scope :gout, 					->{ where.not(tag: "protein")} 
  scope :hypertension, 	->{ where.not(tag: "salt")} 
  scope :diabetes, 			->{ where.not(tag: "sugar")} 
  scope :weight, 					->{ where.not(tag: "fat")} 
end
