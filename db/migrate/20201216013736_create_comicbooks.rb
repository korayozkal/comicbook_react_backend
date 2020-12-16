class CreateComicbooks < ActiveRecord::Migration[6.0]
  def change
    create_table :comicbooks do |t|
      t.string :title
      t.string :image_url
      t.string :publisher
      t.string :artist
      t.string :writer

      t.timestamps
    end
  end
end
