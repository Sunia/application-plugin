# This migration comes from blorgh (originally 20150326073351)
class CreateBlorghPosts < ActiveRecord::Migration
  def change
    create_table :blorgh_posts do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
