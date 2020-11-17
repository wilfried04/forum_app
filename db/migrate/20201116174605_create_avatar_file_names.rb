class CreateAvatarFileNames < ActiveRecord::Migration[5.0]
  def change
    create_table :avatar_file_names do |t|

      t.timestamps
    end
  end
end
