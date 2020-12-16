class Responsible < ApplicationRecord
  has_many :documents
  has_many :signed_docs, class_name: 'Document'
end
