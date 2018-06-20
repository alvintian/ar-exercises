class Employee < ActiveRecord::Base
belongs_to :store

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates_inclusion_of :hourly_rate, in: 40..200,numericality: { only_integer: true }
#   validates_inclusion_of :store_id, in: ->(employee) { Store[employee.store_id] }
validates :store, presence: true
end
 # validates :email, format: { with: /\A[a-z\.\+_]+@\w+\.\w+\z/i },
 #            uniqueness: true
 #  validate :old_enough_validator