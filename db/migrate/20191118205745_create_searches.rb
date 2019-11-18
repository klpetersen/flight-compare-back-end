class CreateSearches < ActiveRecord::Migration[6.0]
  def change
    create_table :searches do |t|
      t.integer :user_id
      t.integer :baggage_fee

      t.timestamps
    end
  end
end
