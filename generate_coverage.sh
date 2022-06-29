#!/usr/bin/env bash

if ! melos run test_cov; then
    exit
fi

melos run union_cov
genhtml coverage/lcov.info -o coverage/report