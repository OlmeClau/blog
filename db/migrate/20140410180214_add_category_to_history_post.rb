class AddCategoryToHistoryPost < ActiveRecord::Migration
  def change
    add_column :history_posts, :category, :string
  end
end
