class User < ActiveRecord::Base
  has_many :sent_posts, class_name: 'Post', foreign_key: :sender_id
  has_many :received_posts, class_name: 'Post', foreign_key: :recipient_id
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def self.all_except(user)
    where.not(id: user)
  end   
end