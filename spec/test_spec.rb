describe "setting up server" do
   it "displays home page" do
     visit('/')
     expect(last_response.body).to include("Hello world!")
   end
 end
