# Chrome 93版本以前跨域：
open -a /Applications/Google| Chrome.app --args--disable-web-security--user-data-dir=/User/Username/Documents/MyChromeDevUserData

# Chrome 93版本以后跨域：
chrome 93
open -a /Applications/Google | Chrome.app --args--disable-web-security--disable-features=SameSiteByDefaultCookies,CookiesWithoutSameSiteMustBeSecure--user-data-dir=/
User/Username/Documents/MyChromeDevUserData
