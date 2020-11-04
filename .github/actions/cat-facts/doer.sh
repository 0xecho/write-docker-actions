cd /all
ls
pwd
echo $GIST_TOKEN > ~/.gist
cat resolve.txt | tee >(gau) | xargs -n1 -I{} -P 10 gospider -d 3 -q -s {} | rev | cut -d' ' -f1 | rev | grep 'oppo.com' | awk '!seen[$0]++'| xargs -n1 -P 10 -I {} bash -c 'echo {} | httpx -silent' > opt
gist-paste opt -f "Oppo Endpoints"
