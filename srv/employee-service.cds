using {WorkforceInsights} from '../db/employee-schema';


service EmployeeService  {
    @readonly
    entity employee as projection on WorkforceInsights.WorkforceInsights;

}

annotate EmployeeService.employee with @(

  Aggregation.ApplySupported: {
    Transformations: [
      'aggregate',
      'groupby',
      'filter',
      'topcount',
      'bottomcount'
    ]
  })