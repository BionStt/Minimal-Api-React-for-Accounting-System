using BackEndMinApi.Persistence.Context;
using MediatR;

namespace BackEndMinApi.ServiceProcedure.DataAccounts.Commands.CreateDataAccount;

public class CreateDataAccountCommandHandler : IRequestHandler<CreateDataAccountCommand, Guid>
{
    private readonly AccountingDbContext _dbContext;

    public CreateDataAccountCommandHandler(AccountingDbContext dbContext)
    {
        _dbContext = dbContext;
    }

    public async Task<Guid> Handle(CreateDataAccountCommand request, CancellationToken cancellationToken)
    {
        var entity = Domain.DataAccount.CreateDataAccount(request.Parent, request.KodeAccount, request.Account, request.NormalPos, request.Kelompok);

        await _dbContext.DataAccounts.AddAsync(entity);
        await _dbContext.SaveChangesAsync(cancellationToken);

        return entity.DataAccountId;

    }
}
