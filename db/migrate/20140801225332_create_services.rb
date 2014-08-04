class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :icon
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
