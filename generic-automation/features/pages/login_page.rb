# pagina de login
class LoginPage < Selenium::PageObject
  set_url '/login'

  element :input_name, 'input[name=username]'
  element :input_password, 'input[name=password]'
  element :btn_login, 'button[class*=loginbtn]'

  def sign_in(name, password)
    input_name.set name
    input_password.set password
    btn_login.click
  end
end
