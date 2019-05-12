class Thirdpost < ActiveRecord::Base
    mount_uploader :image, ThirdImageUploaderUploader
end
