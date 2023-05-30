#!/usr/bin/env python3
from your_package.srv import Rectangle,Square,Triangle,Circle
import rospy

def user_Rectangle(): 
    rospy.wait_for_service('/Area_of_Rectangle')
    try:
        R = rospy.ServiceProxy('/Area_of_Rectangle', Rectangle)
        print("Area_of_Rectangle.")
        a = input('Enter  length : ')
        b = input('Enter  width : ')

        resp1 = R(int(a),int(b))
        print(resp1)
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)

def user_Triangle(): 
    rospy.wait_for_service('/Area_of_Triangle')
    try:
        T = rospy.ServiceProxy('/Area_of_Triangle', Triangle)
        print("Area_of_Triangle.")
        a = input('Enter   base : ')
        b = input('Enter  height : ')

        resp1 = T(float(a),float(b))
        print(resp1)
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)

def user_Circle(): 
    rospy.wait_for_service('/Area_of_Circle')
    try:
        C = rospy.ServiceProxy('/Area_of_Circle', Circle)
        print("Area_of_Circle.")
        a = input('Enter Redius: ')

        resp1 = C(float(a))
        print(resp1)
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)
def user_Square(): 
    rospy.wait_for_service('/Area_of_Square')
    try:
        S = rospy.ServiceProxy('/Area_of_Square', Square)
        print("Area_of_Square.")
        a = input('Enter sides of the square: ')

        resp1 = S(float(a))
        print(resp1)
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)
if __name__ == "__main__": 

    choise = input("Enter Your service\nArea_of_Rectangle press 'a'\nArea_of_Triangle press 'b'\nArea_of_Circle press 'c'\nArea_of_Square press 'd'")
    if(choise == 'a'):
        user_Rectangle()
    elif(choise == 'b'):
        user_Triangle()
    elif(choise == 'c'):
        user_Circle()     
    elif(choise == 'd'):
        user_Square()     
    else: print('none')
