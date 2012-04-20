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



end
