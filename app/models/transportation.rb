class Transportation < ApplicationRecord
  belongs_to :property, optional: true
end
