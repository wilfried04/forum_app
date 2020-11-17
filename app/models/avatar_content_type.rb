class AvatarContentType < ApplicationRecord
    def avatar_content_type
        if avatar_content_type.present?
          avatar_content_type.url
        else
          '/default-avatar.png'
        end
      end
end
