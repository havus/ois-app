# frozen_string_literal: true

class City < ActiveHash::Base
  self.data = [
    { id: 1, name: 'Probolinggo' },
    { id: 2, name: 'Banyuwangi' },
  ]
end
