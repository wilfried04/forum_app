class CreateFavorites < ActiveRecord::Migration[5.0]
  def change
    create_table :favorites do |t|
    	t.integer :user_id , :index => true
    	t.integer :topic_id , :index => true
      t.timestamps
    end
  end
end