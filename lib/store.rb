class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0}
  validate :has_mens_or_womens

  def has_mens_or_womens
    if !mens_apparel.present? && !womens_apparel.present?
      errors.add(:store, "both mens and women's apparel are not true")
    end
  end
end
