class CreateIntervencions < ActiveRecord::Migration[6.0]
  def change
    create_table :intervencions do |t|
      t.belongs_to :plantacion, null: false, foreign_key: true
      t.string :accion, null: false
      

      t.timestamps
    end
  end
end
