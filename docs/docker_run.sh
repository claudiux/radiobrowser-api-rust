docker run \
    --rm \
    --name slate \
    --env API_SERVER="http://de1.api.radio-browser.info" \
    --env API_VERSION="1.0.0" \
    -v $(pwd)/config.rb:/srv/slate/config.rb \
    -v $(pwd)/build:/srv/slate/build \
    -v $(pwd)/source:/srv/slate/source \
    slatedocs/slate \
    build
