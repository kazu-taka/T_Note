class Comment < ApplicationRecord
  belongs_to :school
  belongs_to :user
  validates :body,        presence: true
  validates :school_id, presence: true
end
