module IntStrings
  #this is a hash table that maps the word representation of numbers.
  #the word count is prepopulated to avoid runtime complexity. example of accessing data:
  # int_string[19][0] => will return the word representation of number 19
  # int_string[20][1] => will return the word length of number 20
  def define_large_numbers()
     @million           = 1000000
     @billion           = 1000000000
     @trillion          = 1000000000000
     @quadrillion       = 1000000000000000
     @quintillion       = 1000000000000000000
     @sextillion        = 1000000000000000000000
     @septillion        = 1000000000000000000000000
     @octillion         = 1000000000000000000000000000
     @nonillion         = 1000000000000000000000000000000
     @decillion         = 1000000000000000000000000000000000
     @undecillion       = 1000000000000000000000000000000000000
     @duodecillion      = 1000000000000000000000000000000000000000
     @tredecillion      = 1000000000000000000000000000000000000000000
     @quattuordecillion = 1000000000000000000000000000000000000000000000
     @quindecillion     = 1000000000000000000000000000000000000000000000000
     @sexdecillion      = 1000000000000000000000000000000000000000000000000000
     @septendecillion   = 1000000000000000000000000000000000000000000000000000000
     @octodecillion     = 1000000000000000000000000000000000000000000000000000000000
     @novemdecillion    = 1000000000000000000000000000000000000000000000000000000000000
     @vigintillion      = 1000000000000000000000000000000000000000000000000000000000000000
     @centillion        = 1000000000000000000000000000000000000000000000000000000000000000000
  end
   
  def int_strings
   define_large_numbers()
   return {
      1 =>  "one",
      2 =>  "two",
      3 =>  "three",
      4 =>  "four",
      5 =>  "five",
      6 =>  "six",
      7 =>  "seven",
      8 =>  "eight",
      9 =>  "nine",
      10 => "ten",
      11 => "eleven",
      12 => "twelve",
      13 => "thirteen",
      14 => "fourteen",
      15 => "fifteen",
      16 => "sixteen",
      17 => "seventeen",
      18 => "eighteen",
      19 => "nineteen",
      20 => "twenty",
      30 => "thirty",
      40 => "forty",
      50 => "fifty",
      60 => "sixty",
      70 => "seventy",
      80 => "eighty",
      90 => "ninety",
      100 => "hundred",
      1000 => "thousand",
      @million           => "million",
      @billion           => "billion",
      @trillion          => "trillion",
      @quadrillion       => "quadrillion",
      @quintillion       => "quintillion",
      @sextillion        => "sextillion",
      @septillion        => "septillion",
      @octillion         => "octillion",
      @nonillion         => "nonillion",
      @decillion         => "decillion",
      @undecillion       => "undecillion",
      @duodecillion      => "duodecillion",
      @tredecillion      => "tredecillion",
      @quattuordecillion => "quattuordecillion",
      @quindecillion     => "quindecillion",
      @sexdecillion      => "sexdecillion",
      @septendecillion   => "septendecillion",
      @octodecillion     => "octodecillion",
      @novemdecillion    => "novemdecillion",
      @vigintillion      => "vigintillion",
      @centillion        => "centillion"
   }
  end
end

class WordDigit
 include IntStrings
 def initialize()
 end

 #function that prints out numbers to words
 def fetch_number_strings(number,factor,and_flag)
    first_part = number % factor
    (and_flag) ? and_string = " and " : and_string = " "
    if factor.eql?(10)
      second_part = number - first_part
      "#{generate_number_str(second_part,true)}#{and_string}#{int_strings[first_part]}"
    else
      second_part = (number - first_part)/factor
      "#{generate_number_str(second_part,true)} #{int_strings[factor]}#{and_string}#{generate_number_str(first_part,true)}"
    end
 end

 #accessor function that converts number to words
 def generate_number_str(number,and_flag)
   if number == 0
     ""
   elsif int_strings.has_key?(number)
     (number < 99) ? int_strings[number] : "one #{int_strings[number]}"
   elsif number < 100
     fetch_number_strings(number,10,and_flag,and_flag)
   elsif number < 1000
     fetch_number_strings(number,100,and_flag)
   elsif number < @million
     fetch_number_strings(number,1000,and_flag)
   elsif number < @billion
     fetch_number_strings(number, @million,and_flag)
   elsif number < @trillion
     fetch_number_strings(number,@billion,and_flag)
   elsif number < @quadrillion
     fetch_number_strings(number,@trillion,and_flag)
   elsif number <  @quintillion
     fetch_number_strings(number,@quadrillion,and_flag)
   elsif number <  @sextillion
     fetch_number_strings(number,@quintillion,and_flag)
   elsif number <  @septillion
     fetch_number_strings(number,@sextillion,and_flag)
   elsif number <  @octillion
     fetch_number_strings(number,@septillion,and_flag)
   elsif number <  @nonillion
     fetch_number_strings(number,@octillion,and_flag)
   elsif number <  @decillion
     fetch_number_strings(number,@nonillion,and_flag)
   elsif number <  @undecillion
     fetch_number_strings(number,@decillion,and_flag)
   elsif number <  @duodecillion
     fetch_number_strings(number,@undecillion,and_flag)
   elsif number <  @tredecillion
     fetch_number_strings(number,@duodecillion,and_flag)
   elsif number <  @quattuordecillion
     fetch_number_strings(number,@tredecillion,and_flag)
   elsif number <  @quindecillion
     fetch_number_strings(number,@quattuordecillion,and_flag)
   elsif number <  @sexdecillion
     fetch_number_strings(number,@quindecillion,and_flag)
   elsif number <  @septendecillion
     fetch_number_strings(number,@sexdecillion,and_flag)
   elsif number <  @octodecillion
     fetch_number_strings(number,@septendecillion,and_flag)
   elsif number <  @novemdecillion
     fetch_number_strings(number,@octodecillion,and_flag)
   elsif number <  @vigintillion
     fetch_number_strings(number,@novemdecillion,and_flag)
   elsif number <  @centillion
     fetch_number_strings(number,@vigintillion,and_flag)
   elsif number <  @centillion * 1000 #no word for this number :)
     fetch_number_strings(number,@centillion,and_flag)
   else
     puts "Error! Could not handle this number"
     0
   end
 end

end

########################################################
#usage example
#*************
#reading the number argument from command line.
(ARGV[0]) ? number = ARGV[0].to_i : number = 1000
worddigit = WordDigit.new
puts  worddigit.generate_number_str(number.abs,false)
########################################################
