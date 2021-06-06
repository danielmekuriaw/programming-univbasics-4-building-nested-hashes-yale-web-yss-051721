
def base_hash
  {:railroads => {}}
end

def monopoly_with_second_tier
  base_hash[:railroads] = 
  {
    :pieces => 4,
    :rent_in_dollars => {},
    :names => {}
  }

  base_hash
end

def monopoly_with_third_tier
  
  monopoly_with_second_tier[:railroads][:rent_in_dollars] = {:one_piece_owned => 25, :two_pieces_owned => 50, :three_pieces_owned => 100, :four_pieces_owned => 200}

  monopoly_with_second_tier[:railroads][:names] = {:reading_railroad => {}, :pennsylvania_railroad => {}, :b_and_o_railroad => {}, :shortline_railroad => {}}
  
end

def monopoly_with_fourth_tier
  monopoly_with_third_tier[:railroads][:names][:reading_railroad] = {:morgage_value => 100}
  monopoly_with_third_tier[:railroads][:names][:pennsylvania_railroad] = {:morgage_value => 200}
  monopoly_with_third_tier[:railroads][:names][:b_and_o_railroad] = {:morgage_value => 400}
  monopoly_with_third_tier[:railroads][:names][:shortline_railroad] = {:morgage_value => 800}
end
