class Order < ApplicationRecord
  attr_accessor :order_id
  belongs_to :user
  has_many :line_items, dependent: :destroy

  enum status: {
    pending: 0,
    completed: 1
  }
end
