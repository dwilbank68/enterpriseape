require 'rails_helper'

RSpec.describe "companies/show", type: :view do
  before(:each) do
    @company = assign(:company, Company.create!(
      :name => "Name",
      :manager => "Manager",
      :status => "Status",
      :terms => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Manager/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/1/)
  end
end
