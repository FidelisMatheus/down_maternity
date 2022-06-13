/*Center(
    child: GestureDetector(
      onTap: () {
        setState(() {
          exibir = !exibir;
        });
      },
      child: ExpansionWidget(title: widget.title),
    ),
  ),
),
exibir == true
    ? Container(
        padding: EdgeInsets.fromLTRB(20, 20, 30, 10),
        child: Center(
          child: Text(
            "",
            style: TextStyle(
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            // ignore: prefer_const_literals_to_create_immutables
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 2.0,
                offset: Offset(2.0, 5.0),
              )
            ],
            color: AppColors.yellowColor),
        width: Dimensions.width350,
        margin: EdgeInsets.only(top: 30),
      )
    : Container(
        child: Text('Vazio'),
      ),
ExpansionWidget(title: widget.title)*/