class User < ActiveRecord::Base
  attr_accessible :name, :emails, :password, :password_confirmation
	acts_as_authentic
  has_many :microposts
end
