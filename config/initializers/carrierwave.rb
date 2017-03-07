CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['ACCESS_KEY_ID'],
    aws_secret_access_key: ENV['SECRET_ACCESS_KEY'],
    region: 'us-east-1'#リージョンをUS以外にしたかたはそのリージョンに変更
  }

    case Rails.env
    when 'development'
        config.fog_directory  = 'schoolimage'
        config.asset_host = 'https://s3.amazonaws.com/schoolimage'
    when 'production'
        config.fog_directory  = 'schoolimage'
        config.asset_host = 'https://s3.amazonaws.com/schoolimage'
    end
end