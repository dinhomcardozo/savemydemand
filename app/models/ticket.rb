class Ticket < ApplicationRecord
  belongs_to :client
  belongs_to :provider, optional: true
  has_many :ticket_messages, dependent: :destroy


  enum service_type: [:voiceover, :editing, :recording, :acting]
  enum status: [:open, :in_progress, :resolved, :closed]

#  enum service_type: {
#    voiceover: 'voiceover',
#    editing: 'editing',
#    recording: 'recording',
#    acting: 'acting'
#  }

#  enum status: {
#    open: 'open',
#    in_progress: 'in_progress',
#    resolved: 'resolved',
#    closed: 'closed'
#  }

  validates :title, presence: true, length: { maximum: 100 }
  validates :description, presence: true
  validates :deadline, presence: true
end