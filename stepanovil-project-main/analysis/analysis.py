import psycopg2
import matplotlib.pyplot as plt
connection = psycopg2.connect(
    host="127.0.0.1",
    user="postgres",
    password="postgres",
    database="Project"
)

c = connection.cursor()
c.execute("SELECT position_held, AVG(salary) FROM stuff GROUP BY position_held")
data = c.fetchall()

labels = [row[0] for row in data]
values = [row[1] for row in data]
plt.bar(x=labels, height=values)
plt.title('Диарамма средней зарплаты среди работников')
plt.show()
