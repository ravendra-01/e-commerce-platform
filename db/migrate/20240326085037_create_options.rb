class CreateOptions < ActiveRecord::Migration[7.0]
  def change
    create_table :options do |t|
      t.string :option_name
      t.references :category

      t.timestamps
    end
  end
end
