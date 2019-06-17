class Company < ApplicationRecord
    has_many :adds, dependent: :destroy

    validates_presence_of :name, :ruc
end
