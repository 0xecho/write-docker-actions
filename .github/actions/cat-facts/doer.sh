ls
pwd
cd /all
echo $GIST_TOKEN > ~/.gist
#cat oppo | xargs -n1 -P 10 -I {} bash -c 'FL=`echo {}|tr '\/' '_'`;python3 /all/dirsearch/dirsearch.py -u {} -E --plain-text-report=$FL; gist-paste $FL -f "{} DIRSEARCHED"'
cat urls | xargs -n1 -P 10 -I {} bash -c 'python3 /all/ps/paramspider.py --domain https://{} --level high' | dalfox pipe --follow-redirects --silence" | tee >(grep POC | xargs -P 30 -n1 -I{} /all/telegram.sh -t $ME_TOKEN -c 303757027 -T {})
