class Order < ApplicationRecord
  scope :ordered_today, -> { where(created_at: Constants::BEGINNING_OF_TODAY...Constants::BEGINNING_OF_TOMORROW) }
end
