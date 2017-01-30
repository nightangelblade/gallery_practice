require_relative 'imageupload'
class Image < ApplicationRecord
	mount_uploader :image, ImageUploader
end
