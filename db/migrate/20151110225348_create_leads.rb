class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string :email, null: false
      t.string :name, null: false
      t.text :notes

      t.timestamps null: false
    end
  end
end
