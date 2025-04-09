class CreateProviders < ActiveRecord::Migration[8.0]
  def change
    create_table :providers do |t|
      t.string :first_name
      t.string :last_name
      t.string :cnpj
      t.string :cpf
      t.string :email
      t.string :phone
      t.boolean :voiceover
      t.boolean :acting
      t.boolean :editing
      t.boolean :recording

      t.timestamps
    end
  end
end
