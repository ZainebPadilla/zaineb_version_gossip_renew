class User < ApplicationRecord
    belongs_to :city
    has_many :gossips
    has_many :comments
    has_many :private_message_sent, class_name: 'PrivateMessage', foreign_key: :sender_id
    has_many :private_message_recieved, class_name: 'PrivateMessage', foreign_key: :recieved_id
    
end



