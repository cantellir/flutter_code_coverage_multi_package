#!/usr/bin/env bash

melos run test_cov
melos run union_cov
genhtml coverage/lcov.info -o coverage/report