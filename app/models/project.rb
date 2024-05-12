# frozen_string_literal: true

class Project < ApplicationRecord
  self.table_name = 'projects'

  belongs_to_active_hash :city, shortcuts: :name
end
