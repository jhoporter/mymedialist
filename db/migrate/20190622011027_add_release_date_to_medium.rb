class AddReleaseDateToMedium < ActiveRecord::Migration[5.2]
  def change
    add_column :media, :release_date, :date
    remove_column :media, :release_year
  end
end
