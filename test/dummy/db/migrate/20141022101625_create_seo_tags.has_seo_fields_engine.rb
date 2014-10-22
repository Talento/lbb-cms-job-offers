# This migration comes from has_seo_fields_engine (originally 20141020102929)
class CreateSeoTags < ActiveRecord::Migration
  def up
    create_table :seo_tags do |t|
      t.references :seo_taggable, :polymorphic => true, :null => false
      if !defined? Globalize
        t.string :seo_title
        t.string :seo_meta_keywords
        t.string :seo_robot
        t.string :seo_canonical
        t.string :og_image
      end
      t.timestamps
    end
    add_index "seo_tags", ["seo_taggable_type", "seo_taggable_id"], :name => "seo_tags_taggable"
    if defined? Globalize
      SeoTag.create_translation_table! seo_meta_description: :string, seo_title: :string, seo_meta_keywords: :string, seo_robot: :string, seo_canonical: :string, og_image: :string
    end
  end

  def down
    drop_table :seo_tags
    if defined? Globalize
      SeoTag.drop_translation_table!
    end
  end
end
