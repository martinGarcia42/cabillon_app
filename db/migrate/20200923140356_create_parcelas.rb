class CreateParcelas < ActiveRecord::Migration[6.0]
  def change
    create_table :parcelas do |t|
      t.string :nombre
      t.string :tipo

      t.timestamps
    end
  end
end
