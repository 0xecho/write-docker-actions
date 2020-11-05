ls
pwd
cd /all
echo $GIST_TOKEN > ~/.gist
cat resolve.txt | tee >(gau) | xargs -n1 -I{} -P 20 gospider -d 10 -t 100 -q -s {} | rev | cut -d' ' -f1 | rev | grep 'oppo.com' |grep -v '.js|.jpg|.jpeg|.gif|.css|.tif|.tiff|.png|.ttf|.woff|.woff2|.ico|.pdf|.svg|.txt' | awk '!seen[$0]++'| xargs -n1 -P 10 -I {} bash -c 'echo {} | httpx -silent' > opt
gist-paste opt -f "Oppo Endpoints V2.0"
