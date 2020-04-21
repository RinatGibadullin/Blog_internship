class PagesController < ApplicationController
  def home
    @admin = User.where(["role = ?", "admin"]).first
  end
end
