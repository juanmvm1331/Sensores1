import numpy as np
from sklearn.datasets import load_iris
from sklearn.model_selection import train_test_split
from sklearn.svm import SVC
from sklearn.metrics import classification_report
import json
import pickle
import joblib

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
example_dict = {1:modelo,2:X_test,3:Y_test}
filename = 'finalized_model111.sav'
pickle.dump(example_dict, open(filename, 'wb'))


# save the model to disk
filename = 'finalized_modeljob111.sav'
joblib.dump(example_dict, filename)


