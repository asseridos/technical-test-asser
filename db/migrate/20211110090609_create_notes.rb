class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.references :member, null: false, foreign_key: true
      t.text :body

      t.timestamps
    end
  end
end
