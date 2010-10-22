require 'spec_helper'

describe CNPJ do
  it 'should validate without mask' do
    CNPJ.valid?('41821571000174').should be_true
  end

  it 'should validate with mask' do
    CNPJ.valid?('41.821.571/0001-74').should be_true
  end
end
