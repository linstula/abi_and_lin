class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.integer :group_id, null: false
      t.string :name, null: false
      t.string :rsvp_status
      t.string :visit_duration
    end
  end
end
