class TranslateRefineryImages < ActiveRecord::Migration
  def self.up
    Refinery::Image.create_translation_table!({
      image_alt: :string,
      image_title: :string
    }, {
      :migrate_data => true
    })
  end

  def self.down
    Refinery::Image.drop_translation_table! migrate_data: true
  end
end
