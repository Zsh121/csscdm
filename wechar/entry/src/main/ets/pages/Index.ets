import Home from './01/home';
import My from './01/my'


interface TabItem {
  name: string;
  title: string;
  icon: ResourceStr;
  selectedIcon?: ResourceStr;
}


@Entry
@Component
struct Index {
  @State list: TabItem[] = [
    {
      name: 'home',
      title: '微信',
      icon: $r('app.media.home'),
      selectedIcon: $r('app.media.home1')
    },
    {
      name: 'connect',
      title: '通讯录',
      icon: $r("app.media.connect"),
      selectedIcon: $r("app.media.connect1")
    },
    {
      name: 'find',
      title: '发现',
      icon: $r('app.media.find'),
      selectedIcon: $r('app.media.find1')
    },
    {
      name: 'my',
      title: '我',
      icon: $r('app.media.my'),
      selectedIcon: $r('app.media.my1')
    },
  ]
  @State currentIndex: number = 0

  @Builder
  TabItem(item: TabItem) {
    Column() {
      Image(item.name === this.list[this.currentIndex].name ? item.selectedIcon : item.icon)
        .width(30)
        .height(30)
        .margin({ top: 10 })
      Text(item.title)
        .fontSize(12)
        .margin({ top: 5 })
        .fontColor(item.name === this.list[this.currentIndex].name ? '#3fda49' : '#bfbfbf')
    }
  }

  build() {
    Tabs({ index: $$this.currentIndex }) {
      ForEach(this.list, (item: TabItem, index) => {
        TabContent() {
          if (item.name == 'home') {
            Home()
          } else if (item.name == 'connect') {
            Text('通讯录')
          } else if (item.name == 'find') {
            Text('发现')
          } else if (item.name == 'my') {
            My()
          }
        }.tabBar(this.TabItem(item))
      }, (item: TabItem) => item.name)
    }.barPosition(BarPosition.End)
    .width('100%')
    .backgroundColor('#fffafafa')
  }
}