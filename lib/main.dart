import 'package:flutter/material.dart';
import 'package:untitled1/bean/contract.dart';

void main() {
  runApp(new MaterialApp(home: new ContractList()));
}

class ContractList extends StatefulWidget {
  @override
  ContractListState createState() {
    // ignore: return_of_invalid_type
    return new ContractListState();
  }
}

class ContractListState extends State<ContractList> {
  Widget buildeListAdapter(BuildContext context, String item) {
    return new ListTile(
        isThreeLine: true,
        dense: false,
        leading: new CircleAvatar(
          child: new Text(item),
        ),
        title: new Text("子title的标题"),
        subtitle: new Text("子title的内容"),
        trailing: new Icon(
          Icons.arrow_right,
          color: Colors.green,
        ));
  }

  Widget buildContractTile(BuildContext context, ContractBean bean) {
    return new Card(
      child: new Column(
        children: <Widget>[
          new ListTile(
//              leading: new CircleAvatar(child: new Center(child: new Text(bean.name))),
              leading: new CircleAvatar(
                  child: new Center(
                      child: new Text(bean.name, textAlign: TextAlign.center))),
              title: new Text(bean.name),
              subtitle: new Text(bean.deptName)),
          new Divider(),
          new ListTile(
              leading: new Icon(
                Icons.phone,
                color: Colors.green,
              ),
              title: new Text(bean.phone)),
          new ListTile(
            leading: new Text("QQ"),
            title: new Text(bean.QQ),
          ),
          new ListTile(
            leading: new Text("微信"),
            title: new Text(bean.weChat),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<ContractBean> been = initList();
    Iterable<Widget> contractTile = been.map((ContractBean bean) {
      return buildContractTile(context, bean);
    });

    Iterable<Widget> listAdapter = been.map((ContractBean item) {
      return buildContractTile(context, item);
    });
    contractTile = ListTile.divideTiles(context: context, tiles: listAdapter);
    return new Scaffold(
        appBar: new AppBar(

        ),
        body: new Scrollbar(
            child: new ListView(children: contractTile.toList())));
  }

  List<ContractBean> initList() {
    List<ContractBean> been = <ContractBean>[];
    ContractBean bean = new ContractBean();
    bean.deptName = "111";
    bean.name = "2222";
    bean.phone = "12322";
    bean.QQ = "1222332";
    bean.weChat = "232323";
    been.add(bean);
    bean = new ContractBean();
    bean.deptName = "111";
    bean.name = "2222";
    bean.phone = "12322";
    bean.QQ = "1222332";
    bean.weChat = "232323";
    been.add(bean);
    bean = new ContractBean();
    bean.deptName = "111";
    bean.name = "2222";
    bean.phone = "12322";
    bean.QQ = "1222332";
    bean.weChat = "232323";
    been.add(bean);
    bean = new ContractBean();
    bean.deptName = "111";
    bean.name = "2222";
    bean.phone = "12322";
    bean.QQ = "1222332";
    bean.weChat = "232323";
    been.add(bean);
    bean = new ContractBean();
    bean.deptName = "111";
    bean.name = "2222";
    bean.phone = "12322";
    bean.QQ = "1222332";
    bean.weChat = "232323";
    been.add(bean);

    return been;
  }
}
