class Document < ApplicationRecord
  belongs_to :responsible
  belongs_to :signatory, class_name: 'Responsible'
  has_many :events, dependent: :destroy
end
