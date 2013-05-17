# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'spork', :rspec_env => { 'RAILS_ENV' => 'test' } do
  watch('config/application.rb')
  watch('config/environment.rb')
  watch(%r{^config/environments/.+\.rb$})
  watch(%r{^config/initializers/.+\.rb$})
  watch('config/routes.rb')
  watch('Gemfile.lock')
  watch('spec/spec_helper.rb')
  watch(%r{^spec/spec_helper(.+)\.rb$})
  watch(%r{^spec/support/(.+)\.rb$})
  watch('spec/factories/')

  # Temporary until we figure out why models won't auto reload
  # Likely something in LookupModels or seed_data_loader is
  # causing Spork to load all the modules in the prefork block.
  # See:
  # https://github.com/sporkrb/spork (Diagnostic mode)
  # https://github.com/sporkrb/spork/wiki/Spork.trap_method-Jujitsu
  watch(%r{^app/models/((?:(?!opportunity_note).)+)\.rb$})
end

guard 'rspec', :cli => "--drb", :all_on_start => false, :all_after_pass => false do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^lib/(.+)\.rb$})     { |m| "spec/lib/#{m[1]}_spec.rb" }
  watch('spec/spec_helper.rb')  { "spec" }

  # Rails example
  watch(%r{^app/(.+)\.rb$})                           { |m| "spec/#{m[1]}_spec.rb" }
  watch(%r{^app/(.*)(\.erb|\.haml)$})                 { |m| "spec/#{m[1]}#{m[2]}_spec.rb" }
  watch(%r{^app/controllers/(.+)_(controller)\.rb$})  { |m| ["spec/routing/#{m[1]}_routing_spec.rb", "spec/#{m[2]}s/#{m[1]}_#{m[2]}_spec.rb", "spec/acceptance/#{m[1]}_spec.rb"] }
  watch('app/controllers/application_controller.rb')  { "spec/controllers" }

  # Capybara request specs
  watch(%r{^app/views/(.+)/.*\.(erb|haml)$})          { |m| "spec/requests/#{m[1]}_spec.rb" }
end