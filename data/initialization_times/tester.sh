#!/bin/bash

for n in 1 `seq 32 32 1024`; do
    echo "n: $n"
    echo -e "h1 free -m | grep ^Mem | awk '{print \"mem: \" \$3}'\nexit" | \
        mn --topo=reversed,$n 2>&1 | \
        grep -E "^(mem:|completed in)"
done
