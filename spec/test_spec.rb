require 'spec_helper'

describe "setting up server" do
   it "displays home page" do
     visit('/')
     expect(page).to have_content "Hello world!"
   end

   it "has status code 200" do
     visit('/')
     expect(page.status_code).to eq 200
   end
 end
