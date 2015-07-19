class LadderEmail < ApplicationMailer
  

  default :from => 'test@ladderdigital.com'

  def send_new_ad_email#(user)
    #@user = user
    mail( :to => 'zenador15@gmail.com',
    :subject => 'It Works!!!' )
  end
end

