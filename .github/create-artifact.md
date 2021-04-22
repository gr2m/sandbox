name: Create artifact
on:
  workflow_dispatch: {}

jobs:
  create-artifact:
    name: release
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - run: mkdir -p my-artifact

      - run: echo hello > my-artifact/world.txt

      - uses: actions/upload-artifact@v2
        with:
          name: my-artifact
          path: my-artifact/world.txt
