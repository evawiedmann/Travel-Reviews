class AddDestinationsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :destinations do |t|
      t.string :city
      t.string :country
      t.integer :review_id
    end
  end
end
