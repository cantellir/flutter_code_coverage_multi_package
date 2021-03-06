# Flutter code coverage in a multi-package app

A simple Flutter project demonstrating how to work with code coverage in a multi-package Flutter APP.

Run `generate_coverage.sh` script and coverage will be generate for all packages.

`lcov.info` will be available in `coverage/lcov.info`.

HTML report will be available in `coverage/report/index.html`.

## How it works?

[Melos](https://melos.invertase.dev/) is used to handle multi-package monorepo by runing scripts on each package.

There are two scripts configured in melos pubspec:

- `test_cov`: run tests and generate `lcov.info` for each package;
- `union_cov`: write coverage information from package into a single file with the help of `combine_coverage.sh` script.

`combine_coverage.sh` is the script responsible for extracting coverage information from each package and writing it into a single `lcov.info` file.

`generate_coverage.sh` is a helper script to run melos scripts and generate an html report.

## Dependencies

- `Melos` to handle packages;

- `lcov` to generate coverage report;

- Remember to give execute permission on script files.

## Additional info

This is the second part of four repositories teaching how to handle code coverage in Flutter APPs:

[Part 1 - Flutter code coverage in a single package app](https://github.com/cantellir/flutter_code_coverage_single_package);

[Part 2 - Flutter code coverage in a multi package app](https://github.com/cantellir/flutter_code_coverage_multi_package);

[Part 3 - Github actions to handle Flutter APP minimum coverage](https://github.com/cantellir/flutter_code_coverage_minimum_github_action);

[Part 4 - Integration with Codecov analysis tool](https://github.com/cantellir/flutter_code_coverage_github_codecov);