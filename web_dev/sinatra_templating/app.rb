# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

get '/search' do
  erb :search
end

get '/campus' do
  p params
  @campus = [params[:campus]][0]
  @by_campus = db.execute("SELECT * FROM students WHERE campus = ?", @campus)
  erb :campus
end

# add a new campus to DBC
get '/campus/list' do
  @campuses = db.execute("SELECT * FROM campuses")
  erb :campus_list
end

post '/campus/list/new' do
  new_campus = params['name']
  db.execute("INSERT INTO campuses (name) VALUES (?)", new_campus)
  redirect '/success'
end

get '/success' do
  "You've successfully added a new campus to the Dev Bootcamp system!"
end
# add static resources