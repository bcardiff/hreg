class CreateAnemia < ActiveRecord::Migration
  def change
    create_table :anemia do |t|

      t.timestamps
    end
  end
end
