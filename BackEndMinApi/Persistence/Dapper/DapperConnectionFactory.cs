
using System.Data;
using Microsoft.Data.SqlClient;
namespace BackEndMinApi.Persistence.Dapper;

public class DapperConnectionFactory : IDbConnectionFactory
{
    private readonly string _connectionString;

    public DapperConnectionFactory(string connectionString)
    {
        _connectionString = connectionString;
    }

    public IDbConnection GetDbConnection()
    {
        var conn = new SqlConnection(_connectionString);
        conn.Open();
        return conn;
    }



}
