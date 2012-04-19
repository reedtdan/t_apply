require 'spec_helper'

describe "Static pages" do
  subject { page }

    describe "Home page" do
      before { visit root_path }
      it { should have_selector('h1',    text: 'Telluride Application') }
      it { should have_selector('title', text: full_title('')) }
    end
  
    describe "About page" do
        before { visit about_path }
        it { should have_selector('h1',    text: 'About') }
        it { should have_selector('title', text: full_title('About')) }
    end
end