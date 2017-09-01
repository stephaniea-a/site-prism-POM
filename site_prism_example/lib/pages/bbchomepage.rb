class Pages::Bbchomepage < SitePrism::Page

  set_url "http://www.bbc.co.uk/"
  set_url_matcher /bbc.co.uk/

  element :sign_in_link, "span[id='idcta-username']"


  def click_sign_in_link
    sign_in_link.click
  end



end
