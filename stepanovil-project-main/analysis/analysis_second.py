import psycopg2
import matplotlib.pyplot as plt
connection = psycopg2.connect(
    host="127.0.0.1",
    user="postgres",
    password="postgres",
    database="Project"
)

c = connection.cursor()
c.execute("SELECT manufacturer, COUNT (*) FROM equipments GROUP BY manufacturer")
data = c.fetchall()

labels = [row[0] for row in data]
values = [row[1] for row in data]
plt.pie(values, labels=labels)
plt.title('Процентное соотношение стран произдителей оборудования')
plt.show()
