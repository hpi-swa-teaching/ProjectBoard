require 'sinatra'
require 'json'

$changes = {}

def checkIfEmptyProject (project)
  if $changes[project].class != Hash
    $changes[project] = {}
  end
end

def checkIfEmptyUser (project, user)
  if $changes[project][user].class != Array
    $changes[project][user] = []
  end
end

get '/' do
  "<h2>Welcome to Squello-Webhook! use GET /[projectID]/[clientName]
  to receive all recent changes for your project & client. The POST
  requests of the webhook need to be directed to /[projectID]/payload.</h2>"
end

post '/:project/payload' do |project|
  checkIfEmptyProject project
  push = request.body.read
  json = JSON.parse(push)
  author = json["sender"]["login"]
  $changes[project].each_pair {|key, value|
    if key.downcase != author.downcase
    value << push
  end}
  puts "Action #{json["action"]} by author #{author} for project #{project} was recognized."
end

get '/:project/:user' do
  project = params[:project]
  user = params[:user]
  checkIfEmptyProject project
  checkIfEmptyUser project,user
  response = $changes[project][user]
  $changes[project][user] = []
  puts "Changes request from #{user} for project #{project}"
  response.to_s
end

get '/*' do
  "<h2> You entered a path that is not supported.</h2>"
end
