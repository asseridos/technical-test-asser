class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.references :member, null: false, foreign_key: true
      t.string :action
      t.text :description
      t.string :url

      t.timestamps
    end
  end
end
