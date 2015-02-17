import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    property string displayUrl

    SilicaWebView {
        url: displayUrl
    }
}
