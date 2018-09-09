require_relative '../pages/login_page'

Dado('que estou na página de login') do
  @login_page = LoginPage.new
end

Dado('possuo os dados:') do |table|
  @user = table.rows_hash
end

Quando('submeter o formulário') do
  @login_page.sign_in(@user['nome'], @user['senha'])
end

Então('devo estar logado') do
  @account_page = AccountPage.new
  @account_page.profiles_bar.wait_section_load
  @account_page.wishlist_section.wait_section_load
  expect(@account_page.welcome_bar).to have_content 'Hi, Johny Smith'
end
