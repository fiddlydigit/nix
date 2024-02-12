import subprocess
import time
from plyer import notification

# Servers to ping
servers = ["dev.content.coreflux.org", "dev.login.coreflux.org", "dev.auth.corefluxx.org", "dev.coreflux.org"]

# Delay between checks (in seconds)
delay = 10 # 5 minutes

def send_notification(server, status):
    # Define notification type based on status
    if status == "down":
        n_type = "Error"
    else:
        n_type = "Info"

    # Customize your notification message
    title = f"{n_type}: Server Status"
    message = f"The server {server} is {status}."

    # Send the notification
    notification.notify(
        title=title,
        message=message,
        timeout=10  # Notification duration in seconds
    )

while True:
    for server in servers:
        response = subprocess.run(['ping', '-c', '1', server], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        
        # Check if ping command was unsuccessful
        if response.returncode != 0:
            send_notification(server, "down")
        else:
            # Optionally, send an "up" notification or remove this part if not needed
            send_notification(server, "up")
    
    time.sleep(delay)

