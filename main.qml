import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Item
    {
        id: rangeWidget
        anchors.centerIn: parent
        height: 100
        width: 300

        Rectangle
        {
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 50
            height: 12
            width: 200
            color: "silver"
            border.color: "gray"
            border.width: 1
            radius: 5

            Rectangle
            {

                anchors.verticalCenter: parent.verticalCenter
                height: 10
                anchors.left: leftIndicator.right
                anchors.leftMargin: -10
                anchors.right: rightIndicator.left
                anchors.rightMargin: -10
                gradient:
                {
                   color: "FebruaryInk"

                }

            }
            Rectangle
            {
             id: leftIndicator
             width: 20
             height: 20
             border.color: "gray"
             border.width: 1
             radius: 50
             x: 20
             anchors.verticalCenter: parent.verticalCenter

             MouseArea
             {
                 anchors.fill: parent
                 property int prevX: 0
                 onPressed:
                 {
                     prevX = mouseX
                 }

                 onMouseXChanged:
                 {
                     if(prevX < mouseX)
                     {
                         if(leftIndicator.x < rightIndicator.x-20)
                         {
                             leftIndicator.x += 3
                         }
                     }
                     else
                     {
                        if(leftIndicator.x >-5)
                        {
                           leftIndicator.x -= 3
                        }
                       }
                    }
                }


            }

            Rectangle
            {
             id: rightIndicator
             width: 20
             height: 20
             border.color: "gray"
             border.width: 1
             radius: 50
             x: 150
             anchors.verticalCenter: parent.verticalCenter

             MouseArea
             {
                 anchors.fill: parent
                 property int prevX: 0
                 onPressed:
                 {
                     prevX = mouseX
                 }

                 onMouseXChanged:
                 {
                     if(prevX < mouseX)
                     {
                         if(rightIndicator.x < 185)
                         {
                             rightIndicator.x += 3
                         }
                     }
                     else
                     {
                        if(rightIndicator.x >leftIndicator.x + 20)
                        {
                           rightIndicator.x -= 3
                        }
                       }
                    }
                }
              }

            }
        }







}



