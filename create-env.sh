#!/bin/bash
cont_count=$1
echo "creating $cont_count containers.."
sleep 2;
for i in `seq $cont_count`
do
	echo "=============================="
    echo "Creating www.so$i container.."
    sleep 1
    docker run --name www.so$i -d -it --rm mano8888/batch-1 /bin/bash
    echo "www.so$i container has been created!"
	echo "=============================="
done
