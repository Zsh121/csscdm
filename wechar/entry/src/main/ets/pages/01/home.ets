import HomeLieBiao from './components/HomeLieBiao'
import { HomeType, HomeTypeModel } from './types/HomeType'
import { promptAction } from '@kit.ArkUI'

@Entry
@Component
struct Home {
  @State
  homelist:HomeType[] = [
    new HomeTypeModel({
      id: 1,
      name: '妙可蓝多',
      notes: 'Aaa.小杨美女💒',
      icon: $r('app.media.111'),
      gender: '女',
      top: true
    }),
    new HomeTypeModel({
      id: 2,
      name: '诶嘿嘿',
      notes: '馒头',
      icon: $r('app.media.333'),
      gender: '女',
      top: false
    }),
    new HomeTypeModel({
      id: 3,
      name: 'aaa',
      notes: '妈',
      icon: $r('app.media.222'),
      gender: '女',
      top: true
    }),
    new HomeTypeModel({
      id: 4,
      name: 'Hello',
      notes: '黄狗',
      icon: $r('app.media.444'),
      gender: '男',
      top: false
    }),
    new HomeTypeModel({
      id: 5,
      name: '细水长流',
      notes: '建民孩',
      icon: $r('app.media.555'),
      gender: '男',
      top: false
    }),
    new HomeTypeModel({
      id: 6,
      name: '，',
      notes: '侯柯宇',
      icon: $r('app.media.666'),
      gender: '男',
      top: false
    }),
    new HomeTypeModel({
      id: 7,
      name: '深情宇智波',
      notes: '',
      icon: $r('app.media.777'),
      gender: '男',
      top: false
    }),
    new HomeTypeModel({
      id: 8,
      name: '在劫难逃',
      notes: '刘江浩',
      icon: $r('app.media.888'),
      gender: '男',
      top: false
    }),
    new HomeTypeModel({
      id: 9,
      name: 'idea',
      notes: '杨家林',
      icon: $r('app.media.999'),
      gender: '男',
      top: false
    }),
    new HomeTypeModel({
      id: 10,
      name: 'ㅤㅤ',
      notes: '赵博士',
      icon: $r('app.media.aaa'),
      gender: '男',
      top: false
    }),
    new HomeTypeModel({
      id: 11,
      name: '睡了',
      notes: '马子浩',
      icon: $r('app.media.bbb'),
      gender: '男',
      top: false
    }),
    new HomeTypeModel({
      id: 12,
      name: '好想吃胖',
      notes: '刘世航',
      icon: $r('app.media.ccc'),
      gender: '男',
      top: false
    }),
  ]


  build() {
    Column() {
      Row() {
        Search({ placeholder: '搜索' })
      }
      .width('100%')
      .padding({
        left: 20,
        right: 20,
      })

      Divider()
        .strokeWidth(3)
        .color('#eee')
      List() {
        ForEach(this.homelist, (item: HomeTypeModel, index) =>{
          if (item.top){
            ListItem(){
              HomeLieBiao({
                item: item
              })
            }
          }
        },(item: HomeTypeModel)=> item.id.toString())
        ForEach(this.homelist, (item: HomeTypeModel, index) =>{
          if (!item.top){
            ListItem(){
              HomeLieBiao({
                item: item
              })
            }
          }
        },(item: HomeTypeModel)=> item.id.toString())


      }
      .layoutWeight(1)
      .divider({ strokeWidth: 1, color: '#ddd' })
    }
    .width('100%')
    .height('100%')
  }

  CustomKeyboardBuilder(): CustomBuilder {
    throw new Error('Method not implemented.')
  }
}
export default Home