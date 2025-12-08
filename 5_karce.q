in_: read0 `:5.txt;

part_1: {[in_]
    rgsn: sum "-" in/: in_;

    rgs: "J"$/:/:"-" vs/: in_ til rgsn;
    ids: "J"$/:in_ 1_til[count in_] except til rgsn;

    : sum any flip ids within/:\: rgs;
  };

part_2: {[in_]
    rgsn: sum "-" in/: in_;
    rgs: "J"$/:/:"-" vs/: in_ til rgsn;

    ascend_ranges: asc rgs;
    merged_ranges: {[acc; y]
        lastInt: last acc;
        $[y[0] <= lastInt[1];
            (-1_acc),enlist (lastInt[0]; lastInt[1] | y[1]);
            acc,enlist y
        ]
      }/[enlist first ascend_ranges; 1_ascend_ranges];
    : sum {1+y-x}.'merged_ranges;
  };

part_1 in_
part_2 in_
