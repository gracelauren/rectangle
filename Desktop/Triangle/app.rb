require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/triangle')

get('/form') do
  erb(:form)
end

get('/type') do
  @a = params.fetch('a')
  @b = params.fetch('b')
  @c = params.fetch('c')
  test_triangle = Triangle.new(@a.to_i(), @b.to_i(), @c.to_i())
  @triangle_type = test_triangle.find_type()
  erb(:type)
end
