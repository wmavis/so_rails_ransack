class CreateImagecapturings < ActiveRecord::Migration[5.2]
  def change
    create_table :imagecapturings do |t|
      t.string :name
      t.date :finish_date

      t.timestamps
    end
  end
end
