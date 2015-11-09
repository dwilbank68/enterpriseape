require 'rails_helper'

RSpec.describe "employees/new", type: :view do
  before(:each) do
    assign(:employee, Employee.new(
      :name => "MyString",
      :phone => "MyString",
      :job_type => "MyString"
    ))
  end

  it "renders new employee form" do
    render

    assert_select "form[action=?][method=?]", employees_path, "post" do

      assert_select "input#employee_name[name=?]", "employee[name]"

      assert_select "input#employee_phone[name=?]", "employee[phone]"

      assert_select "input#employee_job_type[name=?]", "employee[job_type]"
    end
  end
end
