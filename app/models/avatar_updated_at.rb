class AvatarUpdatedAt < ApplicationRecord
    def avatar_updated_at
        if avatar_updated_at.present?
          avatar_updated_at.url
        else
          '/default-avatar.png'
        end
    end
end
