class User < ActiveRecord::Base
  attr_accessible :name, :emails, :password, :password_confirmation
	acts_as_authentic do |c|
    c.login_field = 'emails'
  end
  has_many :microposts
end
