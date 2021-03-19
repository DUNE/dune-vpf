#!/bin/sh
#
# For testing: VPF will create this file on the fly in future
#

WMS_COLLECTOR=gfactory-2.opensciencegrid.org
CLIENT_NAME=gpfrontend01-fnal-gov_gWMSFrontend.dune_cern
REQ_NAME=UBoone_T2_UK_Manchester_ce02@gfactory_instance@OSG

./manual_glidein_startup \
  --wms-collector=$WMS_COLLECTOR \
  --client-name=$CLIENT_NAME \
  --req-name=$REQ_NAME \
  --cmd-out-file=glidein_startup_wrapper \
  --glidein-startup=glidein_startup.sh

export X509_USER_PROXY=vomsproxy.pem

./glidein_startup_wrapper < /dev/null >glidein_startup_wrapper.stdout 2>glidein_startup_wrapper.stderr

