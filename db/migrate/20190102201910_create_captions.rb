class CreateCaptions < ActiveRecord::Migration[5.2]
  def change
    create_table :captions do |t|
      t.integer :caption_order
      t.time :start_time
      t.time :end_time
      t.string :text
      t.integer :subtitle_id
      t.string :file_type
      t.boolean :check

      t.timestamps
    end
  end
end
