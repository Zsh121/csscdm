import { HomeType, HomeTypeModel } from '../types/HomeType'

@Component
struct HomeLieBiao {
  @State
  item:HomeTypeModel = new HomeTypeModel({} as HomeType)

  build() {
    Row({space:12}){
      Image(this.item.icon)
        .width(40)
        .height(40)
        .borderRadius(10)
      Text(this.item.notes === ''?this.item.name:this.item.notes)
        .fontSize(18)
        .fontColor('#333')
    }
    .backgroundColor(this.item.top?'#eee':Color.White)
    .width('100%')
    .height(70)
    .padding({
      left:20,
      right:20,
      top:5,
      bottom:5
    })
  }
}
export default HomeLieBiao