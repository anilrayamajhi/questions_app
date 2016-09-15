class Question < ActiveRecord::Base
  has_many :answers  #declares relation with answer model question to answer, as one to many
  # dependent: :destroy  #it delete question, it will delete answers
  belongs_to :user
end
