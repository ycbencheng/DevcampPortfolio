class AddBadgeToSkills < ActiveRecord::Migration[5.0]
  def change
    add_column :skills, :bagde, :text
  end
end
