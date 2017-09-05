\version "2.19.15"

hSheet = {
  \override TextScript.font-size = -3
  s2^"I" s^"V" s^\markup{\concat{V \super 6}} s^"I"
  s4^\markup{\concat{I \super 6}} 
  s8^\markup{\concat{IV \super 6}} s8^\markup{\concat{V \super 6}}
  s4^"I" s^"VI" 
  %%%%%%%%%%%%%%%%%% 1 VOLTA %%%%%%%%%%%%%%%%%%%%%
  s^"IV" s^"V" s^"I" s^"IV"
  %%%%%%%%%%%%%%%%%% 2 VOLTA %%%%%%%%%%%%%%%%%%%%%
  s^"IV" s^"V" s^"VI" 
  %%%%%%%%%%%%%%%%%%         %%%%%%%%%%%%%%%%%%%%%
  s^"V" s4.^"I" s8^\markup{\concat{I \super \concat{{4 \normal-size-sub 6}}}}
  s4^"IV" s^"V" s^"I" s^"VI" s^"IV" s^"V" s^"I" s^"VI" s^"IV" s^"V" s2^"VI"
  s2*33
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  s2^"I" s^"V" s^\markup{\concat{V \super 6}} s^"I"
  s4^\markup{\concat{I \super 6}} 
  s8^\markup{\concat{IV \super 6}} s8^\markup{\concat{V \super 6}}
  s4^"I" s^"VI" 
  %%%%%%%%%%%%%%%%%% 1 VOLTA %%%%%%%%%%%%%%%%%%%%%
  %s^"IV" s^"V" s^"I" s^"IV"
  %%%%%%%%%%%%%%%%%% 2 VOLTA %%%%%%%%%%%%%%%%%%%%%
  %s^"IV" s^"V" s^"VI" 
  %%%%%%%%%%%%%%%%%%         %%%%%%%%%%%%%%%%%%%%%
  s2*9 s4
  s^"V" s4.^"I" s8^\markup{\concat{I \super \concat{{4 \normal-size-sub 6}}}}
  s4^"IV" s^"V" s^"I" s^"VI" s^"IV" s^"V" s^"I" s^"VI" s^"IV" s^"V" s2^"VI"
}