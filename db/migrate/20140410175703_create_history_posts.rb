class CreateHistoryPosts < ActiveRecord::Migration
  def change
    create_table :history_posts do |t|
      t.string :title
      t.string :text
      t.references :Post, index: true

      t.timestamps
    end
  end
end
