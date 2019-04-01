class CreateMelodies < ActiveRecord::Migration[5.2]
  def change
    create_table :melodies do |t|
      t.string :title
      t.string :content
      t.string :checked

      t.timestamps
    end
  end
end
