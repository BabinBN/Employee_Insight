namespace employeedb;

@odata.draft.enabled
entity employee {
    key ID            : UUID @Core.Computed;
    @Common.Label:'Employee Id' @Mandatory
    employeeId        : String(20);
    @Common.Label:'Employee Name' @Mandatory
    employeeName      : String(100);
     @Common.Label:'Department' @Mandatory
    department_ID        : String(50);
    department : Association to Departments
        on department.ID = department_ID;
     @Common.Label:'Designation' @Mandatory
    designation       : String(50);
     @Common.Label:'Joining Date' @Mandatory
    joiningDate       : Date;
     @Common.Label:'Salary' @Mandatory
    salary            : Decimal(15,2);
     @Common.Label:'Bonus' @Mandatory
    bonus             : Decimal(15,2);
     @Common.Label:'Performance Rating' @Mandatory
    performanceRating : Integer;
     @Common.Label:'Attendance %'
    attendancePercent : Decimal(5,2);
     @Common.Label:'Overtime Hours' 
    overtimeHours     : Decimal(10,2);
     @Common.Label:'Leave Days Taken'
    leaveDaysTaken    : Integer;
     @Common.Label:'Work Mode' 
    workMode          : String(20);
     @Common.Label:'Location' 
    location          : String(50);
}

entity Departments {
    key ID   : String(10);
    name     : String(50);
}