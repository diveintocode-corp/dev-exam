class Property < ApplicationRecord
  has_many :transportations, dependent: :destroy 
  accepts_nested_attributes_for :transportations, allow_destroy: true
end
