class Campaign < ApplicationRecord
  include Fae::BaseModelConcern

  validates :title, presence: true
  validates :body, presence: true

  has_many :campaign_clients
  has_many :clients, through: :campaign_clients
  
  after_save :schedule_emails

  def fae_display_field
    title
  end

  private
  
  def schedule_emails
    Client.all.each do |client|
      CampaingJob.perform_later client, self.title, self.body, self.id
    end
  end
end
