class DeviseCreateAdministrators < ActiveRecord::Migration
  def change
    create_table(:administrators) do |t|
      ## Database authenticatable
      t.string :email,              :null => false, :default => ""
      t.string :encrypted_password, :null => false, :default => ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Lockable
      t.integer  :failed_attempts, :default => 0 # Only if lock strategy is :failed_attempts
      t.string   :unlock_token # Only if unlock strategy is :email or :both
      t.datetime :locked_at

      ## Token authenticatable
      t.string :authentication_token

      t.timestamps
    end

    add_index :administrators, :email,                :unique => true
    add_index :administrators, :reset_password_token, :unique => true
    add_index :administrators, :unlock_token,         :unique => true
    add_index :administrators, :authentication_token, :unique => true
  end
end
