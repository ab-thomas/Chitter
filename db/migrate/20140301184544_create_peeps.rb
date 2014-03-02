class CreatePeeps < ActiveRecord::Migration
  def change
    create_table :peeps do |t|
      # in the table there's a column called body which is text
      t.text :body

      t.timestamps
    end
  end
end
