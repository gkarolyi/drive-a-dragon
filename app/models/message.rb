class Message < ApplicationRecord
  belongs_to :from, class_name: "User", foreign_key: "from_id", required: true
  belongs_to :to, class_name: "User", foreign_key: "to_id", required: true
  belongs_to :booking, optional: true

  validates :from, presence: true
  validates :to, presence: true
  validates :body, presence: true
end
