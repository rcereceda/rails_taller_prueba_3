class Report < ActiveRecord::Base
  belongs_to :user
  belongs_to :catalog

  mount_uploader :picture, PhotoUploader
end
