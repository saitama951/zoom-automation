import pyautogui
import time
from datetime import datetime
import os
import pandas as pd

def signin(link,roll):
	time.sleep(2)

	pyautogui.hotkey('ctrl','alt','t')
	time.sleep(3)
	cmd="xdg-open "+'"'+link+'"'
	time.sleep(4)
	pyautogui.write(cmd)
	time.sleep(2)
	pyautogui.hotkey('enter')
	time.sleep(40)


	x,y=pyautogui.locateCenterOnScreen('/home/sanjam/Pictures/gotit.png')
	pyautogui.click(x,y)
	time.sleep(2)

	pyautogui.hotkey('alt','u')
	time.sleep(12)

	x,y=pyautogui.locateCenterOnScreen('/home/sanjam/Pictures/sanjam.png',confidence=0.9)
	pyautogui.moveTo(x,y)

	x,y=pyautogui.locateCenterOnScreen('/home/sanjam/Pictures/more.png')
	pyautogui.click(x,y)

	time.sleep(2)

	x,y=pyautogui.locateCenterOnScreen('/home/sanjam/Pictures/rename.png')
	pyautogui.click(x,y)

	pyautogui.hotkey('ctrl','a')
	pyautogui.press('backspace')
	pyautogui.write(roll)
	pyautogui.press('enter')
	pyautogui.press('esc')

	time.sleep(5)
	pyautogui.hotkey('alt','q')
	pyautogui.press('enter')






df = pd.read_csv("/home/sanjam/timetable.csv")

c = 0
while(True):
    if c ==2:
        exit()
    # now = datetime.now().strftime("%H:%M")
    now = "10:49"
    day = datetime.today().weekday()
    if now in str(df['time']):
        row = df.loc[(df["time"] == now) & (df["day"] == day)]
        link = str(row.iloc[0,3])
        roll = str(row.iloc[0, 4])

        signin(link, roll)
        c = c+1
