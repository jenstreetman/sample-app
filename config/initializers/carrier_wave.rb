if Rails.env.production?
  CarrierWave.configure do |config|
    #config.fog_provider      = 'fog/aws'
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',
      :aws_access_key_id     => 'AKIAJPPCW5NTWAST5LBA',
      :aws_secret_access_key => 'jSdnE0tTwyVjuvtZcGDNIQ2F1tcFhwvgEviEGzS',
      :region                => 'us-east-1'
    }
    config.fog_directory     =  'jenstreetman-sample-app-2'
  end
end
