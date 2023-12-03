class RenameBooksToBook < ActiveRecord::Migration[7.1]
  def change
    rename_table :books, :book
    add_column :book, :uuid, :string
    add_index :book, :uuid, unique: true
    change_column_null :book, :uuid, false
  end
end
