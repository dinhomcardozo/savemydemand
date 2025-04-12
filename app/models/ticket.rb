class Ticket < ApplicationRecord
  belongs_to :client
  belongs_to :provider, optional: true
  belongs_to :service 
  has_many :ticket_messages, dependent: :destroy

  enum status: {
    open: 0,
    in_progress: 1,
    resolved: 2,
    closed: 3
  }

  validates :title, presence: true, length: { maximum: 100 }
  validates :description, presence: true
  validates :deadline, presence: true
  validates :service_id, presence: true
end