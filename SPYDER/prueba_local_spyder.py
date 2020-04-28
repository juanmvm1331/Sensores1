import pyodbc
import pandas as pd
import json
import uuid

# Definicion de la funcion de traseo de error.
def traceDB(cnxnAzure,uuid,message):
    query = "INSERT INTO [dbo].[logs] ([ID],[Fecha],[Descripcion]) VALUES ('{}',GETDATE(),'{}')".format(uuid,message)
    cnxnAzure.execute(query)
    cnxnAzure.commit()
    return(True)

ID = str(uuid.uuid1())

driverAzure = "ODBC Driver 17 for SQL Server"
serverAzure = "---------.database.windows.net"
databaseAzure = "--------------"
usernameAzure = "------------"
passwordAzure = "-------------"
SQL_datos = "SELECT * FROM datos"

conStringAzure = "DRIVER={{{}}};SERVER={};DATABASE={};UID={};PWD={}".format(driverAzure,serverAzure,databaseAzure,usernameAzure,passwordAzure)
cnxnAzure = pyodbc.connect(conStringAzure)

traceDB(cnxnAzure,ID,'Inicio servicio web.')
traceDB(cnxnAzure,ID,'Parámetros del servicio recibidos.')

query = (SQL_datos)
df_datos = pd.read_sql_query(query,cnxnAzure)
diccionario = df_datos.to_dict('dict')
json_response = json.dumps(diccionario,indent=2)
traceDB(cnxnAzure,ID,'Se envia respuesta del servicio :D .')