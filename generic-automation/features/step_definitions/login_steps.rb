require_relative '../pages/login_page'

Dado('que estou na página de login') do
  @login_page.load
end

Dado('possuo os dados:') do |table|
  @user = table.rows_hash
end

Quando("submeter o formulário") do
  @login_page.sign_in(@user['nome'], @user['senha'])
  @login_page.wait_for_no_loading
end

Então('devo estar logado') do
  # sleep 6
  # puts @account_page.welcome_bar.text
  # esse eh o wait compativel com as versoes atuais do capybara e do sitePrism
  # @account_page.wait_for_welcome_bar
  # @account_page.wait_until_welcome_bar_visible

  # puts @account_page.url_matches(10)
  # expect(@account_page).to be_displayed
  wait_page_load(@account_page)
  expect(@account_page.welcome_bar).to have_content 'Hi, Johny Smith'

  @account_page.profiles_bar.wishlist.click
  @account_page.wishlist_section.preview_first.click

  expect(page).to have_content 'Hyatt Regency Perth'
end

# Dado("que estou na página principal do google") do
#   @search_page.load
# end
#
# Quando("realizo uma busca por {string}") do |string|
#   @search_page.google_search 'google'
# end
#
# Então("sou direcionado para minha busca") do
#   expect(@search_page.result_stats).to have_content "About"
# end

# Dado('que eu acessei a página de cadastro') do
#   # @register.load
#   expect(page).to have_content 'Criar uma conta Mark7'
# end
#
# Dado('possuo os seguintes dados:') do |table|
#   # @cadastro = table.rows_hash
# end
#
# Quando('faço o meu cadastro') do
#   # fill_in 'register_name', with: @cadastro['Nome']
#   # fill_in 'register_email', with: @cadastro['Email']
#   # # fill_in 'register_password', with: @cadastro['Senha']
#   # find('input[type=password]').set @cadastro['Senha']
#
#   # @register.sign_in(@cadastro['Nome'], @cadastro['Email'], @cadastro['Senha'])
#
#   # @register.input_name.set @cadastro['Nome']
#   # @register.input_email.set @cadastro['Email']
#   # @register.input_password.set @cadastro['Senha']
#   #
#   # @register.btn_submit.click
#   # find('button[type=submit]').click
#   # click_button 'Cadastrar'
# end
#
# Então('sou redirecionado para o meu painel de tarefas') do
#   # expect(page).to have_content 'Todas as minhas tarefas'
# end
#
# Então('devo ver uma mensagem de alerta {string}') do |mensagem_alerta|
#   # expect(page).to have_content mensagem_alerta
# end
