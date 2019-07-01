echo "Waiting for this app to go live"
echo "Starting curl request : $1"
counter=0
until $(curl -X GET --output /dev/null --silent --head --fail $1); do
    printf '.'
    sleep 5
    counter=$((counter+1))
    if [ "$counter" -gt 100 ]; then
       echo "Waited for too long. Exiting."
       exit 1
    fi
done
echo "App is live!"
