namespace :assets do
  task :precompile => :webpack
end

task :webpack do
  sh "npm install"
  sh "./node_modules/.bin/webpack"
end
