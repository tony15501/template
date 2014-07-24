class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :logo
      t.string :slider
      t.string :about
      t.integer :telefono
      t.integer :fax
      t.string :email
      t.string :direccion

      t.timestamps
    end
  end
end
