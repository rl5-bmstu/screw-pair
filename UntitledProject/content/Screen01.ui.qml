
import QtQuick 6.3
import QtQuick.Controls 6.3
import QtQuick3D 6.3
import UntitledProject
import Quick3DAssets.Tsvetnaya_sborka 1.0
import QtQuick3D.Helpers 6.4
import Qt.test.controls 6.0

Rectangle {

    property real varindicator: 5.806
    property alias connectionsTarget: connections.target
    width: 1024
    height: 768
    color: "#5e5e5e"
    property real coefgruzexc4: 0
    property real coefgruzexc3: 0
    property real angleofind: 3.6
    property real coefexc: 0

    Rectangle {
        id: rectangle
        x: 335
        y: 155
        width: 341
        height: 564
        color: "#00fbe7"
        radius: 16
        border.width: 10
        z: 80

        View3D {
            id: view3D
            anchors.fill: parent
            anchors.rightMargin: 8
            anchors.bottomMargin: 8
            anchors.leftMargin: 8
            anchors.topMargin: 8

            environment: sceneEnvironment

            SceneEnvironment {
                id: sceneEnvironment
                antialiasingMode: SceneEnvironment.MSAA
                antialiasingQuality: SceneEnvironment.High
            }

            Node {
                id: scene
                DirectionalLight {
                    id: directionalLight
                    x: -0
                    y: 172.405
                    z: 353.25186
                }

                PerspectiveCamera {
                    id: sceneCamera
                    x: -17.12
                    y: 51.246
                    z: 579.71136
                }

                Tsvetnaya_sborka {
                    id: tsvetnaya_sborka
                    x: -117.781
                    y: 289.674
                    z: -54.52759
                    visiblegruz1: false
                    animationup: false
                    animationdown: false
                    visiblegruz2: false
                    visiblegruz3: false
                    visiblegruz4: false
                    calibrationgruz1: false
                    calibrationgruz2: false
                    calibrationgruz3: false
                    calibrationgruz4: false
                    excgruz1: false
                    excgruz2: false
                    excgruz3: false
                    excgruz4: false
                    indicatorvalue: 0
                    strelkaanimation: false
                    shoulder: -58
                }

            }

            WasdController {
                id: wasdController
                x: 8
                y: 8
                width: 325
                height: 548
                controlledObject: sceneCamera
            }

        }

        TextInput {
            id: textInput
            x: 225
            y: 75
            width: 16
            height: 15
            visible: false
            font.pixelSize: 12
            text: qsTr("0")

        }
    }

    Button {
        id: button
        x: 122
        y: 473
        text: qsTr("Активировать")
        highlighted: false
        icon.color: "#5e5e5e"
        Connections {
            id: connections2
            target: tsvetnaya_sborka.data
            onClicked: {
                tsvetnaya_sborka.animationup = true
                tsvetnaya_sborka.animationdown = false
                tsvetnaya_sborka.strelkaanimation = false
                tsvetnaya_sborka.indicatorvalue = varindicator
                tsvetnaya_sborka.strelkaanimation = true
                textInput.text = (varindicator/angleofind).toFixed(1)
            }
        }
    }

    Button {
        id: button1
        x: 90
        y: 155
        text: qsTr("Добавить осевую нагрузку")
        highlighted: false
        wheelEnabled: true
        focusPolicy: Qt.ClickFocus
        Connections {
            id: connections
            target: tsvetnaya_sborka.data
            onClicked: {
                button4.visible = true
                button5.visible = true
                button6.visible = true
                tsvetnaya_sborka.visiblegruz1 = true
                varindicator = 4*angleofind
            }
        }

    }

    Button {
        id: button2
        x: 122
        y: 605
        text: qsTr("Закончить")
        Connections {
            id: connections1
            target: tsvetnaya_sborka.data
            onClicked: {
                textInput.visible = false
                textInput.text = 0
                tsvetnaya_sborka.visiblegruz1 = false
                tsvetnaya_sborka.visiblegruz2 = false
                tsvetnaya_sborka.visiblegruz3 = false
                tsvetnaya_sborka.visiblegruz4 = false
                tsvetnaya_sborka.calibrationgruz1 = false
                tsvetnaya_sborka.calibrationgruz2 = false
                tsvetnaya_sborka.calibrationgruz3 = false
                tsvetnaya_sborka.calibrationgruz4 = false
                tsvetnaya_sborka.excgruz1 = false
                tsvetnaya_sborka.excgruz2 = false
                tsvetnaya_sborka.excgruz3 = false
                tsvetnaya_sborka.excgruz4 = false
                button12.visible = false
                button13.visible = false
                button14.visible = false
                button4.visible = false
                button5.visible = false
                button6.visible = false
                button8.visible = false
                button9.visible = false
                button10.visible = false
                button15.visible = false
                button16.visible = false
                button17.visible = false
                tsvetnaya_sborka.strelkaanimation = false
                tsvetnaya_sborka.animationdown = true
                tsvetnaya_sborka.animationup = false
                tsvetnaya_sborka.indicatorvalue = 0
                tsvetnaya_sborka.strelkaanimation = true
                varindicator = 5.806
            }
        }
    }

    Button {
        id: button3
        x: 88
        y: 539
        text: qsTr("Ативировать обратный ход")
        Connections {
            id: connections3
            target: tsvetnaya_sborka.data
            onClicked: {
                tsvetnaya_sborka.strelkaanimation = false
                tsvetnaya_sborka.animationdown = true
                tsvetnaya_sborka.animationup = false
                tsvetnaya_sborka.indicatorvalue = -8.806
                textInput.text = 97.6
                tsvetnaya_sborka.strelkaanimation = true
            }
        }
    }

    Button {
        id: button4
        x: 122
        y: 208
        visible: false
        text: qsTr("2")
        Connections {
            id: connections4
            target: tsvetnaya_sborka.data
            onClicked: {
                tsvetnaya_sborka.visiblegruz2 = true
                varindicator = 6*angleofind
            }
        }
    }

    Button {
        id: button5
        x: 122
        y: 265
        visible: false
        text: qsTr("3")
        Connections {
            id: connections5
            target: tsvetnaya_sborka.data
            onClicked: {
                tsvetnaya_sborka.visiblegruz3 = true
                tsvetnaya_sborka.visiblegruz2 = true
                varindicator = 8*angleofind
            }
        }
    }

    Button {
        id: button6
        x: 122
        y: 325
        visible: false
        text: qsTr("4")
        Connections {
            id: connections6
            target: tsvetnaya_sborka.data
            onClicked: {
                tsvetnaya_sborka.visiblegruz4 = true
                tsvetnaya_sborka.visiblegruz3 = true
                tsvetnaya_sborka.visiblegruz2 = true
                varindicator = 9*angleofind
            }
        }
    }

    Button {
        id: button7
        x: 718
        y: 155
        text: qsTr("Добавить эксцентрическую нагрузку")
        Connections {
            id: connections7
            target: tsvetnaya_sborka.data
            onClicked: {
                coefexc = 3.57
                button8.visible = true
                button9.visible = true
                button10.visible = true
                button15.visible = true
                button16.visible = true
                button17.visible = true
                tsvetnaya_sborka.shoulder = -58
                tsvetnaya_sborka.excgruz1 = true
                varindicator = 7*angleofind
            }
        }
    }

    Button {
        id: button8
        x: 711
        y: 208
        visible: false
        text: qsTr("2")
        Connections {
            id: connections8
            target: tsvetnaya_sborka.data
            onClicked: {
                tsvetnaya_sborka.excgruz2 = true
                varindicator = coefexc*varindicator

            }
        }
    }

    Button {
        id: button9
        x: 711
        y: 265
        visible: false
        text: qsTr("3")
        Connections {
            id: connections9
            target: tsvetnaya_sborka.data
            onClicked: {
                if (varindicator == 7*angleofind)
                {
                    coefgruzexc3 = 5.857
                }
                else if (varindicator == 9*angleofind)
                    coefgruzexc3 = 6.888889
                else if (varindicator == 7*angleofind*3.57)
                    coefgruzexc3 = 1.64
                else if (varindicator == 9*angleofind*3.5555556)
                    coefgruzexc3 = 1.9375

                tsvetnaya_sborka.excgruz3 = true
                tsvetnaya_sborka.excgruz2 = true
                varindicator = varindicator*coefgruzexc3
            }
        }
    }

    Button {
        id: button10
        x: 711
        y: 325
        visible: false
        text: qsTr("4")
        Connections {
            id: connections10
            target: tsvetnaya_sborka.data
            onClicked: {
                if (varindicator == 7*angleofind)
                {
                    coefgruzexc4 = 12.143
                }
                else if (varindicator == 9*angleofind)
                    coefgruzexc4 = 13.333333
                else if (varindicator == 7*angleofind*3.57)
                    coefgruzexc4 = 3.4
                else if (varindicator == 9*angleofind*3.5555556)
                    coefgruzexc4 = 3.75
                else if (varindicator == 7*angleofind*3.57*1.64)
                    coefgruzexc4 = 2.073
                else if (varindicator == 9*angleofind*3.5555556*1.9375)
                    coefgruzexc4 = 1.9355
                tsvetnaya_sborka.excgruz4 = true
                tsvetnaya_sborka.excgruz3 = true
                tsvetnaya_sborka.excgruz2 = true
                varindicator =  varindicator*coefgruzexc4
            }
        }
    }

    Button {
        id: button11
        x: 462
        y: 15
        text: qsTr("Градуировка")
        Connections {
            id: connections11
            target: tsvetnaya_sborka.data
            onClicked: {
                tsvetnaya_sborka.strelkaanimation = false
                button12.visible = true
                button13.visible = true
                button14.visible = true
                tsvetnaya_sborka.calibrationgruz1 = true
                tsvetnaya_sborka.indicatorvalue = 10*angleofind
                tsvetnaya_sborka.strelkaanimation = true
            }
        }
    }

    Button {
        id: button12
        x: 305
        y: 75
        visible: false
        text: qsTr("2")
        Connections {
            id: connections12
            target: tsvetnaya_sborka.data
            onClicked: {
                tsvetnaya_sborka.strelkaanimation = false
                tsvetnaya_sborka.calibrationgruz2 = true
                tsvetnaya_sborka.indicatorvalue = 19*angleofind
                tsvetnaya_sborka.strelkaanimation = true
            }
        }
    }

    Button {
        id: button13
        x: 462
        y: 75
        visible: false
        text: qsTr("3")
        Connections {
            id: connections13
            target: tsvetnaya_sborka.data
            onClicked: {
                tsvetnaya_sborka.strelkaanimation = false
                tsvetnaya_sborka.calibrationgruz3 = true
                tsvetnaya_sborka.calibrationgruz2 = true
                tsvetnaya_sborka.indicatorvalue = 28*angleofind
                tsvetnaya_sborka.strelkaanimation = true
            }
        }
    }

    Button {
        id: button14
        x: 621
        y: 75
        visible: false
        text: qsTr("4")
        Connections {
            id: connections14
            target: tsvetnaya_sborka.data
            onClicked: {
                tsvetnaya_sborka.strelkaanimation = false
                tsvetnaya_sborka.calibrationgruz4 = true
                tsvetnaya_sborka.calibrationgruz3 = true
                tsvetnaya_sborka.calibrationgruz2 = true
                tsvetnaya_sborka.indicatorvalue = 41*angleofind
                tsvetnaya_sborka.strelkaanimation = true
            }
        }
    }

    Button {
        id: button15
        x: 847
        y: 208
        visible: false
        text: qsTr("70")
        Connections {
            id: connections15
            target: tsvetnaya_sborka.data
            onClicked: {
                coefexc = 3.5555556
                tsvetnaya_sborka.excgruz4 = false
                tsvetnaya_sborka.excgruz3 = false
                tsvetnaya_sborka.excgruz2 = false
                tsvetnaya_sborka.shoulder = -66.8
                varindicator = 9*angleofind
            }
        }
    }

    Button {
        id: button16
        x: 847
        y: 265
        visible: false
        text: qsTr("80")
        Connections {
            id: connections16
            target: tsvetnaya_sborka.data
            onClicked: {
                coefexc = 3.83333
                tsvetnaya_sborka.excgruz4 = false
                tsvetnaya_sborka.excgruz3 = false
                tsvetnaya_sborka.excgruz2 = false
                tsvetnaya_sborka.shoulder = -77
                varindicator = 12*angleofind
            }
        }
    }

    Button {
        id: button17
        x: 847
        y: 325
        visible: false
        text: qsTr("90")
        Connections {
            id: connections17
            target: tsvetnaya_sborka.data
            onClicked: {
                coefexc = 3.0435
                tsvetnaya_sborka.excgruz4 = false
                tsvetnaya_sborka.excgruz3 = false
                tsvetnaya_sborka.excgruz2 = false
                tsvetnaya_sborka.shoulder = -87.4
                varindicator = 23*angleofind
            }
        }
    }

    Item {
        id: __materialLibrary__
        DefaultMaterial {
            id: defaultMaterial
            objectName: "Default Material"
            diffuseColor: "#4aee45"
        }
    }

    Text {
        id: text1
        x: 711
        y: 387
        width: 268
        height: 36
        color: "#ffffff"
        text: qsTr("Передвинуть камеру к:")
        font.pixelSize: 22
    }

    Button {
        id: button18
        x: 711
        y: 466
        text: qsTr("Общий вид")
        Connections {
            id: connections18
            target: sceneCamera.data
            onClicked: {
                button20.visible = false
                textInput.visible = false
                sceneCamera.x = -17.12
                sceneCamera.y = 51.246
                sceneCamera.z = 579.71136
                sceneCamera.rotation.x = 0
                sceneCamera.rotation.y = 0
                sceneCamera.rotation.z = 0
                sceneCamera.scale.x = 1
                sceneCamera.scale.y = 1
                sceneCamera.scale.z = 1
                sceneCamera.pivot.x = 0
                sceneCamera.pivot.y = 0
                sceneCamera.pivot.z = 0
            }
        }
    }

    Button {
        id: button19
        x: 847
        y: 466
        text: qsTr("Индикатор")
        Connections {
            id: connections19
            target: sceneCamera.data
            onClicked: {
                button20.visible = true
                sceneCamera.x = 55.531
                sceneCamera.y = 236.668
                sceneCamera.z = 136.21231
                sceneCamera.rotation.x = 0
                sceneCamera.rotation.y = 0
                sceneCamera.rotation.z = 0
                sceneCamera.scale.x = 1
                sceneCamera.scale.y = 1
                sceneCamera.scale.z = 1
                sceneCamera.pivot.x = 0
                sceneCamera.pivot.y = 0
                sceneCamera.pivot.z = 0
                textInput.x = 165
                textInput.y = 125
                textInput.font.pixelSize = 26
            }
        }
    }

    Text {
        id: text2
        x: 8
        y: 719
        width: 1008
        height: 30
        color: "#ffffff"
        text: qsTr("ВАЖНО! После каждого измерения нажимать кнопку Закончить, для сброса показаний с индикатора и удаления грузов")
        font.pixelSize: 18
        font.family: "Arial"
    }

    Button {
        id: button20
        x: 847
        y: 529
        visible: false
        text: qsTr("Показать значение")
        Connections{
            id: connections20
            target: textInput.data
            onClicked: {
                textInput.visible = true
            }
        }
    }






















}
