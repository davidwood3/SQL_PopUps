import QtQuick
import QtQuick 2.12
import QtQuick.Controls 2.4

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Popup {
        id: popup
        anchors.centerIn: parent
        width: 200
        height: 334
        modal: true
        focus: true
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent

        Column {
            spacing: 25
            anchors.fill: parent

            Label {
                id: lblButter
                text: "Butter = " + chkButter.checked
            }
            Label {
                id: lblSyrup
                text: "Syrup = " + chkSyrup.checked
            }
            Label {
                id: lblFruit
                text: "Fruit = " + chkFruit.checked
            }
            Button {
                id: closeButton
                text: "Close"
                onClicked: {
                    popup.visible = false
                    // Call a C++ slot
                }
            }
        }
    }


    Frame {
        id: frame
        width: 200
        height: 334
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: -6
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter

        Column {
            id: column
            x: 5
            y: 21
            anchors.fill: parent
            anchors.rightMargin: 0
            anchors.bottomMargin: 1
            rotation: 1
            anchors.topMargin: 10
            anchors.leftMargin: 7


        CheckBox {
            id: chkButter
            x: 38
            y: 46
            width: 88
            height: 45
            text: qsTr("Butter")
            rotation: 0
            scale: 1
        }

        CheckBox {
            id: chkSyrup
            x: 38
            y: 112
            width: 97
            height: 28
            text: qsTr("Syrup")
        }

        CheckBox {
            id: chkFruit
            x: 38
            y: 180
            width: 73
            height: 29
            text: qsTr("Fruit")
        }

        Button {
            id: btnSave
            x: 38
            y: 243
            width: 88
            height: 40
            text: qsTr("Save")
            onClicked: {
                popup.visible = true
                testing.bark(chkSyrup.text.toString());

            }
        }
    }
}
}
