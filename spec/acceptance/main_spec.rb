require_relative 'acceptance_spec_helper'

RSpec.describe 'Default page' do
  it 'shows a greeting' do
    visit '/'

    result = page.has_content?('Holita mundo.')

    expect(result).to be(true)
  end
end
