ls
pwd
cd /all
echo $GIST_TOKEN > ~/.gist
cat oppo | xargs -n1 -P 10 -I {} bash -c 'FL=`echo {}|tr '\/' '_'`;python3 /all/dirsearch/dirsearch.py -u {} -E --plain-text-report=$FL; gist-paste $FL -f "{} DIRSEARCHED"'
