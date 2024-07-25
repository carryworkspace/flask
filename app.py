import logging
from flask import Flask

app = Flask(__name__)

# Configure logging
handler = logging.StreamHandler()
handler.setLevel(logging.INFO)
app.logger.addHandler(handler)

@app.route('/')
def hello():
    app.logger.info('Request received')
    print("PRINTING")
    return 'Hello, World!'

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
