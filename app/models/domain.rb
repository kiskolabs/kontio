class Domain < ActiveRecord::Base
  has_many :forwardings
  has_many :users
end
