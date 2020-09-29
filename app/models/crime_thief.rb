class CrimeThief < ApplicationRecord
  belongs_to :crime
  belongs_to :thief
end
