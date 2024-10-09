import Title from './components/MyTitle'
import ZhiFu from './components/MyZhiFu'
import LieBiao from './components/MyLieBiao'
import Setting from './components/MySetting'
@Entry
@Component
struct My{
  build() {
    List(){
      ListItem(){
        Column(){
          Title()
          ZhiFu()
          LieBiao()
          Setting()
        }
        .width('100%')
        .height('101%')
        .backgroundColor('#eee')
      }
    }
    .width('100%')
    .height('100%')

  }
}
export default My