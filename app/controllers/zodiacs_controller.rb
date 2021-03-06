class ZodiacsController < ApplicationController


  def random_number

    @num1 = params[:the_number]
    @num2 = params[:second_number]

    render 'dynamic'

  end


  def sign
    @my_sign = params[:the_sign]
    @fortune = Zodiac.find_by({:sign => @my_sign})
    render 'dynamic_signs'

  end

  def creature
    @my_creature = params[:the_creature]
    @fortune = Zodiac.find_by({:creature => @my_creature})
    render 'dynamic_signs'

  end


  def id
    @my_id = params[:the_id]
    @fortune = Zodiac.find_by({:id => @my_id})
    render 'dynamic_signs'

  end


  def index
    @list_of_zodiacs = Zodiac.all
    render 'index'
  end

  def new_form

  end

  def create_row
    z = Zodiac.new
    z.sign = params[:symbol]
    z.creature = params[:animal]
    z.fortune = params[:fortune]
    z.save
    redirect_to("http://localhost:3000/zodiacs")
  end

  def destroy
    z= Zodiac.find(params[:the_id])
    z.destroy
    redirect_to("http://localhost:3000/zodiacs")
  end

end
