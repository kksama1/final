class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: { customer: 0, master: 1 }
  has_one_attached :avatar

  after_commit :add_default_avatar, on: %i[create]

  def avatar_thumbnail
    avatar.variant(resize: '200x200!').processed
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
