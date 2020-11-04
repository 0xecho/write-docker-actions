cd /all
ls
pwd
echo $GIST_TOKEN > ~/.gist
cat oppo | python3 /all/Arjun/arjun.py --silent | tee opt
gist-paste opt -f 'with_params'
