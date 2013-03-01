require 'carrierwave/orm/activerecord'

class Photo < ActiveRecord::Base
  attr_accessible :album_id, :title, :avatar

  belongs_to :user
  mount_uploader :avatar, AvatarUploader
end
