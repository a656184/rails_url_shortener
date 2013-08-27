class Url < ActiveRecord::Base
  require 'digest/sha1'

  before_save :create_short_url

  attr_accessible :long_url
  
  private

  def create_short_url
    self.short_url = (Digest::SHA1.hexdigest(self.long_url))[0..6]
  end

end
