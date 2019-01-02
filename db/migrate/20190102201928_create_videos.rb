class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.string :source
      t.integer :subtitle_id
      t.integer :user_id

      t.timestamps
    end
  end
end
