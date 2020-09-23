cd /all;
for mdmn in `cat master_list`;do
    mdmnp=`echo "$mdmn" | tr ':/*.' '_'`; 
    mkdir results_$mdmnp;
    python3 ofa/oneforall.py run --brute False --target $mdmn --path results_$mdmnp;
    RESPATH=results_$mdmnp;
    mv $RESPATH/all*.txt $RESPATH/init; 
    mkdir $RESPATH/nikto;
    for i in `cat $RESPATH/init`; do
     j=`echo "$i" | tr ':/*.' '_'`; 
     touch $RESPATH/nikto/scan_$j.txt; 
     nikto -Display V -host $i -port 80 -o $RESPATH/nikto/scan_$j.txt;
     nikto -Display V -host $i -port 443 -o $RESPATH/nikto/scan_$j_443.txt;
    done
done

zip -r final.zip .
