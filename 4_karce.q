in_: read0`:4.txt
check_lr: {(0b,-1_x)+1_x,0b};
zrs: "@"=/:in_;

part_1:{[zrs]
    hr: zrs*check_lr each zrs;
    vr: zrs*flip check_lr each flip zrs;
    dl: zrs*flip check_lr each flip 0b,/:-1_/:zrs;
    dr: zrs*flip check_lr each flip (1_/:zrs),\:0b;
    res: sum raze (0<s)&4>s: zrs|hr+vr+dl+dr;
    : res;
    };

part_2: {[zrs]
    hr: zrs*check_lr each zrs;
    vr: zrs*flip check_lr each flip zrs;
    dl: zrs*flip check_lr each flip 0b,/:-1_/:zrs;
    dr: zrs*flip check_lr each flip (1_/:zrs),\:0b;
    accesible: (0<s)&4>s: zrs|hr+vr+dl+dr;
    : $[s=0;0;.z.s[zrs&not accesible]] + s:sum sum accesible;
    };

part_1 zrs
part_2 zrs