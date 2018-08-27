# barra lateral
class ProfilesBar < SectionObject
  element :wishlist, 'a[href="#wishlist"]'
  elements :icons, 'span[class$=-icon]'
end

# tela de wishes
class WishList < SectionObject
  element :preview_first,
          'a[href$="united-arab-emirates/dubai/Hyatt-Regency-Perth"]'
end

# pagina da conta
class AccountPage < PageObject
  set_url '/account'

  section :profiles_bar, ProfilesBar, 'ul[class="nav profile-tabs"]'
  section :wishlist_section, WishList, '#wishlist'

  element :welcome_bar, 'div[style*="margin-bottom:25px"]'
end
