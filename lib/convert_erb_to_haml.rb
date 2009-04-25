#! /bin/bash
# erb2haml
# by Michelangelo Altamore
 
# Convert all files having a html.erb extension in the current dir
# to haml format with html.haml extension. HAML gem must be installed.

for erb_file in `find . -name *.html.erb`; do
if [ -f $erb_file ] ; then
name=${erb_file%.html.erb};
    html2haml  > .html.haml;
  fi;
done