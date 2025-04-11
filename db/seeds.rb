# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Cria alguns tickets
Ticket.create!(
  title: 'Ticket de Voz',
  description: 'Este é um ticket de voz.',
  service_type: :voiceover,
  status: :open,
  deadline: Date.today + 7.days,
  client: client
)

Ticket.create!(
  title: 'Ticket de Edição',
  description: 'Este é um ticket de edição.',
  service_type: :editing,
  status: :in_progress,
  deadline: Date.today + 14.days,
  client: client
)

Ticket.create!(
  title: 'Ticket de Gravação',
  description: 'Este é um ticket de gravação.',
  service_type: :recording,
  status: :resolved,
  deadline: Date.today + 3.days,
  client: client
)