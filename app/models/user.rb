class User < ActiveRecord::Base
  rolify
	has_many :posts
	has_one :user_profile
	extend FriendlyId
  	friendly_id :name, use: :slugged
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
end
