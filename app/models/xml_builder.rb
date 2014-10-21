require 'builder'

class XmlBuilder < ActiveRecord::Base
  # Ruby Cookbook Solution
  # require 'rexml/document'
  # require 
  # doc = REXML::Document.new

  # Builder Gem solution

  builder = ::Builder::XmlMarkup.new(:target=>STDOUT, :indent=>2)
  xml = builder.person { |b| b.name("Brian"); b.phone("441-8885")}
  # xml

end
