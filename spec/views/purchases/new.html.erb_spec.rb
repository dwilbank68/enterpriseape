require 'rails_helper'

RSpec.describe "purchases/new", type: :view do
  before(:each) do
    assign(:purchase, Purchase.new(
      :name => "MyString",
      :category => "MyString",
      :quantify => 1,
      :invoice => nil
    ))
  end

  it "renders new purchase form" do
    render

    assert_select "form[action=?][method=?]", purchases_path, "post" do

      assert_select "input#purchase_name[name=?]", "purchase[name]"

      assert_select "input#purchase_category[name=?]", "purchase[category]"

      assert_select "input#purchase_quantify[name=?]", "purchase[quantify]"

      assert_select "input#purchase_invoice_id[name=?]", "purchase[invoice_id]"
    end
  end
end
