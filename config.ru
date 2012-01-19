use Rack::Static , :urls => { 
    "/" => "index.html", 
    "/index.html" => "index.html", 
    "/on-strike" => "/on-strike/index.html", 
    "/on-strike/" => "/on-strike/index.html",
    "/thanks/" => "/thanks/index.html",
    "/thanks" => "/thanks/index.html",
    "/strike/" => "/strike/index.html", 
    "/strike" => "/strike/index.html", 
    "/strike/thanks" => "/strike/thanks.html", 
    "/strike/thanks/" => "/strike/thanks", 
    "/timeline" => "/timeline/index.html", 
    "/timeline/" => "/timeline/index.html", 
    "/numbers/" => "/numbers/index.html", 
    "/numbers/" => "/numbers/index.html", 
    } , :root => "public"

run Rack::URLMap.new({
  "/"      => Rack::Directory.new("public"),
})
