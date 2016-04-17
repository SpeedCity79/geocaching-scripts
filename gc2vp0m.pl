#!/usr/pkg/bin/perl

# output prolog to split a sudoku puzzle into 81 values: R1C1, R1C2, etc

print "[R1,R2,R3,R4,R5,R6,R7,R8,R9] = Rows,\n";
for my $row (1..9) {
    print "[R${row}C1,R${row}C2,R${row}C3,R${row}C4,R${row}C5,R${row}C6,R${row}C7,R${row}C8,R${row}C9] = R${row},\n";
}
