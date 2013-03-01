class AvatarUploader < CarrierWave::Uploader::Base
  storage :file

  def store_dir
    nil
  end

end


