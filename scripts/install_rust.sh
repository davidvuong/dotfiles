#!/usr/bin/env bash

set -eu

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source ~/.cargo/env
rustup default stable

# Polkadot substrate.io (https://getsubstrate.io/)
rustup update nightly
rustup target add wasm32-unknown-unknown --toolchain nightly
