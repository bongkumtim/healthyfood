class Recipe < ApplicationRecord
	belongs_to :user
	has_many :comments
  has_attached_file :image, styles: { medium: "500x500>", thumb: "200x200>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  acts_as_votable

  scope :gout, 					->{ where.not(tag: "protien")} 
  scope :hypertension, 	->{ where.not(tag: "salt")} 
  scope :diabetes, 			->{ where.not(tag: "sugar")} 
  scope :weight, 					->{ where.not(tag: "fat")} 
end
