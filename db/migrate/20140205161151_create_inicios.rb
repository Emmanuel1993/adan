class CreateInicios < ActiveRecord::Migration
  def change
    create_table :inicios do |t|

      t.timestamps
    end
  end
end
