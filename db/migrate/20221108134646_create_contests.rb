class CreateContests < ActiveRecord::Migration[6.1]
  def change
    create_table :contests do |t|
      t.string :contest_name
      t.text :url
      t.text :start_time
      t.text :end_time
      t.integer :duration
      t.string :hosting_website
      t.integer :site_id
      t.timestamps
    end
  end
end