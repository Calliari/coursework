class TaxBands

# static methods are the library functions
  def self.get_tax_band engine_size #make a function static just type "sefl." at the begin of the function

      if engine_size < 4.0
        "A"
      elsif engine_size > 3.0
        "B"
      elsif engine_size > 2.0
        "C"
      else
        "D"
      end
  end

end
