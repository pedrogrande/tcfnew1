class Post < ActiveRecord::Base
	belongs_to :user
	has_many :post_categories
	has_many :categories, through: :post_categories
	has_many :comments
	extend FriendlyId
	friendly_id :title, use: :slugged
	mount_uploader :image, PostImageUploader
	acts_as_taggable

	accepts_nested_attributes_for :categories
	validates :title, :lead, :content, presence: true
	default_scope order: 'posts.created_at DESC'

	def self.published
		self.where('publish = ?', true)
	end
end
