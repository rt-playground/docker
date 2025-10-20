"""
@Created: Thu, Sep 11, 2025 at 06:43:02 AM
"""
# pylint: disable=import-error
from flask import Flask

import time

app = Flask(__name__)

@app.route("/")
def home():
    """
    Simulate a slow response
    """
    time.sleep(30)  # delay for 30 seconds
    return "Hello, Docker! (delayed)"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
