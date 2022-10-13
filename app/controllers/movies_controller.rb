class MoviesController < ApplicationController
  def movie_index
    @list_of_movies = Movie.all
    render({ :template => "movies_template/mv_index.html.erb"})
  end

  def movie_details
    # params looks like this {"an_id" => 42}
    
        the_movie_id = params.fetch("special_id")
    
    
        @the_movie = Movie.where({ :id => the_movie_id}).at(0)
    
        render({ :template => "movies_template/show_movie.html.erb"})
    
      end

end
