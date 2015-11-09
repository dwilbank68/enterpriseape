require 'rails_helper'

RSpec.describe "employees/edit", type: :view do
  before(:each) do
    @employee = assign(:employee, Employee.create!(
      :name => "MyString",
      :phone => "MyString",
      :job_type => "MyString"
    ))
  end

  it "renders the edit employee form" do
    render

    assert_select "form[action=?][method=?]", employee_path(@employee), "post" do

      assert_select "input#employee_name[name=?]", "employee[name]"

      assert_select "input#employee_phone[name=?]", "employee[phone]"

      assert_select "input#employee_job_type[name=?]", "employee[job_type]"
    end
  end
end
