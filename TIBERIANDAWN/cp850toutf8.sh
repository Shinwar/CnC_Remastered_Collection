#!/bin/bash
to_format="utf8"
file_pattern="*.H"
files=`find . -name "${file_pattern}"`
for file_name in ${files}
do
    iconv -f cp850 -t $to_format $file_name | sponge $file_name
done
