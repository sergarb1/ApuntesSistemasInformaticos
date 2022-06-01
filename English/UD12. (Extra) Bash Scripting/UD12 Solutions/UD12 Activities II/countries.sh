#!/bin/bash
#We filter by country names and then we order it descendently (-r) with unique values (-u)
cut -d":" -f 2 countries.txt | sort -r -u
