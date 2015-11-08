require 'rails_helper'

RSpec.describe "companies/new", type: :view do
  before(:each) do
    assign(:company, Company.new(
      :name => "MyString",
      :manager => "MyString",
      :status => "MyString",
      :terms => 1
    ))
  end

  it "renders new company form" do
    render

    assert_select "form[action=?][method=?]", companies_path, "post" do

      assert_select "input#company_name[name=?]", "company[name]"

      assert_select "input#company_manager[name=?]", "company[manager]"

      assert_select "input#company_status[name=?]", "company[status]"

      assert_select "input#company_terms[name=?]", "company[terms]"
    end
  end
end
