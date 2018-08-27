# pagina de login
class LoginPage < PageObject
  set_url '/login'

  element :input_name, 'input[name=username]'
  element :input_password, 'input[name=password]'
  element :btn_login, 'button[class*=loginbtn]'
  element :loading, '#rotatingDiv'

  def sign_in(name, password)
    input_name.set name
    input_password.set password
    btn_login.click
  end

  # element :input_search, '#lst-ib'
  # element :btn_search, 'input[name=btnK]'
  # element :result_stats, '#resultStats'
  #
  # def google_search(search)
  #   input_search.set search
  #   btn_search.click
  # end

  # set_url '/register'
  # element :input_name, '#register_name'
  # element :input_email, '#register_email'
  # element :input_password, 'input[type=password]'
  # element :btn_submit, 'button[type=submit]'
  #
  # def sign_in(name, email, password)
  #   input_name.set name
  #   input_email.set email
  #   input_password.set password
  #   btn_submit.click
  # end
end
