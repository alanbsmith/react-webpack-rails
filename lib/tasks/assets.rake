namespace :assets do
  task :precompile => :webpack
end

task :webpack do
  %x(npm install)
  %x(./node_modules/.bin/webpack)
end
