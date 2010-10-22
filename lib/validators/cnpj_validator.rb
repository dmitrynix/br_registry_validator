class CnpjValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless CNPJ.valid?(value)
      record.errors[attribute] << (options[:message] || "is not an cnpj")
    end
  end
end
