ScheduleApp::Application.configure do
  config.cache_classes = false
  config.whiny_nils = true
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false
  config.action_mailer.raise_delivery_errors = true
  config.active_support.deprecation = :log
  config.action_dispatch.best_standards_support = :builtin
  config.active_record.mass_assignment_sanitizer = :strict
  config.active_record.auto_explain_threshold_in_seconds = 0.5
  config.assets.compress = false
  config.assets.debug = true
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.perform_deliveries = false
  config.action_mailer.default :charset => "utf-8"
  config.action_mailer.default_url_options = { host: "localhost:3000" }
  config.action_mailer.smtp_settings = {
    address: "smtp.mandrillapp.com",
    port: 25,
    enable_starttls_auto: true,
    user_name: "neshah07@gmail.com",
    password: "5Q-W1GwHNKy4jbBy62VdXg"
  }

end
 

 

