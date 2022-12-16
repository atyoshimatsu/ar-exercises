class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }, presence: true
  validates :mens_apparel, :womens_apparel, inclusion: { in: [true, false] }
  validate :must_carry_mens_apparel_or_womens_apparel
  def must_carry_mens_apparel_or_womens_apparel
    Store.all.each do |store|
      if !store.mens_apparel && !store.womens_apparel
        errors.add(:mens_apparel, "must carry mens apparel or womens apparel")
        errors.add(:womens_apparel, "must carry mens apparel or womens apparel")
      end
    end
  end
end
