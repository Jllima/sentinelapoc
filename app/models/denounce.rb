class Denounce < ApplicationRecord
  has_many :messages
  broadcasts
end
