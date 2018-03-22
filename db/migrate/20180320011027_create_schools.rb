class CreateSchools < ActiveRecord::Migration[5.1]
  def change
    create_table :schools do |t|
      t.string :title
      t.string :name
      t.integer :career
      t.string :gakko
      t.text :content

      t.timestamps
    end
  end
end
