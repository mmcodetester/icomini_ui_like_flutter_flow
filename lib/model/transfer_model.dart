class Transfer {
  String? name;
  String? icon;
  String? ammount;
  String? date;
  String? transferType;
  Transfer({this.name, this.icon, this.ammount, this.date, this.transferType});
}

List<Transfer> transferList = [
  Transfer(
      name: 'shop.com payment',
      icon: 'Icons.arrow_upward',
      ammount: '300USD',
      date: '1-2-2022',
      transferType: 'Sent'),
  Transfer(
      name: 'shop.com payment',
      icon: 'Icons.arrow_downward',
      ammount: '300USD',
      date: '2-2-2022',
      transferType: 'Received'),
  Transfer(
      name: 'shop.com payment',
      icon: 'Icons.arrow_upward',
      ammount: '300USD',
      date: '3-2-2022',
      transferType: 'Sent'),
  Transfer(
      name: 'shop.com payment',
      icon: 'Icons.arrow_upward',
      ammount: '300USD',
      date: '4-2-2022',
      transferType: 'Sent'),
  Transfer(
      name: 'shop.com payment',
      icon: 'Icons.arrow_downward',
      ammount: '300USD',
      date: '5-2-2022',
      transferType: 'Received')
];
