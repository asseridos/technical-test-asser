class CreateContents < ActiveRecord::Migration[6.1]
  def change
    create_table :contents do |t|
      t.string :type
      t.text :description
      t.string :url
      t.references :member, null: false, foreign_key: true

      t.timestamps
    end
  end
end
