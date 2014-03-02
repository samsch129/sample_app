def full_title(page_title)
  base_title = "Ruby on Rails Tutorial Sample App"
  if page_title.empty?
	base_title
  else
    "#{base_title} | #{page_title}"
  end
end

require 'spec_helper'

describe "User pages" do
  subject { page }
  
  describe "signup page" do
    before { visit signup_path }

    it { should have_selector('h1', text: 'Sign up')}
    it { should have_selector('title', text: full_title('Sign up')) }
  end 
end
