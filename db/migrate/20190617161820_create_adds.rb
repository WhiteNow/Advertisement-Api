class CreateAdds < ActiveRecord::Migration[5.2]
  def change
    create_table :adds do |t|
      t.references :company, foreign_key: true
      t.string :title
      t.string :description
      t.string :photo_url
      t.integer :max
      t.boolean :unlimited
      t.integer :used
      t.string :category
      t.datetime :exp_date


      t.timestamps
    end
  end
end
