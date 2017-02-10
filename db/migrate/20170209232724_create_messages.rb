class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
           t.text :user_message

           t.timestamps null: false


    end
  end
end
