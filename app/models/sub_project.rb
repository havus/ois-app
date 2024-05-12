# frozen_string_literal: true

class SubProject < ApplicationRecord
  self.table_name = 'sub_projects'

  belongs_to :project, class_name: 'Project', foreign_key: :project_id
  has_many :specifications, class_name: 'SubProjectSpecification', foreign_key: :sub_project_id

  delegate :name, to: :project, prefix: true
end
