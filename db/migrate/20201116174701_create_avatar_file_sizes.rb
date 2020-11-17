class CreateAvatarFileSizes < ActiveRecord::Migration[5.0]
  def change
    create_table :avatar_file_sizes do |t|

      t.timestamps
    end
  end
end
