require 'spec_helper'

describe CNPJ do
  it 'should validate without mask' do
    expect(CNPJ.valid?('41821571000174')).to be_truthy
  end

  it 'should validate with mask' do
    expect(CNPJ.valid?('41.821.571/0001-74')).to be_truthy
  end
end
