# frozen_string_literal: true

class AddColumnsToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :title, :string
    add_column :posts, :body, :text
  end
end
