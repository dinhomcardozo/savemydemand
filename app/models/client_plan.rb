class ClientPlan < ApplicationRecord
    validates :description, presence: true
    validates :price, presence: true, numericality: { greater_than: 0 }
    validates :duration_in_months, presence: true, numericality: { only_integer: true, greater_than: 0 }
    validates :payment_date, presence: true
    validates :start_date, presence: true
    validates :end_date, presence: true
    validate :end_date_after_start_date
  
    private
  
    def end_date_after_start_date
      return if end_date.blank? || start_date.blank?
  
      if end_date < start_date
        errors.add(:end_date, "deve ser posterior à data de início")
      end
    end
end