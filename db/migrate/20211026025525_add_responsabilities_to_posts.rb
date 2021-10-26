class AddResponsabilitiesToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :responsabilities, :text
  end
end
