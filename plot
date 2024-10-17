import matplotlib.pyplot as plt
import numpy as np


with open(r"C:\Users\IROAD\PycharmProjects\czj_1\gujia\logs\logs\neck_2_2024-05-10_18-45-38.txt", "r") as file:
    data1 = [float(line.strip()) for line in file]
with open(r"C:\Users\IROAD\PycharmProjects\czj_1\gujia\logs\logs\left_wrist_2_2024-05-10_18-45-38.txt", "r") as file:
    data2 = [float(line.strip()) for line in file]
with open(r"C:\Users\IROAD\PycharmProjects\czj_1\gujia\logs\logs\right_wrist_2_2024-05-10_18-45-38.txt", "r") as file:
    data3 = [float(line.strip()) for line in file]



# 确定从索引100到500之间的范围
start_index = 0
end_index = 335
# 创建折线图
plt.plot(range(start_index, end_index),data1[start_index:end_index],label='neck', color='blue')
plt.plot(range(start_index, end_index),data2[start_index:end_index],label='left', color='green')
plt.plot(range(start_index, end_index),data3[start_index:end_index],label='right',color='yellow')


# 添加标题和标签
plt.title('Line Chart from Text File')
plt.xlabel('Index')
plt.ylabel('Value')


# 显示图形
plt.show()
