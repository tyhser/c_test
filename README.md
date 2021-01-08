#  通信协议

## 1. 物理层属性
**9600,  8,  1,  N**

## 2.  数据帧

| index | data range  | description | note |
| :------: |    :-------: |  :----:  |:----: | 
|0               |0x55            |             |            |
|1               |0xAA             |            |            |
|2               |unused            |           |           |
|3           |[0x01-0x0D] |   action element id| |
|4           |[0x00:0xFF]  |       motor FWD REV|  |
|            |[0xA1:0xB1]    |     motor RUN STOP| |
|            |[0x0A:0x05]|      |      |
|5           |24:data High byte|||
|6           |24:data Middle byte|||
|7           |24:data Low byte|||
|8           | [0x00:0xFF]  |          Reply flag||
|9           | [0x00:0x01] |           motor busy||
|10          | Received|||
|11          |    Error id|||
|12          |   0x5A| ||
|13          |   0xA5| | |
|14          |  CRC16 Low byte|||
|15          |  CRC16 High byte| | | |


## Note:
**1. 主控板收到上位机数据后修改原数据的回复位为 0xFF, 将错误码填入原数据帧后改写CRC位立即回复**
**2. 如果在超时时间后没有回复, 再次发送**
**3. Bit 3执行器件ID：**
* 0x01 ~ 0x04: Syringe(motor 1), X axis(motor 2), Z axis(motor3)
* 0x05 ~ 0x0A : Valve (1~6)
* 0x0D: all action element, 只可以关闭
* 0x0C : request for motor state(busy or not)

 **4. 功能序号:**
 * 电机运动模式: FF 正向(远离光电开关侧) 00 反向(返回光电开关侧) B0  返回到0
 * 电机停止： B1
 * 阀门: FF open 00 close

 **5. 回复**
 * 00 非回复， FF回复

 **6. Error id**

 ```
 E_OK                0x00
 E_ID                  0x01
 E_FUNC           0x02
 E_RANGE        0x03
 E_FRAME        0x04
 E_CONTROLLER    0x05

 ```
