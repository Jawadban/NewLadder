class LadderEmail < ActionMailer::Base
  

  default :from => 'test@ladderdigital.com'

  def send_new_ad_email(ad)
    @ad= ad
    mail( :to => 'zenador15@gmail.com',
    :subject => 'Ladder Ad!' )
  end
end

