# Networking Library Proposal

A C++ standard library proposal based on Asio.

[Latest draft](http://chriskohlhoff.github.io/asio-tr2/)

## How to generate the documentation

1. Bootstrap Boost.

    cd /path/to/boost
    ./bootstrap.sh

1. Set up BoostBook.

    cd /path/to/boost
    cd tools/boostbook
    ./setup_boostbook.sh

2. Build Boost.Quickbook.

    cd /path/to/boost
    cd tools/quickbook
    ../../b2

3.  Set the `BOOST_ROOT` environment variable.

    export BOOST_ROOT=/path/to/boost

4. Change to the `doc` directory.

    cd /path/to/asio-tr2
    cd doc

5. Build the docs.

    $BOOST_ROOT/b2

The generated html goes into a subdirectory named html.
