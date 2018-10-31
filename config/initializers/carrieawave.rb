CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     ENV['AKIAI4N5ZK2D2B5G7ETA'],  # required
    aws_secret_access_key: ENV['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'],     # required
    region:                'ap-northeast-1',                   # optional, defaults to 'us-east-1' オハイオ＝us-east-2
    #host:                  's3.example.com',             # optional, defaults to nil
    #endpoint:              'https://s3.example.com:8080' # optional, defaults to nil
  }
  config.fog_directory  = 'my-app-first-bucket'                # required
  config.fog_public     = false                                                 # optional, defaults to true
  config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" } # optional, defaults to {}
end