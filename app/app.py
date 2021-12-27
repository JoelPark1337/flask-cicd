from flask import Flask

app = Flask(__name__)

@app.route('/', methods=["GET"])
def index():
    return "Deploy Success!!"


if __name__=="__main__":
    app.run('0.0.0.0',port=8080)
