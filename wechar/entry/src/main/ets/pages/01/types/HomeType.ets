export interface HomeType{
  id: number;
  name: string;
  notes:string
  icon: ResourceStr;
  gender: string;
  top: boolean;
}
@Observed
export class HomeTypeModel implements HomeType{
  id: number = 0;
  name: string = '';
  notes:string='';
  icon: ResourceStr ='';
  gender: string = '';
  top: boolean = false;

  constructor(item:HomeType) {
    this.id = item.id;
    this.name = item.name;
    this.notes = item.notes;
    this.icon = item.icon;
    this.gender = item.gender;
    this.top = item.top;
  }
}