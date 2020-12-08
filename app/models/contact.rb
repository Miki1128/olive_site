class Contact < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :country

end
