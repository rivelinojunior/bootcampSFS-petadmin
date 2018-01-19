class CampaingJob < ApplicationJob
  queue_as :emails
 
  def perform(client, title, body, campaign_id)
    CampaignClient.create(campaign_id: campaign_id, client: client)
    MarketingMailer.campaign(client, title, body).deliver_now
  end
end