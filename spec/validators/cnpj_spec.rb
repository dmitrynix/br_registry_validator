require 'spec_helper'

describe Supplier do
  it 'should valid' do
    @supplier = Supplier.new(:cnpj => '41821571000174')
    @supplier.should be_valid
  end

  it 'should not be valid when cnpj is invalid' do
    @supplier = Supplier.new(:cnpj => '123')
    @supplier.should_not be_valid
  end

  it 'should not be valid when cnpj is nil' do
    @supplier = Supplier.new(:cnpj => nil)
    @supplier.should_not be_valid
  end

  it 'should not be valid when cnpj is a empty string' do
    @supplier = Supplier.new(:cnpj => '')
    @supplier.should_not be_valid
  end
end
