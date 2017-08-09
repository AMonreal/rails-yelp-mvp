class Restaurant < ApplicationRecord
  @allowed = ["chinese", "italian", "japanese", "french", "belgian"]
  has_many :reviews, dependent: :destroy
  validates :category, :inclusion => { :in => @allowed}
  validates :name, presence: true
  validates :address, presence: true
end


