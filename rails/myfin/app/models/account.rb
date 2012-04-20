class Account < ActiveRecord::Base
  has_many :transactions
  validates :name, uniqueness: true
  validates :name, presence: true
  validates :name, length: {maximum: 20}
  validates :descr, length: {maximum: 80}

  before_destroy :check_transactions

  private

  def check_transactions
    not transactions.count > 0
  end

  public

  # @param [Date] date
  def balance(date)
    transactions.sum :amount, conditions: ['realization_date <= ?', date]
  end


end
