#require "association_validator"

class Transaction < ActiveRecord::Base
  belongs_to :account
  belongs_to :category
  validates :account_id, presence: true #, association: true


  validate :xxx

  def xxx
   errors.add(:account_id, "neni tam") unless account_id.nil? or Account.find_by_id(account_id)
  end

end
