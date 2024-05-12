# frozen_string_literal: true

class TransactionType < ActiveHash::Base
  self.data = [
    { id: 1, name: 'Income' },
    { id: 2, name: 'Outcome' },
  ]
end
