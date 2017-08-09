module SocialTool
  def self.twitter_search
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "FOSdkAX0dVBXKSKpTY54DHYMX"
      config.consumer_secret     = "DZT1rDxkVG4vSDvuDZBYyU19YxaqQbRdjmkwu0rZU4irYAbScU"
      config.access_token        = "893607733781381121-pJ7KkNQz40B0BAXpOe8mq2Fne3Vigem"
      config.access_token_secret = "TxLgmOtPQPfew5GAAQqzcDRpwMo94NFU8hLnB3cSiNCtR"
    end

    client.search("#technology", result_type: 'recent').take(6).collect do |tweet|
      "#{tweet.user.screen_name}: #{tweet.text}"
    end
  end
end