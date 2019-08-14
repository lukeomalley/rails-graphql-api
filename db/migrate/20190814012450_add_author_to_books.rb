class AddAuthorToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :author, :string
    add_column :books, :rating, :integer
    add_column :books, :cover_img_url, :string
  end
end
