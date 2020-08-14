class AddMemberRefToPosts < ActiveRecord::Migration[6.0]
  def change
    add_reference :posts, :member, null: false, foreign_key: true
  end
end
