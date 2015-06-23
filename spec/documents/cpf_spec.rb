require 'spec_helper'

describe CPF do
  it 'should not validate blank values' do
    expect(CPF.new('')).not_to be_valid
  end

  it 'should not validate nil values' do
    expect(CPF.new(nil)).not_to be_valid
  end

  it 'should validate without mask' do
    expect(CPF.new('18349376473')).to be_valid
  end

  it 'should validate with mask' do
    expect(CPF.new('183.493.764-73')).to be_valid
  end

  ['11111', '1234', '280012389'].each do |cpf|
    it "#{cpf} should not be valid" do
      expect(CPF.new(cpf)).not_to be_valid
    end
  end
end
