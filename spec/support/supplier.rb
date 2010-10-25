class Supplier < ActiveRecord::Base
  validates :cnpj, :cnpj => true, :presence => true
end
