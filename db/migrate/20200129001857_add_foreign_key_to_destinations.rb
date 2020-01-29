class AddForeignKeyToDestinations < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :destinations, :reviews
  end
end
