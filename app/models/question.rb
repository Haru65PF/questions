class Question < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre


  belongs_to :user
  has_many :comments

  with_options presence: true do
    validates :question
    validates :genre_id,   numericality: { other_than: 1 }
    validates :user
  end
end
