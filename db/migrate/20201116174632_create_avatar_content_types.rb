class CreateAvatarContentTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :avatar_content_types do |t|

      t.timestamps
    end
  end
end
