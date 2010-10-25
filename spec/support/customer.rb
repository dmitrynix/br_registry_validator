class Customer < ActiveRecord::Base
  validates :cpf, :cpf => true, :presence => true
end
