Rails.application.routes.draw do
  
  get("/square/new", {:controller=>"zebra", :action=>"squarenew"})
  get("/square/results", {:controller=>"zebra", :action=>"squareresults"})

  get("/square_root/new", {:controller=>"zebra", :action=>"squarerootnew"})
  get("/square_root/results", {:controller=>"zebra", :action=>"squarerootresults"})
  
  get("/payment/new", {:controller=>"zebra", :action=>"paymentnew"})
  get("/payment/results", {:controller=>"zebra", :action=>"paymentresults"})

  get("/random/new", {:controller=>"zebra", :action=>"randomnew"})
  get("/random/results", {:controller=>"zebra", :action=>"randomresults"})


  get("/", {:controller=>"zebra", :action=>"homepage"})
end
