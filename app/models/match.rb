class Match < ApplicationRecord
  after_create :get_timeline_for_match

  def cs_for_summoner(summoner)
  end

  private

  def get_timeline_for_match
    @api = RiotApi.new

    response = @api.get_match(self.gameId)
    self.update_attributes(
      timeline: response,
    )
  end
end
