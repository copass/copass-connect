class CreateCoworkers < ActiveRecord::Migration
  def change
    create_table :coworkers do |t|

      t.timestamps
    end
  end
end
