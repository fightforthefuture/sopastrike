use Rack::Static , :urls => { 
    "/" => "index.html", 
    "/index.html" => "index.html", 

    } , :root => "public"



use Rack::Auth::Basic, "Restricted Area" do |username, password|
  [username, password] == ['admin', 'admin']
end

run Rack::URLMap.new({
  "/"      => Rack::Directory.new("public"),
})
