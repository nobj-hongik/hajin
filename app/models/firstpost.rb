class Firstpost < ActiveRecord::Base
    mount_uploader :image, FirstImageUploaderUploader
end
