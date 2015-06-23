require 'spec_helper'

describe Customer do
  it 'should valid' do
    @customer = Customer.new(:cpf => '18349376473')
    expect(@customer).to be_valid
  end

  it 'should not be valid when cpf is invalid' do
    @customer = Customer.new(:cpf => '123')
    expect(@customer).not_to be_valid
  end

  it 'should not be valid when cpf is nil' do
    @customer = Customer.new(:cpf => nil)
    expect(@customer).not_to be_valid
  end

  it 'should not be valid when cpf is a empty string' do
    @customer = Customer.new(:cpf => '')
    expect(@customer).not_to be_valid
  end
end
