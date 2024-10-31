#!/bin/bash -xv
#SPDX-FileCopyrighsText: 2024 Hiroaki Goto
#SPDX-License-Indentifier: BSD-3-Clause

ng () {
        echo ${1}行目が違うよ
        res=1
}

res=0

### 異常検知 ###
out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng "$LINENO"

### 正常検知 ###
[ "${res}" = 0 ] && echo OK

exit $res
