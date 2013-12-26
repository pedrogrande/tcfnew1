class Comment < ActiveRecord::Base
  belongs_to :post
  validates :name, :email, :content, presence: true

  def self.published
  	self.where('publish = ?', true)
  end
end
