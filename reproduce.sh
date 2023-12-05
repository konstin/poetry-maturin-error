#!/bin/bash

set -e

virtualenv -p 3.10 --clear .venv
poetry install # This fails

virtualenv -p 3.10 --clear .venv
.venv/bin/pip install -e maturin-dep # This work

virtualenv -p 3.10 --clear .venv
.venv/bin/pip install maturin
poetry install # This works
