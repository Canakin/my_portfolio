class Questionnare < ApplicationRecord
  belongs_to :user
  has_many :question
end
