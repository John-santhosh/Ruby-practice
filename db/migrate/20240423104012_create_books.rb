class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :name
      t.string :genres
      t.string :pages

      t.belongs_to :author, foreign_key: true
      t.timestamps
    end
  end
end
