class User < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :age

   devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :questions
  has_many :comments

  with_options presence: true do
    validates :nickname
    validates :email
    validates :password
    validates :age_id, numericality: { other_than: 1 }
  end

  
end
