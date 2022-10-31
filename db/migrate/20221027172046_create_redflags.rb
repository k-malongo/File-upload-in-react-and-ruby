class CreateRedflags < ActiveRecord::Migration[7.0]
  def change
    create_table :redflags do |t|
      t.string :description
      t.string :location
      t.string :status
      t.string :video
      t.integer :user_id

      t.timestamps
    end
  end
end
