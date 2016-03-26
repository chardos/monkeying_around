class Property < ActiveRecord::Base

  validates :address, :user_id, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 },
                  presence: true
end
