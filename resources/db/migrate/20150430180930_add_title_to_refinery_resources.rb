class AddTitleToRefineryResources < ActiveRecord::Migration
  def change
    change_table :refinery_resources do |t|
      t.string :resource_title
    end
  end
end
