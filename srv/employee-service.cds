using {employeedb} from '../db/employee-schema';


service employee @(path:'/workforce') {
    entity employeedt as projection on employeedb.employee;
    entity departments as projection on employeedb.Departments;

}

// annotate employee.employeedt with @(

//   Aggregation.ApplySupported: {
//     Transformations: [
//       'aggregate',
//       'groupby',
//       'filter',
//       'topcount',
//       'bottomcount'
//     ]
//   })