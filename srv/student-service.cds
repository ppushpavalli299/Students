using {ec.masters as emp} from '../db/schema';

service StudentService @(requires: 'any') {
    @odata.draft.enabled
    entity Student        as projection on emp.Student;
    entity studentAddress as projection on emp.studentAddress;
    entity studentDetail  as projection on emp.studentDetail;
}