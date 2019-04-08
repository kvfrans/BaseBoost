set -x

cd ${0%%$(basename $0)}
mkdir build
cd build

PYTHON_VERSION=`python -c "import sys;t='{v[0]}.{v[1]}'.format(v=list(sys.version_info[:2]));sys.stdout.write(t)";`
PYTHON_LIBRARY=/Users/kevin/anaconda3/envs/py3/lib/libpython3.6m.dylib
PYTHON_INCLUDE_DIR=/Users/kevin/anaconda3/envs/py3/include/python3.6m
cmake -DPYTHON_LIBRARY=$PYTHON_LIBRARY -DPYTHON_INCLUDE_DIR=$PYTHON_INCLUDE_DIR -DCMAKE_BUILD_TYPE=DEBUG .. && make && make test
# cmake .. && make
