class CreatePlantacions < ActiveRecord::Migration[6.0]
  def change
    create_table :plantacions do |t|
      t.belongs_to :parcela, null: false, foreign_key: true
      t.string :cultivo, null: false
      t.string :variedad, null: false
      t.float :numplantas, null: false
      t.string :observaciones

      t.timestamps
    end
  end
end
