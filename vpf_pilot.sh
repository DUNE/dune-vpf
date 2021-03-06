#!/bin/sh
#
# For testing: VPF will create this file on the fly in future
#

WMS_COLLECTOR=gfactory-2.opensciencegrid.org
CLIENT_NAME=fermilab_okd_gpfe01.dune 
REQ_NAME=UBoone_T2_UK_Manchester_ce01@gfactory_instance@OSG

./manual_glidein_startup \
  --wms-collector=$WMS_COLLECTOR \
  --client-name=$CLIENT_NAME \
  --req-name=$REQ_NAME \
  --cmd-out-file=glidein_startup_wrapper \
  --glidein-startup=$PWD/glidein_startup.sh

export X509_USER_PROXY=$PWD/vomsproxy.pem

export JOB_ID=1234
export QUEUE=test

./glidein_startup_wrapper < /dev/null >glidein_startup_wrapper.stdout 2>glidein_startup_wrapper.stderr

