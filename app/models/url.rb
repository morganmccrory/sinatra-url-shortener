require_relative 'url_generator'

class Url < ActiveRecord::Base

  def shorten
    "/#{random}"
  end

end
