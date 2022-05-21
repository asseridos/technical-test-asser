class RenameTypeToTypeOfContent < ActiveRecord::Migration[6.1]
  def change
    rename_column :contents, :type, :type_of_content
  end
end
