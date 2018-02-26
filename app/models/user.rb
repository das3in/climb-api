class User < ApplicationRecord
  has_secure_password
  has_many :goals, dependent: :destroy
  after_create :get_account_for_user

  private

  def get_account_for_user
    api = RiotApi.new
    response = api.get_summoner(self.summoner_name)

    self.update_attributes(
      account_id: response["accountId"],
      profile_icon_id: response["profileIconId"],
    )
  end
end
