# frozen_string_literal: true

HIREFIRE_PATH = File.expand_path("../hirefire", __FILE__)

%w[middleware resource].each do |file|
  require "#{HIREFIRE_PATH}/#{file}"
end

%w[delayed_job resque sidekiq qu qc bunny que good_job].each do |file|
  require "#{HIREFIRE_PATH}/macro/#{file}"
end

require "#{HIREFIRE_PATH}/railtie" if defined?(Rails::Railtie)
