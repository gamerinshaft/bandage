class PagesController < ApplicationController
  skip_before_filter :require_login
  layout "application_without_login"
 def public
 end
end