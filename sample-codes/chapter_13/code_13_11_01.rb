# requireで他のプログラムやライブラリを読み込む
require 'minitest/autorun'
require_relative '../lib/fizz_buzz'

class FizzBuzzTest < Minitest::Test
  # 省略

# ----------------------------------------

class UsersController < ApplicationController
  def index
    # user.rbはRailsによって自動的にrequireされる
    @users = User.all
  end
end
