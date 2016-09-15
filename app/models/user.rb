class User < ActiveRecord::Base
  has_many :questions
  validates :username, presence: true
end
