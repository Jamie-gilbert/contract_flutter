import 'package:flutter/material.dart';
import 'package:untitled1/bean/contract.dart';
import 'package:untitled1/net/net_untils.dart';

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
  TextEditingController _controller = new TextEditingController();

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

  //获取输入的查询条件

  void getValue(String value) {
    print(load("https://www.baidu.com/").toString());
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
            title: new Row(children: <Widget>[
          new Expanded(
              child: new TextField(
            decoration: new InputDecoration(labelText: "搜索"),
            onSubmitted: getValue,
            controller: _controller,
          )),
          new Expanded(
              child: new IconButton(
            icon: new Icon(Icons.search),
            onPressed: clickSearch,
          ))
        ])),
        body: new Scrollbar(
            child: new ListView(children: contractTile.toList())));
  }

  void clickSearch() {
    //使键盘消失
    FocusScope.of(this.context).requestFocus(new FocusNode());
    getValue(_controller.text);
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
