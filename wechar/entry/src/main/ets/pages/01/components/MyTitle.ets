@Preview
@Component
struct Title {
  build() {
    Column(){
      Row(){
        Image($r('app.media.head'))
          .width(60)
          .height(60)
          .borderRadius(10)
          .margin({left: 20})
        Column(){
          Row(){
            Text('笨小孩')
              .fontSize(20)
              .fontWeight(700)
          }
          .offset({
            right:90
          })
          Row(){
            Text('微信号: zsh18530599082')
              .fontSize(16)
              .fontWeight(400)
              .fontColor('#aaa')
            Image($r('app.media.code'))
              .width(16)
              .height(16)
              .margin({left: 10})
            Image($r('app.media.right'))
              .width(20)
              .height(20)
              .margin({left: 15})
          }
          .margin({top:10})
        }
        .margin({left: 20,top:5})
      }
      .width('100%')
      .margin({top: 40})
      Row({space: 5}){
        Image($r('app.media.up'))
          .width(14)
          .height(14)
          .margin({left: 5})
        Text('状态')
          .fontSize(14)
          .fontColor('#aaa')

      }
      .width(60)
      .height(24)
      .border(
        {
          width: 1,
          color: '#aaa'
        }
      )
      .borderRadius(20)
      .margin({top: 15,left:-100})
    }
    .height(165)
    .width('100%')
    .backgroundColor(Color.White)
    .margin({bottom: 10})
  }

}
export default Title