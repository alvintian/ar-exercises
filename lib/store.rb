class Store < ActiveRecord::Base
has_many :employees

  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :least_one_validator

 def least_one_validator
    if womens_apparel== nil && mens_apparel== nil
      errors.add(:base,'at least one of the men\'s or women\'s apparel')
    end
  end
end
