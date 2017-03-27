class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, presence: true
  belongs_to :sender, class_name: "User"
  belongs_to :recipient, class_name: "User"

  def self.received_posts(user)
    where(recipient_id: user.id)
  end

  def self.sent_posts(user)
    where(sender_id: user.id)
  end
end
