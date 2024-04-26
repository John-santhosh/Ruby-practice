class CreateArticles < ActiveRecord::Migration[7.1]
  def change
    create_table :articles do |t|
      t.string :title

      # t.references :book, foreign_key: true
      t.belongs_to :book, foreign_key: true
      t.timestamps
    end
  end
end
