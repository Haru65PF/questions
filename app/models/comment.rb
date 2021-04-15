class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :question

  with_options presence: true do
    validates :text
    validates :user
    validates :question
  end
end
