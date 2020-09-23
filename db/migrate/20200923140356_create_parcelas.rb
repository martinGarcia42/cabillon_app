class CreateParcelas < ActiveRecord::Migration[6.0]
  def change
    create_table :parcelas do |t|
      t.string :nombre, null: false
      t.string :tipo, null: false

      t.timestamps
    end
  end
end
