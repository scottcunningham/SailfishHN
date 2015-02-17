import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    property string storyBy
    property string storyUrl
    property string storyText
    property string storyTitle

    // To enable PullDownMenu, place our content in a SilicaFlickable
    SilicaFlickable {
        anchors.fill: parent

        id: listView

        PageHeader {
            title: storyTitle
            wrapMode: Text.WordWrap
        }

        PullDownMenu {
            /*
            MenuItem {
                text: qsTr("Open URL fullscreen")
                onClicked: {
                    pageStack.push(Qt.resolvedUrl("BrowserView.qml", {"displayUrl": storyUrl}))
                }
            }*/
            MenuItem {
                text: qsTr("Open URL in browser")
                onClicked: {
                    Qt.openUrlExternally(storyUrl)
                }
            }

        }

        Column {
            id: column
            width: page.width
            spacing: Theme.paddingLarge

            Label {
                width: parent.width
                anchors.topMargin: theme.paddingLarge
                anchors.leftMargin: Theme.paddingLarge
                anchors.rightMargin: Theme.paddingLarge
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                textFormat: Text.RichText
                text: storyTitle
                onLinkActivated: {
                    Qt.openUrlExternally(link)
                }
            }

            Label {
                width: parent.width
                anchors.topMargin: theme.paddingLarge
                anchors.leftMargin: Theme.paddingLarge
                anchors.rightMargin: Theme.paddingLarge
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                textFormat: Text.RichText
                text: storyText
                onLinkActivated: {
                    Qt.openUrlExternally(link)
                }
            }

            Label {
                width: parent.width
                anchors.topMargin: theme.paddingLarge
                anchors.leftMargin: Theme.paddingLarge
                anchors.rightMargin: Theme.paddingLarge
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                textFormat: Text.RichText
                text: storyUrl
                onLinkActivated: {
                    Qt.openUrlExternally(link)
                }
            }
        }
    }
}
