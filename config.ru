use Rack::Static, 
  :urls => ["/style.css", "/checklist.css", "/stylesheets", "/images", "/javascripts"],
  :root => "public"

#SOLUTION:
use Rack::Auth::Basic, "Restricted Area" do |username, password|
  [username, password] == ['fftf', 'fftf']
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
