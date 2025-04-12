class Provider < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Relações
  has_many :tickets, dependent: :nullify
  has_and_belongs_to_many :services

  # Validações
  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :cnpj, presence: true, uniqueness: true
  validates :cpf, presence: true, uniqueness: true
  validates :phone, presence: true
end