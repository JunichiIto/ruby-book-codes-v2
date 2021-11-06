class User
  def initialize(name)
    # @nameはオブジェクトの属性値を保存するためのインスタンス変数
    # （オブジェクト指向プログラミングにおけるインスタンス変数）
    @name = name
  end

  def hello
    "Hello, I am #{@name}."
  end
end

# ----------------------------------------

class BooksController < ApplicationController
  def index
    # @booksはコントローラからビューにデータを渡すために使われるインスタンス変数
    # （Railsの規約としてそうなっているだけ）
    @books = Book.all
  end
end

# ----------------------------------------

<<ERB
<!DOCTYPE html>
<html>
  <head></head>
  <body>
    <%= yield %>
  </body>
</html>
ERB
