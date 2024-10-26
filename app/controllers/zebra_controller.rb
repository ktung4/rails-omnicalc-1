class ZebraController<ApplicationController
  def squarenew
    render({:template=>"game_templates/new_square_calc"})
  end

  def squareresults
    @the_num = params.fetch("users_number").to_f
    @the_result = @the_num **2
    render({:template=>"game_templates/square_results"})
  end

  def squarerootnew
    render({:template=>"game_templates/new_square_root_calc"})
  end

  def squarerootresults
    @the_num = params.fetch("users_number").to_f
    @the_result = @the_num **0.5
    render({:template=>"game_templates/square_root_results"})
  end
  
  def paymentnew
    render({:template=>"game_templates/new_payment_calc"})
  end

  def paymentresults
    @the_apr = params.fetch("user_apr").to_f
    @the_year = params.fetch("user_year").to_i*12
    @the_principal = params.fetch("user_principal").to_f
    @the_result = (@the_apr/100/12) * @the_principal/(1-(1+(@the_apr/100/12))**(-@the_year))
    render({:template=>"game_templates/payment_results"})
  end

  def randomnew
    render({:template=>"game_templates/new_random_calc"})
  end

  def randomresults
    @the_min_num = params.fetch("user_min").to_f
    @the_max_num = params.fetch("user_max").to_f
    @the_result = rand(@the_min_num...@the_max_num)
    render({:template=>"game_templates/random_results"})
  end


  def homepage

    render({:template=>"game_templates/homepage"})
  end
end
