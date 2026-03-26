namespace WorkforceInsights;

entity WorkforceInsights {
    key ID            : UUID;
    employeeId        : String(20);
    employeeName      : String(100);
    department        : String(50);
    designation       : String(50);
    joiningDate       : Date;
    salary            : Decimal(15,2);
    bonus             : Decimal(15,2);
    performanceRating : Integer;
    attendancePercent : Decimal(5,2);
    overtimeHours     : Decimal(10,2);
    leaveDaysTaken    : Integer;
    workMode          : String(20);
    location          : String(50);
}