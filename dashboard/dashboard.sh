#!/bin/bash
#==============================================================
#

# Espongo il token di autenticazione
#
kubectl -n kubernetes-dashboard describe secret admin-user-token | grep '^token'

DASHBOARD_URL="http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/"

# Espongo url di connessione ed attivo Firefox su essa
echo ""
echo "Use this link $DASHBOARD_URL"
echo ""

firefox $DASHBOARD_URL &

# Avvio il proxy
#
kubectl proxy
