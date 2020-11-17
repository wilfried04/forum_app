class AvatarFileSize < ApplicationRecord
    def avatar_file_size
        if avatar_file_size.present?
          avatar_file_size.url
        else
          '/default-avatar.png'
        end
      end
end
