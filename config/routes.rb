Rails.application.routes.draw do
  get("/",        { :controller => "fortunes", :action => "lucky" })

  get("/lucky_numbers",   { :controller => "fortunes", :action => "lucky" })
  get("/unlucky_numbers", { :controller => "fortunes", :action => "unlucky" })

  get("/create_zodiac", {:controller => "zodiacs", :action => "create_row"})


  get("/random/:the_number/:second_number", { :controller => "zodiacs", :action => "random_number"})

  # VARIABLE ROUTES
  # =======================

  get("/signs/:the_sign",         { :controller => "zodiacs", :action => "sign" })
  get("/creatures/:the_creature", { :controller => "zodiacs", :action => "creature" })

  get("/zodiacs/new", {:controller => "zodiacs", :action => "new_form"})

  get("/zodiacs/:the_id", {:controller => "zodiacs", :action => "id"})
  get("/zodiacs", {:controller => "zodiacs", :action => "index"})
  get("/delete/:the_id",{:controller => "zodiacs", :action => "destroy"})
end
