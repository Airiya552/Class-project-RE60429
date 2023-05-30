#!/usr/bin/env python3
from your_package.srv import Rectangle,Square,Triangle,Circle
import rospy


def Area_of_Triangle(req):
    result2 = 1/2*(req.A * req.B)
    print("Returning [ 1/2 %s * %s = %s]"%(req.A, req.B, result2))

    return result2

def Area_server():
    

    rospy.init_node('find_Area_of_Triangle')
    rospy.Service('/Area_of_Triangle', Triangle, Area_of_Triangle)
    
    
    print("Ready to find_Area_of_Triangle.")
    rospy.spin()

if __name__ == "__main__":
    Area_server()

