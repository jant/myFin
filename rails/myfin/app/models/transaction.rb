class Transaction < ActiveRecord::Base
  belongs_to :account
  belongs_to :category

  validates :account_id, presence: true, existence: {both: false}
  validates :category_id, existence: {allow_nil: true, both: false}
  validates :realization_date, presence: true
  validates :amount, presence: true, numericality: true, exclusion: {in: [0], message: 'Castka nesmi byt 0'}
  validates :description, uniqueness: {scope: [:realization_date, :amount, :account_id], message: "Musi byt splnena jednoznacnost ucet,datum,castka,popis"}


end
