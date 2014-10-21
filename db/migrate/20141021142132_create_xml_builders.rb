class CreateXmlBuilders < ActiveRecord::Migration
  def change
    create_table :xml_builders do |t|

      t.timestamps
    end
  end
end
