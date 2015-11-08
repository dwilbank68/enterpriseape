require 'rails_helper'

RSpec.describe "companies/edit", type: :view do
  before(:each) do
    @company = assign(:company, Company.create!(
      :name => "MyString",
      :manager => "MyString",
      :status => "MyString",
      :terms => 1
    ))
  end

  it "renders the edit company form" do
    render

    assert_select "form[action=?][method=?]", company_path(@company), "post" do

      assert_select "input#company_name[name=?]", "company[name]"

      assert_select "input#company_manager[name=?]", "company[manager]"

      assert_select "input#company_status[name=?]", "company[status]"

      assert_select "input#company_terms[name=?]", "company[terms]"
    end
  end
end
