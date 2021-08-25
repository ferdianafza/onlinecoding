class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :foto
      t.string :judul
      t.string :konten

      t.timestamps
    end
  end
end
