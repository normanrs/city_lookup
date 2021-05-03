# frozen_string_literal: true

class Zipcode < ApplicationRecord
  validates :zipcode, presence: true, uniqueness: true
  self.primary_key = 'zipcode'
end
