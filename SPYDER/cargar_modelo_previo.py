# Codigo para cargar un modelo almacenado. 

# import pickle
import joblib



filename = 'finalized_model111.sav'
loaded_model = joblib.load(open(filename, 'rb'))
resultado = loaded_model[1].score(loaded_model[2], loaded_model[3])
print(resultado)

