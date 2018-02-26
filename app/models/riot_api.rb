class RiotApi
  def initialize
    @API_URL = "https://na1.api.riotgames.com"
    @API_KEY = "RGAPI-b97865b3-4d3f-406a-b973-bff3fc0ced1d"
  end

  def get_summoner(name)
    response = HTTParty.get("#{@API_URL}/lol/summoner/v3/summoners/by-name/#{name}?api_key=#{@API_KEY}")
    JSON.parse(response.body)
  end

  def get_recent_matchlist(account_id)
    response = HTTParty.get("#{@API_URL}/lol/match/v3/matchlists/by-account/#{account_id}/recent?api_key=#{@API_KEY}")
    JSON.parse(response.body)
  end

  def get_matchlist_since_timestamp(account_id, timestamp)
    response = HTTParty.get("#{@API_URL}/lol/match/v3/matchlists/by-account/#{account_id}?beginTime=#{options}&api_key=#{@API_KEY}")
    JSON.parse(response.body)
  end

  def get_match(matchId)
    response = HTTParty.get("#{@API_URL}/lol/match/v3/matches/#{matchId}?api_key=#{@API_KEY}")
    JSON.parse(response.body)
  end
end
