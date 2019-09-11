require_relative '../helpers/validate'
include Validate

describe 'Helper_test' do
  it 'valid_field_size' do
    expect(valid_field_size(1)).to eql(3)
    expect(valid_field_size(-3)).to eql(3)
    expect(valid_field_size(5)).to eql(5)
  end
end
