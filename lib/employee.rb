class Employee < ActiveRecord::Base
  belongs_to :stores
  validates :first_name, :last_name, presence: true
  validates :hourly_rate, numericality: { greater_than_or_equal_to: 40, less_than_or_equal_to: 200}
  validates_associated :stores
end
