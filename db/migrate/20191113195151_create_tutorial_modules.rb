class CreateTutorialModules < ActiveRecord::Migration[5.2]
  def change
    create_table :tutorial_modules do |t|

      t.timestamps
    end
  end
end
