class AvatarFileName < ApplicationRecord
    def avatar_file_name
        if avatar_file_name.present?
          avatar_file_name.url
        else
          '/default-avatar.png'
        end
      end
end
