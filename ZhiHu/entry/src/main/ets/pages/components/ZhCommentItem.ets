import { CommentItemType, CommentItemTypeModel } from '../model/CommentModel'

@Component
struct ZhCommentItem {
  @State
  item : CommentItemTypeModel = new CommentItemTypeModel({} as CommentItemType)

  changeLike:(id:number) => void = () =>{
  }

  build() {
      Row({space: 20}){
        Image(this.item.avatar)
          .width(40)
          .aspectRatio(1)
          .borderRadius(20)
        Column({ space: 12}){
          Text(this.item.title)
            .fontSize(18)
            .fontWeight(600)
          Text(this.item.content)
            .maxLines(3)
            .textOverflow({
              overflow: TextOverflow.Ellipsis
            })
            .fontSize(14)
          Row(){
            Text(`${this.item.time}·IP属地${this.item.area}`)
              .fontSize(12)
              .fontColor('#ddd')
            Row(){
              Image($r('app.media.like'))
                .width(14)
                .aspectRatio(1)
                .fillColor(this.item.likeFlag?'red':'#ddd')
              Text(this.item.likeNum.toString())
                .fontSize(14)
                .fontColor(this.item.likeFlag?'red':'#ddd')
            }
            .onClick(()=>{
              this.changeLike(this.item.id)
            })
          }
          .padding({
            left:6,
            right:6
          })
          .justifyContent(FlexAlign.SpaceBetween)
          .width('100%')
        }
        .alignItems(HorizontalAlign.Start)
        .layoutWeight(1)
      }
      .alignItems(VerticalAlign.Top)
      .width('100%')
      .padding(12)
  }
}
export default ZhCommentItem