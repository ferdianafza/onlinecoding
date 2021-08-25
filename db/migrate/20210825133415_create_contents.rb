class CreateContents < ActiveRecord::Migration[6.0]
  def change
    create_table :contents do |t|
      t.string :judul
      t.string :isi

      t.timestamps
    end
  end
end
