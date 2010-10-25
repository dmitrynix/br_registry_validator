class CpfValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    if value
      record.errors[attribute] << (options[:message] || "is not an cpf") unless CPF.new(value).valid?
    end
  end
end
