require 'spec_helper'

describe CPF do
  it 'should not validate blank values' do
    CPF.new('').should_not be_valid
  end

  it 'should not validate nil values' do
    CPF.new(nil).should_not be_valid
  end

  it 'should validate without mask' do
    CPF.new('18349376473').should be_valid
  end

  it 'should validate with mask' do
    CPF.new('183.493.764-73').should be_valid
  end

  ['11111', '1234', '280012389'].each do |cpf|
    it "#{cpf} should not be valid" do
      CPF.new(cpf).should_not be_valid
    end
  end
end
