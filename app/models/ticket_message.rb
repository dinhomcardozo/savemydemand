class TicketMessage < ApplicationRecord
  belongs_to :ticket
  belongs_to :sender, polymorphic: true

  has_one_attached :attachment
end
