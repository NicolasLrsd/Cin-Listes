class CreateSeries < ActiveRecord::Migration[8.0]
  def change
    create_table :series do |t|
      t.string :title
      t.string :picture
      t.string :description
      t.float :rating
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
