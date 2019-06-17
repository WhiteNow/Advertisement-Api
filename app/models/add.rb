class Add < ApplicationRecord
  belongs_to :company

  validates_presence_of :title, :description, :exp_date
end
