class CreateTicketMessages < ActiveRecord::Migration[8.0]
  def change
    create_table :ticket_messages do |t|
      t.references :ticket, null: false, foreign_key: true
      t.string :sender_type # Tipo do remetente (ex.: "Client" ou "Provider")
      t.integer :sender_id  # ID do remetente

      t.text :content       # Conteúdo da mensagem
      t.string :attachment  # Anexo (opcional)

      t.timestamps
    end
  end
end
