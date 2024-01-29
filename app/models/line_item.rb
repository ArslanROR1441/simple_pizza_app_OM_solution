class LineItem < ApplicationRecord
  belongs_to :pizza
  belongs_to :cart
  belongs_to :order, optional: true
end
