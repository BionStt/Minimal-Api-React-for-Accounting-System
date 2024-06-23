using MediatR;

namespace BackEndMinApi.ServiceProcedure.DataAccounts.Commands.CreateDataAccountDapper;
public class CreateDataAccountDapperCommand : IRequest<Guid>
{
    public string Parent { get; set; }
    public string KodeAccount { get; set; }
    public string Account { get; set; }
    public int? NormalPos { get; set; }
    public string Kelompok { get; set; }
}