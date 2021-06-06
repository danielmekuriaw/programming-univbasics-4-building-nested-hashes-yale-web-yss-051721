
def base_hash
  {:railroads => {}}
end

def monopoly_with_second_tier
  temp = base_hash
  temp[:railroads] = 
  {
    :pieces => 4,
    :rent_in_dollars => {},
    :names => {}
  }
  
  puts temp

  temp
end

def monopoly_with_third_tier
  
  mwst = monopoly_with_second_tier
  
  mwst[:railroads][:rent_in_dollars] = {:one_piece_owned => 25, :two_pieces_owned => 50, :three_pieces_owned => 100, :four_pieces_owned => 200}

  mwst[:railroads][:names] = {:reading_railroad => {}, :pennsylvania_railroad => {}, :b_and_o_railroad => {}, :shortline_railroad => {}}
  
  mwst
end

def monopoly_with_fourth_tier
  mwtt = monopoly_with_third_tier
  mwtt[:railroads][:names][:reading_railroad] = {:mortgage_value => 100}
  mwtt[:railroads][:names][:pennsylvania_railroad] = {:mortgage_value => 200}
  mwtt[:railroads][:names][:b_and_o_railroad] = {:mortgage_value => 400}
  mwtt[:railroads][:names][:shortline_railroad] = {:mortgage_value => 800}
  
  mwtt
end
