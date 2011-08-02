# Application patches

msg "Adding password_confirmation to filter_parameters ... "
gsub_file 'config/application.rb', /:password\]/, ':password, :password_confirmation]'

msg "Setting default timezone ... "
gsub_file 'config/application.rb', /# config.time_zone = '.+'/, "config.time_zone = 'Riga'"

msg "Setting default locale ... "
gsub_file 'config/application.rb', /# config.i18n.default_locale = .+/, "config.i18n.default_locale = :lv"

msg "Turning off timestamped_migrations ..."
inject_into_file 'config/application.rb', :before => "  end\nend" do
  <<-RUBY

    # Turn off timestamped migrations
    config.active_record.timestamped_migrations = false
  RUBY
end

msg "Setting up log file rotation ..."
inject_into_file 'config/application.rb', :before => "  end\nend" do
  <<-RUBY

    # Rotate log files (10 files max at 20MB each)
    config.logger = Logger.new(config.paths.log.first, 10, 20 * 1000 * 1000)
  RUBY
end