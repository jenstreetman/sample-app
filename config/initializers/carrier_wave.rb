if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',
      :aws_access_key_id     => ENV['AKIAJPPCW5NTWAST5LBA
'],
      :aws_secret_access_key => ENV['jSdnE0tTwyVjuvtZcGDNIQ2F1tcFhwvgEviEGzS 
']
    }
    config.fog_directory     =  ENV['jenstreetman-sample-app']
  end
end
