require 'spec_helper'

describe "Authentication" do

  subject {page}
  describe "signin page" do
    before { visit signin_path }
    it {should have_selector('h1', text: 'Sign in')}
    it {should have_selector('title', text: 'Sign in')}
  end
  
  describe "signin" do
    before {visit signin_path}
    
    describe "with invalid information" do
<<<<<<< HEAD
          before { click_button "Sign in" }

          it { should have_selector('title', text: 'Sign in') }
          it { should have_selector('div.alert.alert-error', text: 'Invalid') }

          describe "after visiting another page" do
            before { click_link "Home" }
            it { should_not have_selector('div.alert.alert-error') }
          end
        end
        
=======
      before {click_button "Sign in"}
      
      it {should have_selector('title', text: 'Sign in')}
      it {should have_selector('div.alert.alert-error', text: 'Invalid')}
      
      describe "after visiting another page" do
              before { click_link "Home" }
              it { should_not have_selector('div.alert.alert-error') }
            end
    end
    
>>>>>>> 080a2336c7267aca2b35762ef74e73c53a75bfa7
    describe "with valid information" do
          let(:user) { FactoryGirl.create(:user) }
          before do
            fill_in "Email",    with: user.email
            fill_in "Password", with: user.password
            click_button "Sign in"
          end
          
          describe "followed by signout" do
<<<<<<< HEAD
                  before { click_link "Sign out" }
                  it { should have_link('Sign in') }
          end

          it { should have_selector('title', text: user.name) }
          it { should have_link('My application', href: user_path(user)) }
          it { should have_link('Sign out', href: signout_path) }
          it { should_not have_link('Sign in', href: signin_path) }
        end
      end
    end
=======
            before {click_link "Sign out"}
            it {should have_link('Sign in')}
          end
          
          it { should have_selector('title', text: user.name) }
          it { should have_link('Home', href: user_path(user)) }
          it { should have_link('Sign out', href: signout_path) }
          it { should_not have_link('Sign in', href: signin_path) }
          end
  end
end
>>>>>>> 080a2336c7267aca2b35762ef74e73c53a75bfa7
