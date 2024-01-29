class Pizza < ApplicationRecord
    has_one :line_item

    before_save :set_displayed_price

    def set_displayed_price
        self.displayed_price = self.base_price * self.inches.to_f
    end
end
