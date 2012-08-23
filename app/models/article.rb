# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Article < ActiveRecord::Base
  attr_accessible :body, :title
  validates :body, :presence => true, :length => { :minimum => 5 }
  validates :title, :presence => true

  has_many :comments

end
