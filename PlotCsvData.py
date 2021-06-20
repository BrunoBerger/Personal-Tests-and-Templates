import matplotlib.pyplot as plt
import csv

frameTimes = []
with open("data.csv", "r") as frames:
    reader = csv.reader(frames, delimiter=',')
    for row in reader:
        frameTimes.append(float(row[1]))

plt.plot(frameTimes)
plt.ylabel("Frame times in ms")
plt.xlabel("Frames")
plt.show()
