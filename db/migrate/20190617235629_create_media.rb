class CreateMedia < ActiveRecord::Migration[5.2]
  def change
    create_table :media do |t|

      t.timestamps
      t.string :title
      t.string :release_year
      t.string :image
    end
  end
end
