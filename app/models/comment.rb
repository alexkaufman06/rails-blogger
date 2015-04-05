class Comment < ActiveRecord::Base
  before_create :send_sms

  belongs_to :post

  validates :date, presence: true
  validates :comment, presence: true

private
  def send_sms
    begin
      response = RestClient::Request.new(
      :method => :post,
      :url => "https://api.twilio.com/2010-04-01/Accounts/#{ENV['TWILIO_ACCOUNT_SID']}/Messages.json",
      :user => ENV['TWILIO_ACCOUNT_SID'],
      :password => ENV['TWILIO_AUTH_TOKEN'],
      :payload => { :Body => "you got a comment",
        :From => '7029601843',
        :To => ENV['PHONE'] }
        ).execute
    rescue RestClient::BadRequest => error
      message = JSON.parse(error.response)['message']
      errors.add(:base, message)
      false
    end
  end
end
