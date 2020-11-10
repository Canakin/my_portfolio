class Question < ApplicationRecord
  belongs_to :questionnare
  has_many :answer
end
