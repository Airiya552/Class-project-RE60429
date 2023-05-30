#!/usr/bin/env python3
from your_package.srv import Rectangle,Square,Triangle,Circle
import rospy

def Area_of_Rectangle(req):
    result1 = req.A * req.B
    print("Returning [%s * %s = %s]"%(req.A, req.B, result1))

    return result1

def Area_server():
    rospy.init_node('find_Area_of_Rectangle')
    rospy.Service('/Area_of_Rectangle', Rectangle, Area_of_Rectangle)

    
    print("Ready to find_Area_of_Rectangle.")
    rospy.spin()

if __name__ == "__main__":
    Area_server()
