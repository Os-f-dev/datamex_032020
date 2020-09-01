Para el proyecto decidí enfocarme en el área de biotecnología y en Canadá, pues me parece que es una industria que puede tener un desarrollo incomparable en el país norteamericano, debido a sus condiciones geográficas, así como la infraestructura y la gran economía que posee.
Primero importé la librería de pymongo y MongoClient, para poder trabajar la base de “companies” guardada en el Mongo.
Posteriormente accedí a la colección y saqué todos los keys que me ofrecía cada uno de los elementos de la colección, para después filtrar con un query todas las compañías dedicadas al área de la biotecnología, específicamente sus nombres, el category_code y offices.
Al convertirlo a un Data Frame me di cuenta que la información de offices contenía diccionarios, por lo que apliqué un json_normalize con un ciclo for para acceder a esos diccionarios.
Luego agregué la columna del nombre de las empresas, para tener la información precisa de cada una, de acuerdo con lo que contenía offices, por lo que después lo convertí a un Data Frame con un ciclo for, pues en realidad offices es una lista.
Descarté la columna de category_code, pues ya sabía que todas las compañías pertenecían al ramo de la biotecnología.
Una vez convertido a un Data Frame, filtré las empresas asentadas en Canadá y las conté. En total eran 9 en todo el país.
Utilicé un value_counts para ver las ciudades en las que estaban estas empresas, y me di cuenta de que la mayoría estaban en British Columbia, puntualmente en Vancouver o cerca de la ciudad, mientras que en segundo lugar estaba la provincia de Ontario con sólo 2 empresas, mismas que no se encontraban en la misma ciudad.
Filtré la lista para obtener sólo las latitudes y longitudes y purgué las que no tenían dicha información, pues no podía corroborar su información.
Ya con las coordenadas limpias, hice un heatmap, con lo que verifiqué que Vancouver es la que más empresas tiene, mientras que Toronto apenas tiene una cerca y otra un par de ciudades después en Waterloo.
Considerando la infraestructura que ofrece una ciudad como Toronto, además de la poca competencia que hay biotecnología en toda la provincia.
