class Visit {
  Visit(this.reservationInfo, this.history);

  final VisitReservation? reservationInfo;
  final List<VisitHistoryItem> history;
}

class VisitReservation {
  VisitReservation(this.userName, this.phone, this.visitDate);

  final String userName;
  final String phone;
  final DateTime visitDate;
}

class VisitHistoryItem {
  VisitHistoryItem(this.state, this.date);

  final int state;
  final DateTime date;
}