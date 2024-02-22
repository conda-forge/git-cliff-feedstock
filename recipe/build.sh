set -ex
export LIBGIT2_NO_VENDOR=true
export PKG_CONFIG=$BUILD_PREFIX/bin/pkg-config

cargo-bundle-licenses --format yaml --output ${SRC_DIR}/THIRDPARTY.yml
cargo install --path git-cliff --bins --root "${PREFIX}" --locked

rm $PREFIX/.crates2.json
rm $PREFIX/.crates.toml
