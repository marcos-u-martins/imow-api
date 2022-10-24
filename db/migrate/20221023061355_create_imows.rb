class CreateImows < ActiveRecord::Migration[6.0]
  def change
    create_table :imows do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
