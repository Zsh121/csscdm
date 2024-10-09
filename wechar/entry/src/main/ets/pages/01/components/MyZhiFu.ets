@Preview
@Component
struct ZhiFu {
  build() {
    Row(){
      Image($r('app.media.zhifu'))
        .width(30)
        .aspectRatio(1)
      Text('服务')
        .fontSize(18)
        .layoutWeight(1)
        .margin({left:10})
      Image($r('app.media.right'))
        .width(30)
        .aspectRatio(1)
    }
    .justifyContent(FlexAlign.SpaceBetween)
    .backgroundColor(Color.White)
    .width('100%')
    .padding({
      left: 12,
      right: 12,
      top: 10,
      bottom: 10
    })
    .margin({bottom: 10})
  }

}
export default ZhiFu