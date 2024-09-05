#! /bin/bash
function build()
{
    for s in $(ls services)
    do
        cd services/${s}
        docker build . -t ms_${s}:$(cat version)
        cd -
    done
}

function delete_images()
{
    for s in $(ls services)
    do
        cd services/${s}
        docker rmi ms_${s}:$(cat version)
        cd -
    done
}

case $1 in
        "--build" )
           build;;
        "--delete-images" )
           delete_images;;
        "--copy" )
           COPY=true;;
        "--remove" )
           REMOVE=true;;
esac
