# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard :rspec do
  watch("Gemfile.lock")            { "spec" }
  watch(%r{^lib/.*})            { "spec" }
  watch(%r{^spec/.+_spec\.rb$})
end

guard :bundler do
  watch('Gemfile')
end
