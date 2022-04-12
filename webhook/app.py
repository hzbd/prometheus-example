# -*- coding: utf-8 -*-

from flask import Flask,request
from flask import jsonify
import json
import logging

"""
pip3 install -U flask
"""

logging.basicConfig(filename='webhook.log', level=logging.DEBUG)

app = Flask(__name__)  


@app.route("/")
def hello():
    return "Hello, World!"


# 指定接口访问的路径，支持什么请求方式get，post
@app.route('/rev', methods=['post'])  
def endpoint():
    # if request.method == 'POST':
    post_data = request.get_data()
    json_data = json.loads(post_data)
    print(json_data)
    app.logger.info('---> {}'.format(json_data))
    #print("告警状态",json.loads(post_data)["status"])
    #print("告警phone",json.loads(post_data)["commonLabels"]["phone"])
    #print("告警phone_list",list(json.loads(post_data)["commonLabels"]["phone"].strip(',').split(',')))
    #alert_status = json.loads(post_data)["status"]
    return jsonify({"rev": "ok",}), 200


if __name__ == '__main__':
    app.run(host='192.168.56.11',port=5000)
