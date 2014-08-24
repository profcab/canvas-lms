require 'xsd/qname'

# {urn:RespondusAPI}NVPair
#   name - SOAP::SOAPString
#   value - SOAP::SOAPString
class NVPair
  attr_accessor :name
  attr_accessor :value

  def initialize(name = nil, value = nil)
    @name = name
    @value = value
  end
end

# {urn:RespondusAPI}NVPairList
#   item - [NVPair]
# This was generated by wsdl2ruby.rb as:
# class NVPairList < Array
# end
# Which is a bit nicer interface I guess, except soap4r's ruby-to-soap code
# doesn't actually know what to do with it, and barfs. So through trial and
# error, I ended up with this, which matches the wsdl a lot closer anyway. Yay.
class NVPairList
  attr_accessor :item

  def initialize
    @item = []
  end
end