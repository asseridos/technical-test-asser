class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.string :name
      t.string :email
      t.string :github
      t.string :twitter
      t.text :location

      t.timestamps
    end
  end
end
