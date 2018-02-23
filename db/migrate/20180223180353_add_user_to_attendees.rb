class AddUserToAttendees < ActiveRecord::Migration[5.1]
  def change
    add_reference :attendees, :user, foreign_key: true
  end
end
