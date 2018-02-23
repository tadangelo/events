class CreateAtendees < ActiveRecord::Migration[5.1]
  def change
    create_table :atendees do |t|

      t.timestamps
    end
  end
end





