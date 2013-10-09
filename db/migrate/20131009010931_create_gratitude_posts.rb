class CreateGratitudePosts < ActiveRecord::Migration
  def change
    create_table :gratitude_posts do |t|
      t.text :text
      t.boolean :hide

      t.timestamps
    end
  end
end
