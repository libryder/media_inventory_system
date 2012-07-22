class CreateMedia < ActiveRecord::Migration
  def up
    create_table :media do |t|
      t.string :title
      t.string :description
      t.float :value

      t.timestamps
    end
  end

  def down
    drop_table :media
  end
end
