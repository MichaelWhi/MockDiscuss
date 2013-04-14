class Mock < ActiveRecord::Base
  attr_accessible :description, :name, :pic
  belongs_to :user
  mount_uploader :pic, PicUploader
  before_create :default_name
  acts_as_commentable

  def default_name
    self.name ||= File.basename(pic.filename, '.*').titleize if pic
  end
  
  def self.recent(limit = 5)
    order("created_at desc").limit(limit)
  end
end