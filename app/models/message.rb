class Message < ApplicationRecord
  belongs_to :denounce
  broadcasts_to :denounce
end
