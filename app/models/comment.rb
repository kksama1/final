class Comment < ApplicationRecord
  belongs_to :leaved_user, class_name: 'User'
  belongs_to :belongs_user, class_name: 'User'
end
