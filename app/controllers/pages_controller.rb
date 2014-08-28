class PagesController < ApplicationController
  skip_before_filter :require_login
 def public
 end
end