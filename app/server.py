import subprocess
from flask import Flask, jsonify, request
  
app = Flask(__name__) 
  
# curl http://127.0.0.1:5000/ 

@app.route('/', methods = ['GET', 'POST']) 
def home(): 
    if(request.method == 'GET'): 
  
        encoding = 'utf-8'
        data2 = subprocess.check_output('hostname')
        data = "hello world from "
        return jsonify({'data': data + str(data2, encoding)})
        

# curl http://127.0.0.1:5000 / home / 10 

@app.route('/home/<int:num>', methods = ['GET']) 
def disp(num): 
  
    return jsonify({'data': num**2}) 
  
  
# driver function 
if __name__ == '__main__': 
  
    app.run(host='0.0.0.0')