require 'rails_helper'

feature "gameplay" do 

  context "the home screen" do 
    before :each do 
      visit '/'
    end

    it "should have a dropdown indicating the available signs to throw" do
      expect(page).to have_select('sign', options: ['rock', 'paper', 'scissors'])
    end

    it "can choose to throw a sign from a dropdown menu" do 
      select 'rock', from: 'sign'
      click_on 'Go!'
      expect(page.text).to match /[Rr]ock/
    end

  end
end