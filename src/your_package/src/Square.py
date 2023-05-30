#!/usr/bin/env python3
from your_package.srv import Rectangle,Square,Triangle,Circle
import rospy


def Area_of_Square(req):

    result = req.A**2
    print("Returning [ %s ^2 = %s]"%(req.A, result))

    return result

def Area_server():
    

    rospy.init_node('find_Area_of_Square')
    rospy.Service('/Area_of_Square', Square, Area_of_Square)
    
    
    print("Ready to find Area_of_Square.")
    rospy.spin()

if __name__ == "__main__":
    Area_server()


