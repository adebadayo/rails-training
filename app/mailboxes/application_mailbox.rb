class ApplicationMailbox < ActionMailbox::Base
  # routing /something/i => :somewhere
  routing (/[09]+comment@/i)=>:comments
  #routing>(inbound_email){inbound_email.mail.to.size>2}=>:multiple_recipients
  #routingCustomAddress.new=>:custom
  routing :all=>:backstop
end
