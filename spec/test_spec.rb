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

   it "stores the value of the set key and returns it when called by get" do
     visit('/set?somekey=somevalue')
     visit('/get?key=somekey')
     expect(page).to have_content "somevalue"
   end
 end
