#!/bin/bash
#
# create-sequences.sh
# 2022-09-22

readonly WD="$(cd -- "$(dirname -- "${BASH_SOURCE:-$0}")" &> /dev/null && pwd)"

echo "\
trialNum|taskNum|qnNum|controlQn|testQn|corrAns1|corrAns2|qnText
1|2|1|1|NA|cookie|NA|What does Becky want?
2|2|2|NA|2|happy|NA|How will Becky feel if she gets a cookie?
3|3|1|NA|3|table|NA|Where does Amy think her glasses are?
4|4|1|2|NA|table|NA|Where did Jack put the book?
5|4|2|3|NA|drawer|NA|Where is the book now?
6|4|3|NA|4|table|NA|Where will Jack look for the book first?
7|5|1|4|NA|airplane|NA|What does Tom want?
8|5|2|5|NA|airplane|NA|What does Tom think his Dad got him?
9|5|3|NA|5|happy|NA|If Tom thinks his Dad got him an airplane, how will Tom feel?
10|5|4|6|NA|train|NA|What does Dad think Tom wants?
11|5|6|NA|6|sad|mad|How will Tom feel when his Dad gives him the train?
12|5|7|NA|7|happy|NA|When Dad gives Tom the train, how does Dad think Tom will feel?
" \
    | sed -e 's/|\([^|]*,.*?\)|/|"\1"|/' -e 's/|/,/g' \
    # > "${WD}/../resources/seqs/conditions.csv"

