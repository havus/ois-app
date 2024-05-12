# frozen_string_literal: true

class Transaction < ApplicationRecord
  self.table_name = 'transactions'

  belongs_to :material, class_name: 'Material', foreign_key: :material_id, optional: true
  belongs_to :unit, class_name: 'Unit', foreign_key: :unit_id

  belongs_to_active_hash :transaction_type, shortcuts: :name

  delegate :name, to: :material, prefix: true, allow_nil: true
  delegate :name, to: :unit, prefix: true, allow_nil: true
  delegate :name, to: :transaction_type, prefix: true, allow_nil: true

  def total
    quantity * price
  end
end
