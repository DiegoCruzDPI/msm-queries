class ActorsController < ApplicationController
  def actor_index
    @list_of_actors= Actor.all


    render({ :template => "actors_template/act_index.html.erb"})
  end

  def actor_details
    # params looks like this {"an_id" => 42}
    
        the_id = params.fetch("oof_id")
    
        
        @the_actor = Actor.where({ :id => the_id}).at(0)
        
        @characters = Character.where({ :actor_id => @the_actor.id})
    
        render({ :template => "actors_template/show_actor.html.erb"})
    
  end
end
