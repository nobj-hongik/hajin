class Secondpost < ActiveRecord::Base
    mount_uploader :image, SecondImageUploaderUploader
end
