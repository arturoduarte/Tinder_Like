class User < ApplicationRecord
	mount_uploader :picture, ImageUploader
	has_many :histories
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
	:recoverable, :rememberable, :trackable, :validatable
	
	# validates :name, presence: true		 
	# validates :username, presence: true, uniqueness: true

end
