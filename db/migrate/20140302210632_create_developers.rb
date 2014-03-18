class CreateDevelopers < ActiveRecord::Migration
  def change
    create_table :developers do |t|
      t.string :name
      t.text :description
      t.string :specialties

      t.timestamps
    end
  end
end
