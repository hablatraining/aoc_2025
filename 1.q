in_: / leer

part_1:{sum 0=50 {(x+y) mod 100}\ {(::;neg)["L" in x]"J"$1_x} each x}
part_2:{sum last each (50 0) {x0:(x 0;100-x 0)(not iz:x[0]=0)and yl:"L"in y;r:x0+"J"$1_y; (mod[;100](r;100-r)yl; y; r div 100)}\ x}

gemini:{
  k: "J"$1_/:x
  d: 1 -1 "L"=x[;0]
  v: 50+\d*k
  p: 50, -1_v
  c_r: (v div 100) - (p div 100)
  c_l: ((p-1) div 100) - ((v-1) div 100)
  sum ?[d>0; c_r; c_l]
  }

// show part_1 in_
show part_2 in_