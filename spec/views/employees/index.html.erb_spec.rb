require 'rails_helper'

RSpec.describe "employees/index", type: :view do
  before(:each) do
    assign(:employees, [
      Employee.create!(
        :name => "Name",
        :phone => "Phone",
        :job_type => "Job Type"
      ),
      Employee.create!(
        :name => "Name",
        :phone => "Phone",
        :job_type => "Job Type"
      )
    ])
  end

  it "renders a list of employees" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Job Type".to_s, :count => 2
  end
end
