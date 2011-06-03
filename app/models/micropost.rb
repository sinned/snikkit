# == Schema Information
# Schema version: 20110603083722
#
# Table name: microposts
#
#  id         :integer(4)      not null, primary key
#  content    :string(255)
#  url        :string(255)
#  user_id    :integer(4)
#  created_at :datetime
#  updated_at :datetime
#

class Micropost < ActiveRecord::Base
  belongs_to :user
end
