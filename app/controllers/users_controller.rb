class UsersController < ApplicationController
  def index
    matching_users = User.all
    @list_of_users=matching_users.order({:username=>:asc})
    render({:template=>"user_templates/index"})
  end
  def show
    url_username = params.fetch("path_username")
    matching_usernames= User.where({:username=>url_username})
    @the_user= matching_usernames.first

    #if @the_user == nil
    #  redirect("/users",status:404)
    #else 
      render({:template=>"user_templates/show"})
    #end
  end
  def add
    the_user=params.fetch("query_username")
    a_new_user=User.new
    a_new_user.username=the_user
    a_new_user.save

    redirect_to("/users/"+the_user)
  end

  def update
    the_id=params.fetch("path_id")
    matching_user=User.where({:id=>the_id})
    the_user=matching_user.at(0)
    the_user.username=params.fetch("query_username")
    the_user.save
    redirect_to("/users/"+the_user.username.to_s)

    
  end


end
