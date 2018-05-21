class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.string :title
      t.integer :lesson_time

      t.timestamps
    end
  end
end
