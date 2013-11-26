require 'spec_helper'

describe ItemsController do
  let(:itemparams) {{name: "cool item", price: "3.99", menu_id: 1}}
  context "#create" do
    it "creates a new item" do
      expect{
          post :create, :item => itemparams
      	}.to change {Item.count}.by(1)
    end
  end
  

 
end