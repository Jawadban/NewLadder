class ClientEmail < ApplicationMailer


  default :from => 'test@ladderdigital.com'

  def send_client_email(ad)
    @ad= ad
    mail( :to => 'zenador15@gmail.com',
    :subject => 'Cleint Ad!' )
  end
end
