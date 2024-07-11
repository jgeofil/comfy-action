# start-server.ps1
param (
    [String]$GITHUB_WORKSPACE,
    [String]$PythonFlags
)

# Start the web server and redirect output to a log file
echo "Running Server"
python "$GITHUB_WORKSPACE/main.py" --force-fp16 *> "$GITHUB_WORKSPACE/application.log"

echo "Done"
