echo $GIST_TOKEN > ~/.gist
cd /all;
for mdmn in `cat master_list`;do
    mdmnp=`echo "$mdmn" | tr ':/*.' '_'`; 
    mkdir results_$mdmnp;
    python3 ofa/oneforall.py run --takeover True --brute False --target $mdmn --path results_$mdmnp;
    RESPATH=results_$mdmnp;
    mv $RESPATH/all*.txt $RESPATH/init;
    echo '--------\n' >> $RESPATH/init;
    gist-paste $RESPATH/init -f "$mdmn"__`date +%s`    
done
cat /all/ofa/results/takeover* > takeovers
gist-paste takeovers -f "$mdmn"_"takeovers"_`date +%s`    
