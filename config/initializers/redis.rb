# frozen_string_literal: true

Redis.current = Redis.new(
  host: ENV.fetch('REDIS_HOST') { 'localhost' },
  port: ENV.fetch('REDIS_PORT') { 6379 },
  db: ENV.fetch('REDIS_DB') { 1 },
  password: ENV.fetch('REDIS_PASSWORD') { false },
  driver: :hiredis
)
