class User < ActiveRecord::Base
  #require Sinatra::ActiveRecordExtension
  validates_presence_of :name
end
