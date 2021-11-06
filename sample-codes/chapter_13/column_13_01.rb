# コラム：requireの単位はライブラリ

# URIモジュールのopenメソッドは、もともとprivateメソッドなので呼び出せない
URI.open 'https://example.com'
#=> private method `open' called for URI:Module (NoMethodError)

# ただし、open-uriライブラリをrequireするとopenメソッドが使えるようになる
require 'open-uri'
URI.open 'https://example.com'
#=> #<StringIO:0x007fe8cc105d08 @base_uri=#<URI::HTTPS https://...
