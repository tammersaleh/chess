# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard :rspec do
  watch(".rspec")               { "spec" }
  watch("Gemfile.lock")         { "spec" }
  watch(%r{^lib/.*})            { "spec" }
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^spec/acceptance/.*})     { "spec/acceptance" }
end

guard :bundler do
  watch('Gemfile')
end
