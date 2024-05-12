# frozen_string_literal: true

class Unit < ApplicationRecord
  self.table_name = 'units'

  validates_presence_of :name
end
