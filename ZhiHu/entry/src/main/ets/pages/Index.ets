import ZhCommentItem from './components/ZhCommentItem'
import ZhHeader from './components/ZhHeader'
import ZhReplyInput from './components/ZhReplyInput'
import { CommentItemTypeModel, CommentItemType } from './model/CommentModel'
import { window } from '@kit.ArkUI'
import { data } from '@kit.TelephonyKit'

@Entry
@Component
struct Index {
  @State
  commentList: CommentItemTypeModel[] = [
    new CommentItemTypeModel({
      id: 1,
      avatar: "https://picx.zhimg.com/027729d02bdf060e24973c3726fea9da_l.jpg?source=06d4cd63",
      title: "偏执狂-妄想家",
      content: '更何况还分到一个摩洛哥[惊喜]',
      time: "11-30",
      area: "海南",
      likeNum: 100,
      likeFlag: false
    }),
    new CommentItemTypeModel({
      id: 2,
      avatar: "https://picx.zhimg.com/027729d02bdf060e24973c3726fea9da_l.jpg?source=06d4cd63",
      title: "偏执狂-妄想家1",
      content: '更何况还分到一个摩洛哥[惊喜1]',
      time: "11-30",
      area: "山东",
      likeNum: 101,
      likeFlag: false
    }),
    new CommentItemTypeModel({
      id: 3,
      avatar: "https://picx.zhimg.com/027729d02bdf060e24973c3726fea9da_l.jpg?source=06d4cd63",
      title: "偏执狂-妄想家3",
      content: '更何况还分到一个摩洛哥[惊喜]',
      time: "11-30",
      area: "海南",
      likeNum: 100,
      likeFlag: false
    }),
    new CommentItemTypeModel({
      id: 4,
      avatar: "https://picx.zhimg.com/027729d02bdf060e24973c3726fea9da_l.jpg?source=06d4cd63",
      title: "偏执狂-妄想家4",
      content: '更何况还分到一个摩洛哥[惊喜]',
      time: "11-30",
      area: "海南",
      likeNum: 100,
      likeFlag: false
    }),
    new CommentItemTypeModel({
      id: 5,
      avatar: "https://picx.zhimg.com/027729d02bdf060e24973c3726fea9da_l.jpg?source=06d4cd63",
      title: "偏执狂-妄想家5",
      content: '更何况还分到一个摩洛哥[惊喜]',
      time: "11-30",
      area: "海南",
      likeNum: 100,
      likeFlag: false
    }),
    new CommentItemTypeModel({
      id: 6,
      avatar: "https://picx.zhimg.com/027729d02bdf060e24973c3726fea9da_l.jpg?source=06d4cd63",
      title: "偏执狂-妄想家6",
      content: '更何况还分到一个摩洛哥[惊喜]',
      time: "11-30",
      area: "海南",
      likeNum: 100,
      likeFlag: false
    })
  ]
  @State
  commentItem: CommentItemTypeModel = new CommentItemTypeModel({
    id: 99999,
    avatar: "https://picx.zhimg.com/027729d02bdf060e24973c3726fea9da_l.jpg?source=06d4cd63",
    title: "习近平给普洱民族团结誓词碑盟誓代表后代的回信",
    content: '普洱民族团结誓词碑盟誓代表后代：' +
      '你们好！来信收到了。1951年，包括你们先辈在内的各族代表立碑盟誓，郑重许下同心同德跟党走的誓言。70多年来，各族群众一心向党、团结奋斗，推动边疆地区经济社会发展取得历史性成就，书写了民族团结进步生动篇章。' +
      '中华民族是一个大家庭，五十六个民族就是相亲相爱的一家人。希望你们发扬先辈光荣传统，更好续写誓词碑故事，让民族团结的佳话代代相传。各族人民都要把中华民族共同体意识牢记心间、融入血液，共守祖国疆土、共建美好家园，让民族团结进步之花越开越绚烂。',
    time: "10-30",
    area: "北京",
    likeNum: 9999,
    likeFlag: false
  })


  changeLike(id: number) {
    const index = this.commentList.findIndex((item: CommentItemTypeModel) => {
      return item.id === id
    })
    if (index === -1) {
      if (this.commentItem.likeFlag) {
        this.commentItem.likeNum--
      } else {
        this.commentItem.likeNum++
      }
      this.commentItem.likeFlag = !this.commentItem.likeFlag
    } else {
      if (this.commentList[index].likeFlag) {
        this.commentList[index].likeNum--
      } else {
        this.commentList[index].likeNum++
      }
      this.commentList[index].likeFlag = !this.commentList[index].likeFlag
    }
  }

  getDate():string{
    const date:Date = new Date()
    return (date.getMonth()+1)+'月'+date.getDate()+'日'
  }

  publishContent(content:string){
    this.commentList.unshift(new CommentItemTypeModel({
      id:Math.random()+1,
      avatar:'https://k.sinaimg.cn/n/sinakd20117/0/w800h800/20240127/889b-4c8a7876ebe98e4d619cdaf43fceea7c.jpg/w700d1q75cms.jpg',
      title:'坏小孩',
      content: content,
      time: this.getDate(),
      area: "北京",
      likeNum: 0,
      likeFlag: false
    }))
    this.scroller.scrollEdge(Edge.Top)
  }


  scroller: Scroller = new Scroller()

  onPageShow(): void {
    window.getLastWindow(getContext(this), (err, data) => {
      if (!err.code) {
        data.setWindowLayoutFullScreen(true)
      }
    });
  }

  build() {
    Column() {
      ZhHeader()
      ZhCommentItem({
        item: this.commentItem,
        changeLike: (id: number) => {
          this.changeLike(id)
        }
      })
      Divider()
        .strokeWidth(5)
        .color('#ccc')
      Row() {
        Text(`回复 ${this.commentList.length}`)
      }
      .padding(12)
      .width('100%')

      List({ scroller: this.scroller }) {
        ForEach(this.commentList, (item: CommentItemTypeModel) => {
          ListItem() {
            ZhCommentItem({
              item: item,
              changeLike: (id: number) => {
                this.changeLike(id)
              }
            })
          }
        }, (item: CommentItemTypeModel) => item.id.toString())
      }
      .width('100%')
      .height('100%')
      .layoutWeight(1)

      ZhReplyInput({
        publishContent:(content:string) =>{
          this.publishContent(content)
        }
      })
    }
    .width('100%')
    .height('100%')
    .backgroundColor(Color.White)

  }
}