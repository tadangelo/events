require 'rails_helper'

describe 'navigate' do

  before do
    @user = User.create(email:  "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", name: "Andrew")
    login_as(@user, :scope => :user)
  end

  describe 'creation' do
  	before do
  		visit new_event_path
  	end

  	it 'has a new form that can be reached' do
  		expect(page.status_code).to eq(200)
  	end

  	it 'can be created from new form page' do
      fill_in 'event[title]', with: "Our awesome title"
      fill_in 'event[body]', with: "What our event is about"
      fill_in 'event[location]', with: "where it is"
      fill_in 'event[date]', with: Date.today
      click_on "Create Event"

      expect(User.last.events.last.title).to eq("Our awesome title")
  	end

  end
end


 