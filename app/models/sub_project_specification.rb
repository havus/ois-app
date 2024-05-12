# frozen_string_literal: true

class SubProjectSpecification < ApplicationRecord
  self.table_name = 'sub_project_specifications'

  belongs_to :sub_project, class_name: 'SubProject', foreign_key: :sub_project_id
  belongs_to :unit, class_name: 'Unit', foreign_key: :unit_id
end
