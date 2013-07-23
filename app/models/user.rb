class User < ActiveRecord::Base
  attr_accessible :emails, :name
  has_many :microposts
end
