sudo docker run --name srs -d -p 1935:1935 --network srs-network -v $(pwd)/conf:/srs/trunk/conf:ro ar0660/srs
#sudo docker run --name srs -d -p 1935:1935 -p 8080:8080 --network srs-network -v $(pwd)/conf:/srs/trunk/conf:ro ar0660/srs ./objs/srs -c conf/http.flv.live.conf
