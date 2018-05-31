export CONDA_PKGS_DIRS=$HOME/.conda_packages
export MINICONDA=$HOME/miniconda
export PATH="$MINICONDA/bin:$PATH"

source $TRAVIS_BUILD_DIR/ci/travis_install_conda.sh

conda create -y -q -n fletcher python=3.6 \
    pandas pyarrow pytest pytest-cov \
    pip \
    -c conda-forge

pip install --no-deps -e .
py.test
