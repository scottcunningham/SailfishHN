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

        PullDownMenu {
            MenuItem {
                text: qsTr("Open URL in browser")
                onClicked: {
                    Qt.openUrlExternally(storyUrl)
                }
            }
        }

        Column {
            id: column
            width: parent.width
            spacing: Theme.paddingLarge

            PageHeader { title: "Story" }

            Label {
                width: parent.width
                anchors.topMargin: Theme.paddingLarge
                anchors.leftMargin: Theme.paddingLarge
                anchors.rightMargin: Theme.paddingLarge
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                textFormat: Text.RichText
                text: storyTitle
            }
            SectionHeader { text: "Story title" }

            Label {
                width: parent.width
                anchors.topMargin: Theme.paddingLarge
                anchors.leftMargin: Theme.paddingLarge
                anchors.rightMargin: Theme.paddingLarge
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                textFormat: Text.RichText
                text: storyUrl
            }
            SectionHeader { text: "Source URL" }

            Label {
                width: parent.width
                anchors.topMargin: Theme.paddingLarge
                anchors.leftMargin: Theme.paddingLarge
                anchors.rightMargin: Theme.paddingLarge
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                textFormat: Text.RichText
                text: storyText
            }
            SectionHeader { text: if (storyText != "") { "Story text"} else { "" } }

        }
    }
}
