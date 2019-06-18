class CreateViews < ActiveRecord::Migration[5.2]
  def change
    create_table :views do |t|

      t.timestamps
      t.belongs_to :user, index: true
      t.belongs_to :medium, index: true
  
    end
  end
end
