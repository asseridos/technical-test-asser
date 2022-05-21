class CreateTags < ActiveRecord::Migration[6.1]
  def change
    create_table :tags do |t|
      t.string :name

      t.timestamps
    end

    create_table :members_tags do |t|
      t.references :member, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true
    end
  end
end
