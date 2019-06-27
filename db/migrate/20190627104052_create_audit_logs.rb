class CreateAuditLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :audit_logs do |t|
      t.integer :product_id
      t.string :action
      t.text :desc
      t.string :created_by

      t.timestamps
    end
  end
end
