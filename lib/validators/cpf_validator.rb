class CpfValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless CPF.valid?(value)
      record.errors[attribute] << (options[:message] || "is not an cpf")
    end
  end
end
