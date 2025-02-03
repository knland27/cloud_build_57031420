from flask import Flask

app = Flask(__name__)
port = 8080

@app.route('/')
def hello_world():
    return 'Hello, World!'

@app.route('/create-post')
def create_post():
    return 'Post was created...'

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=port, threaded=True)