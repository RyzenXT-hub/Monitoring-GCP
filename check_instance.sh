INSTANCE_NAME="ryzen"
ZONE="us-east5-c"
INSTANCE_STATUS=$(echo "$INSTANCE" | awk '{print $2}')

if [ "$INSTANCE_STATUS" != "RUNNING" ]; then
  echo "Instance $INSTANCE_NAME is $INSTANCE_STATUS. Starting it now..."
  gcloud compute instances start "$INSTANCE_NAME" --zone="$ZONE"
else
  echo "Instance $INSTANCE_NAME is already running."
fi
