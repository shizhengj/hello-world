FROM ibmcom/ace

ENV BAR1=test.bar

#Copy in the bar file to a temporary directory
COPY $BAR1 /tmp

#Unzip the BAR file; need to use bash to make the profile work
RUN bash -c 'source /opt/ibm/ace-11/server/bin/mqsiprofile && mqsibar -w /home/aceuser/ace-server -a /tmp/$BAR1 -c'
