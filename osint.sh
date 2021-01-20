#!/bin/bash
echo "Enter target domain:"
read domain
if [[ $domain != "" ]]; then
echo "target domain set to $domain"
echo "********************************************" 
echo "Sublist3r" 
	sublist3r -d $domain >> sublist3r_$domain 
echo "done!"
echo "********************************************" 
echo "The Harvestor" 
	theHarvester -d $domain -l 500 -b all -f harvester_$domain 
echo "done!"
echo "********************************************"
echo "Whois Details"
	whois $domain >>  whois_$domain
echo "done!"
echo "********************************************"
echo "Searching for txt files on $domain using Goofile..."
	goofile -d $domain -f txt >> goofile_txt_$domain
echo "done!"
echo "********************************************"
echo "Searching for pdf files on $domain using Goofile..."
	goofile -d $domain -f pdf >> goofile_pdf_$domain
echo "done!"
echo "********************************************"
echo "Searching for doc files on $domain using Goofile..."
	goofile -d $domain -f doc >> goofile_doc_$domain
echo "done!"
echo "********************************************"
echo "Searching for docx files on $domain using Goofile..."
	goofile -d $domain -f docx >> goofile_doc_$domain
echo "done!"
echo "********************************************"
echo "Searching for ppt files on $domain using Goofile..."
	goofile -d $domain -f ppt >> goofile_doc_$domain
echo "done!"
echo "********************************************"
echo "Searching for pptx files on $domain using Goofile..."
	goofile -d $domain -f pptx >> goofile_doc_$domain
echo "done!"
echo "********************************************"
echo "Searching for xls files on $domain using Goofile..." 
	goofile -d $domain -f xls >> goofile_xls_$domain
echo "done!"
echo "********************************************"
echo "Searching for xlsx files on $domain using Goofile..." 
	goofile -d $domain -f xlsx >> goofile_xls_$domain
echo "done!"
else
echo "Error!"
fi
