# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

# gem "rails"

# ----------------------------------------

# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

gem 'faker'

# ----------------------------------------

require 'faker'

puts Faker::VERSION
puts Faker::Name.name

# ----------------------------------------

# 省略

gem 'faker', '2.16.0'

# ----------------------------------------

# 省略

gem 'faker', '2.16.0'
gem 'awesome_print'

# ----------------------------------------

require 'faker'
require 'awesome_print'

puts Faker::VERSION
puts Faker::Name.name

# apはAwesome Printによって追加されるターミナル出力メソッド
ap ['Alice', 'Bob', 'Carol']
