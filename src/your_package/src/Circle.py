#!/usr/bin/env python3
from your_package.srv import Rectangle,Square,Triangle,Circle
import rospy


def Area_of_Circle(req):
    Pi = 3.14
    result = (Pi*req.A)**2
    print("Returning [ (Pi * %s) ^2 = %s]"%(req.A, result))

    return result

def Area_server():
    

    rospy.init_node('find_Area_of_Circle')
    rospy.Service('/Area_of_Circle', Circle, Area_of_Circle)
    
    
    print("Ready to find_Area_of_Circle.")
    rospy.spin()

if __name__ == "__main__":
    Area_server()


