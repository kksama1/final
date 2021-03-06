class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: { customer: 0, master: 1 }
  has_one_attached :avatar

  has_many :comments, dependent: :destroy
  # has_many :leaved_user_comments, class_name: 'Comment', foreign_key: 'leaved_user_id'
  # has_many :belongs_user_comments, class_name: 'Comment', foreign_key: 'belongs_user_id'

  after_commit :add_default_avatar, on: %i[create]

  def avatar_thumbnail
    avatar.variant(resize: '300x300!').processed
  end

  private

  def add_default_avatar
    avatar.attach(
      io: File.open(
        Rails.root.join(
          'app', 'assets', 'images', 'default_avatar.jpg'
        )
      ), filename: 'default_avatar.jpg',
      content_type: 'image/jpg'
    )
  end
end
