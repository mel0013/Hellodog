class Chatroom < ApplicationRecord
  has_many :messages
  belongs_to :user1, class_name: "User", foreign_key: :user1_id
  belongs_to :user2, class_name: "User", foreign_key: :user2_id

  def self.existing_chatroom_for(user1, user2)
    Chatroom.where(user1: user1, user2: user2).or(Chatroom.where(user1: user2, user2: user1)).first
  end
end
