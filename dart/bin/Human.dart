
enum Team {kor, nor}

class Human{
  final String name;
  Human({ required this.name});

  void sayHello(){
    print("hi my name is $name in Human Class");
  }
}

class SoccerPlayer extends Human{
  final Team team;
  SoccerPlayer({required super.name, required this.team});

  // @override
  // void sayHello(){
  //   super.sayHello();
  // }
}

class Strong{
  final double level= 13.11;
}

class QuickRunner{
  void runQuick(){
    print("runnnnn");
  }
}

class BasketPlayer with Strong, QuickRunner{
  final String name = 'd';
}

void main(){
  var son = SoccerPlayer(name: 'son', team: Team.kor);
  son.sayHello();

  var curry = BasketPlayer();
  curry.runQuick();
}