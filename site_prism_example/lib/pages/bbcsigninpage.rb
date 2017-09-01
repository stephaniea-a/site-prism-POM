class Pages::Bbcsigninpage < SitePrism::Page

  set_url "https://account.bbc.com/signin"
  set_url_matcher /account.bbc.com/

  element :username_field, "#username-input"
  element :password_field, "#password-input"
  element :sign_in_button, "button[id='submit-button']"



def enter_login_details
  username_field.set 'kcorn1982@gmail.com'
  password_field.set 'testpassw0rd'
end



end
