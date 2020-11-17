class CreateAvatarUpdatedAts < ActiveRecord::Migration[5.0]
  def change
    create_table :avatar_updated_ats do |t|

      t.timestamps
    end
  end
end
