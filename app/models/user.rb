class User < ActiveRecord::Base
  attr_accessible :provider, :uid, :name, :email
  validates_presence_of :name
  has_many :mocks

  def self.create_with_omniauth(auth)
    if auth['info']['email'] && ENV["COMPANY_MAILS"].split(",").include?(auth['info']['email'].strip)
      create! do |user|
        user.provider = auth['provider']
        user.uid = auth['uid']
        if auth['info']
           user.name = auth['info']['name'] || ""
           user.email = auth['info']['email'] || ""
        end
      end
    else
      raise "Auth was successful, but you are not authorized to use this site."
    end
  end

end
