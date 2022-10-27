class ZodiacController < ApplicationController
  def easy_zodiac
    all_zodiacs = Zodiac.list
    @zodiac_name = params.fetch("name_of_zodiac")
    this_zodiac = all_zodiacs.fetch(@zodiac_name.to_sym)
    @horoscope = this_zodiac.fetch(:horoscope)
    
    @array_of_numbers = Array.new

    5.times do
      another_number = rand(1...100)
      
      @array_of_numbers.push(another_number)
    end

    render({ :template => "zodiac_template/dynamic_zodiacs.html.erb" })
  end
end
