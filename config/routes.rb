Rails.application.routes.draw do
  get("/directors/eldest",{ :controller => "directors", :action => "wisest"})

  get("/directors/youngest",{ :controller => "directors", :action => "youthful"})

  #directors routes
  get("/directors/:an_id",{ :controller => "directors", :action => "director_details"})
  
  get("/directors",{ :controller =>"directors", :action => "index"})

  #movies routes
  get("/movies/:special_id",{ :controller => "movies", :action => "movie_details"})

  get("/movies",{ :controller =>"movies", :action => "movie_index"})


  #homepage
  get("/", { :controller => "application", :action => "homepage" })



end
