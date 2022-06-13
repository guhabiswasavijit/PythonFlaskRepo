from flask import app, request, Flask, jsonify
import kebernetesAdmin as admin
app = Flask(__name__)


@app.route('/admin', methods = ['POST'])
def hello_world():
  content = request.get_json()
  print(content['cmd'])
  command = str(content['cmd']).strip();
  print(command)
  return admin._execute_cmd(command)



if __name__ == '__main__':
   app.run()