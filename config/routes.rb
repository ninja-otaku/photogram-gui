Rails.application.routes.draw do
  get("/", {:controller=>"users", :action=>"index"})
  get("/users", {:controller=>"users", :action=>"index"})
  get("/users/:path_username", {:controller=>"users", :action=>"show"})
  post("/update_user/:path_id", {:controller=>"users", :action=>"update"})
  post("/add_user", {:controller=>"users", :action=>"add"})
  get("/photos", {:controller=>"photos", :action=>"index"})
  get("/photos/:path_id", {:controller=>"photos", :action=>"show"})
  get("/delete_photo/:path_id", {:controller=>"photos", :action=>"remove"})
  get("/insert_photo", {:controller=>"photos", :action=>"create"})
  post("/update_photo/:path_id", {:controller=>"photos", :action=>"update"})
  post("/add_comment", {:controller=>"photos", :action=>"comment"})
end
