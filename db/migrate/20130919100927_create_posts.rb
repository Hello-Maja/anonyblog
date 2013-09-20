class CreatePosts < ActiveRecord::Migration
  def change
  	create_table :posts do |t|
  		t.text   :body, :null => false
  		t.text   :title, :null => false
  		t.string :author, :default => 'Anonymous'
  		t.timestamps
    end
  end
end
