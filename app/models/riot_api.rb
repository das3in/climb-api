class RiotApi
  def initialize
    @API_URL = "https://na1.api.riotgames.com"
    @API_KEY = "RGAPI-cef03444-ac8a-4986-aa22-ed1a9f7ce25e"
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
