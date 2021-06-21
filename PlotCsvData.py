import csv
import matplotlib.pyplot as plt

file = "data.csv"
frameTimes = []
with open(file, "r") as frames:
    reader = csv.reader(frames, delimiter=',')
    next(reader, None)  # skip the headers
    for row in reader:
        frameTimes.append(float(row[1]))

plt.figure(file)
plt.plot(frameTimes)
plt.ylabel("Frame times in ms")
plt.xlabel("Frames")
plt.show()
