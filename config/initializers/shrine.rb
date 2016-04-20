require 'shrine'
if Rails.env.production? || true
  require 'shrine/storage/s3'

  s3_options = {
    access_key_id: Rails.application.secrets.s3_options['access_key_id'],
    secret_access_key: Rails.application.secrets.s3_options['secret_access_key'],
    region: Rails.application.secrets.s3_options['region'],
    bucket: Rails.application.secrets.s3_options['bucket']
  }

  Shrine.storages = {
    cache: Shrine::Storage::S3.new(prefix: "cache", **s3_options),
    store: Shrine::Storage::S3.new(prefix: "store", **s3_options)
  }
else
  require "shrine/storage/file_system"

  Shrine.storages = {
    cache: Shrine::Storage::FileSystem.new("public", prefix: "uploads/cache"),
    store: Shrine::Storage::FileSystem.new("public", prefix: "uploads/store"),
  }
end
