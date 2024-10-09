@Component
struct ZhReplyInput {
  @State replytext : string = ''
  publishContent:(content:string) => void = () =>{
  }
  build() {
    Row(){
      TextInput({ placeholder: '回复~',text:$$this.replytext})
        .layoutWeight(1)
      Button('发布')
        .backgroundColor('#fff')
        .fontSize(14)
        .fontColor('#ff68bee7')
        .width(40)
        .height(30)
        .padding(6)
        .borderRadius(15)
        .onClick(()=>{
          this.publishContent(this.replytext)
          this.replytext = ''
        })
    }
    .padding({
      left:12,
      right:12,
      top:6,
      bottom:6
    })
    .width('100%')
  }
}
export default ZhReplyInput