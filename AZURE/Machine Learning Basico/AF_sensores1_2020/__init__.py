import logging
import azure.functions as func
import json
import numpy as np
from sklearn.datasets import load_iris
from sklearn.model_selection import train_test_split
from sklearn.svm import SVC
from sklearn.metrics import classification_report

def main(req: func.HttpRequest) -> func.HttpResponse:
    req_body = req.get_json()
    variable1 = req_body.get('variable1')
    iris = load_iris()
    datos = iris.data
    etiquetas=iris.target
    xl=datos[0:99,0:2]
    x=np.array(xl)
    yl=etiquetas[0:99]
    y=np.array(yl)
    X_train, X_test, Y_train, Y_test = train_test_split(x,y,test_size=0.3,random_state=42)
    modelo = SVC(gamma='auto')
    modelo.fit(X_train, Y_train)
    predicciones = modelo.predict(X_test)
    json_response = json.dumps(classification_report(Y_test, predicciones),indent=2)
    if variable1 < 10:
        return func.HttpResponse(json_response)
    else:
        return func.HttpResponse("Puede que se ingresara in valor mal en el postman pero la funcion se ejecuto meleramente",status_code=200)