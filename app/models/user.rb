class User < ApplicationRecord

  include Clearance::User
  has_many :recipes
  has_many :comments


end
