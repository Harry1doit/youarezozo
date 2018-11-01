if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
      # Amazon S3用の設定
      :provider              => 'AWS',
      :region                => ENV['ap-northeast-1'],     # 例: 'ap-northeast-1'
      :aws_access_key_id     => ENV['AKIAI4N5ZK2D2B5G7ETA'],
      :aws_secret_access_key => ENV['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']
    }
    config.fog_directory     =  ENV['my-app-first-bucket']
  end
end