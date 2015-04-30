class TranslateRefineryResources < ActiveRecord::Migration
  def self.up
    Refinery::Resource.create_translation_table!({
      resource_title: :string
    }, {
      :migrate_data => true
    })
  end

  def self.down
    Refinery::Resource.drop_translation_table! migrate_data: true
  end
end