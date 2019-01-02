class CreateSubtitles < ActiveRecord::Migration[5.2]
  def change
    create_table :subtitles do |t|
      t.integer :user_id
      t.text :complete_text

      t.timestamps
    end
  end
end
