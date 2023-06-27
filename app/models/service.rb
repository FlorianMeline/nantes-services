class Service < ApplicationRecord
  belongs_to :user
  belongs_to :customer
  belongs_to :prestation
end
