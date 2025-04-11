class Provider < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :tickets, dependent: :nullify
  
  # Relações
  has_and_belongs_to_many :services

  # Campos booleanos para tipos de serviço
  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :cnpj, presence: true, uniqueness: true
  validates :cpf, presence: true, uniqueness: true
  validates :phone, presence: true
end