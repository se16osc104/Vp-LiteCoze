//anthor:guchangrong
import VPlayApps 1.0
import QtQuick 2.0

ListPage {
    id: moodpage
    title: "我的心情簿"
    //添加心情的按钮
    rightBarItem: IconButtonBarItem {
        icon: IconType.plus
        onClicked: InputDialog.inputTextMultiLine(app,
                                                  qsTr("发表心情"),
                                                  qsTr("说说心情..."),
                                                  function(ok, text) {
                                                      if(ok) DataModel.addTweet(text)
                                                  })
    }
//    //处理心情列表
//    delegate: SimpleRow {
//        image.radius: image.height
//        image.fillMode: Image.PreserveAspectCrop
//        autoSizeImage: true
//        style.showDisclosure: false
////        imageMaxSize: dp(48)
//        detailTextItem.maximumLineCount: 1
//        detailTextItem.elide: Text.ElideRight

//        onSelected: {
//            navigationStack.push(detailPageComponent, {
//                                     person: item.text,
//                                     // newMsgs: [{text: item.detailText, me: true}]
//                                     groupid: item.idText
//                                 })
//        }
//    }

//    Component {
//        id: detailPageComponent

//       Moodpage {
//           id: mooodpage
//       }
//    }

//    model: {
//        var model = mymood
//        return model
//    }
//    //设置时间
//    Timer {
//      // Fake loading of new tweets in background
//      id: loadNewTimer
//      interval: 5000
//      onTriggered: {
//        DataModel.addTweet("Lorem Ipsum.")
//      }
//    }

//    Timer {
//      // Fake loading of older tweets in background
//      id: loadOldTimer
//      interval: 2000
//      onTriggered: {
//        var pos = listView.getScrollPosition()
//        listView.restoreScrollPosition(pos)
//      }
//    }

}
