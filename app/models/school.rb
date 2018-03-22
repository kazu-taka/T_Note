class School < ApplicationRecord
  validates :title, presence: true
  validates :name, presence: true
  validates :career, presence: true
  validates :gakko, presence: true
  validates :content, presence: true
  belongs_to :post
end
#belongs_to :company
  #belongs_to :post
# 下記の1行を追加
  #has_many :comments
