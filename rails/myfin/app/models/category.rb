class Category < ActiveRecord::Base
  has_many :transactions
  validates :name, uniqueness: true
  validates :name, presence: true
  validates :name, length: {maximum: 20}
  validates :descr, length: {maximum: 80}
  validates :direction, presence: true, inclusion: [-1,+1]

  before_destroy :check_transactions

  private

  def check_transactions
    if transactions.count > 0
      return false
    end
  end

  public

  # @param [Date] from
  def balance(from, to)
    transactions.sum :amount, conditions: ['realization_date >= ? and realization_date <= ?', from, to]
  end

  # @param [Date] from
  def self.balance(from, to)
    Transaction.sum :amount, conditions: ['realization_date >= ? and realization_date <= ?', from, to]
  end

  def self.balance_without_category(from, to)
    Transaction.sum :amount, conditions: ['realization_date >= ? and realization_date <= ? and category_id is null', from, to]
  end

end
