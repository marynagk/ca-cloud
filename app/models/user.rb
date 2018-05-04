class User < ApplicationRecord
  has_many :expertises
  has_many :goals

  attr_accessor :avatar_obj

  after_save :save_avatar

  def save_avatar
    # puts "save_avatar #{avatar_obj} #{avatar_obj.class}"
    if avatar_obj == nil then
      return
    end
    filename = avatar_obj.original_filename
    folder = "public/users/#{id}/avatar"

    # puts "filename #{filename}"

    FileUtils.mkdir_p folder

    f=File.open File.join(folder, filename), "wb"
    f.write avatar_obj.read()
    f.close

    self.avatar_obj = nil
    update avatar: filename
    # puts "exit save_avatar"

  end
end
