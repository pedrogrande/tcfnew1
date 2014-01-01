class Slider < ActiveRecord::Base
	mount_uploader :image, PostImageUploader
end
