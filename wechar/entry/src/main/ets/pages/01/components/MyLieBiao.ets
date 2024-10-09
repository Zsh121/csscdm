interface BiaoType{
  name: string;
  icon: ResourceStr;
}


@Preview
@Component
struct LieBiao {
  @State BiaoList: BiaoType[] = [
    {
      name: '收藏',
      icon: $r('app.media.collect')
    },
    {
      name: '朋友圈',
      icon: $r('app.media.picture')
    },
    {
      name: '卡包',
      icon: $r('app.media.wrap')
    },
    {
      name: '表情',
      icon: $r('app.media.expression')
    },

  ]

  build() {
    Grid(){
      ForEach(this.BiaoList, (item:BiaoType, index) =>{
        GridItem(){
          Row(){
            Image(item.icon)
              .width(30)
              .aspectRatio(1)
            Text(item.name)
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
        }
      })

    }
    .margin({bottom: 10})
  }
}
export default LieBiao
