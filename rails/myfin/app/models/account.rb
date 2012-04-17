class Account < ActiveRecord::Base
  has_many :transactions
  validates :name, uniqueness: true
  validates :name, presence: true
  validates :name, length: {maximum: 20}
  validates :descr, length: {maximum: 80}
end
