class CreateBeers < ActiveRecord::Migration[6.0]
  def change
    create_table :beers do |t|
      t.string :style
      t.numeric :min_temp
      t.numeric :max_temp

      t.timestamps
    end
  end
end
