class CreateTransports < ActiveRecord::Migration
  def change
    create_table :transports do |t|
      t.string :domain
      t.string :transport
      t.timestamps
    end
  end
end
