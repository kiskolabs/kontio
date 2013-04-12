class Domain < ActiveRecord::Base
  has_many :forwardings
  has_many :users

  def name
    domain
  end
end
