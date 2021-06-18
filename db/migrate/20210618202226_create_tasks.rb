class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :detail
      t.boolean :completed, :default => false
      #Ex:- :default =>''

      t.timestamps
    end
  end
end
