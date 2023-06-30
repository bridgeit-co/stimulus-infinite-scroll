class CreateLines < ActiveRecord::Migration[7.0]
  def change
    create_table :lines do |t|
      t.text :content

      t.timestamps
    end
  end
end
