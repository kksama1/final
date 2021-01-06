class Comment < ApplicationRecord
  belongs_to :leaved_user, class_name: 'User'
  belongs_to :belongs_user, class_name: 'User'

  belongs_to :user

  validates :body, presence: true, allow_blank: false
end
