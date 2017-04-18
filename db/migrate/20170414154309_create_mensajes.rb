class CreateMensajes < ActiveRecord::Migration
  def change
    create_table :mensajes do |t|
      t.string :nombre
      t.string :correo
      t.text :mensaje

      t.timestamps null: false
    end
  end
end
