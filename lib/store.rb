class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality:  {only_integer: true, greater_trhan_or_equal_to:0}
  validates :must_carry_apparel
  private
  def must_carry_apparel
    unless mens_apparel || womens_apparel
      errors.add(:base, "Store must carry at least one of the men's or women's apparel")
    end
  end
end
