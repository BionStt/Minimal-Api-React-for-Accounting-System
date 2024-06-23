using System.Data;

namespace BackEndMinApi.Persistence.Dapper;

public interface IDbConnectionFactory
{
    IDbConnection GetDbConnection();
}
