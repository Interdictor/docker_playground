require_relative 'acceptance_spec_helper'

RSpec.describe 'Default page' do
  it 'shows a greeting' do
    visit '/'

    result = page.title

    expect(result).to eq('Docker Playground')
  end
end
