use Rack::Static, 
  :urls => ["/stylesheets", "/images", "/javascripts"],
  :root => "public"

#SOLUTION:
use Rack::Auth::Basic, "Restricted Area" do |username, password|
  [username, password] == ['admin', 'admin']
end

run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=86400' 
    },
    File.open('public/index.html', File::RDONLY)
  ]
}
