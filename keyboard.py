import serial
import pyautogui

the = 0
ser = serial.Serial('/dev/ttyACM0', 9601)  # Change 'COM3' to your Arduino's serial port

while True:
    data = ser.readline().decode().strip()  # Read data from the serial port
    if data == 'u':
        the += 1 
        pyautogui.press('u')  # Simulate the 'u' keypress
        print(the)
    if data == 'i':
        the += 1
        print(the)
        pyautogui.press('i')