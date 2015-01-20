class AddAttachmentPreviewToRecipes < ActiveRecord::Migration
  def self.up
    change_table :recipes do |t|
      t.attachment :preview
    end
  end

  def self.down
    remove_attachment :recipes, :preview
  end
end
