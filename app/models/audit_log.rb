class AuditLog < ApplicationRecord
  belongs_to :product

  def self.save_audit_logs(product_id, action, desc, created_by)
  	audit = AuditLog.new
  	audit.product_id = product_id
  	audit.action = action
  	audit.desc = desc
  	audit.created_by = created_by
  	audit.save
  end
end
