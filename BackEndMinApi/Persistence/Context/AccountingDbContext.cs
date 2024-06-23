using BackEndMinApi.Domain;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
namespace BackEndMinApi.Persistence.Context;
public class AccountingDbContext : IdentityDbContext<ApplicationUser>
{
    public AccountingDbContext(DbContextOptions<AccountingDbContext> options) : base(options)
    {

    }
    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        base.OnModelCreating(modelBuilder);
        //modelBuilder.HasDefaultSchema("Identity");

        //modelBuilder.Entity<ApplicationUser>(entity =>
        //{
        //    entity.ToTable(name: "User");
        //});

        //modelBuilder.Entity<IdentityRole>(entity =>
        //{
        //    entity.ToTable(name: "Role");
        //});
        //modelBuilder.Entity<IdentityUserRole<string>>(entity =>
        //{
        //    entity.ToTable("UserRoles");
        //});

        //modelBuilder.Entity<IdentityUserClaim<string>>(entity =>
        //{
        //    entity.ToTable("UserClaims");
        //});

        //modelBuilder.Entity<IdentityUserLogin<string>>(entity =>
        //{
        //    entity.ToTable("UserLogins");
        //});

        //modelBuilder.Entity<IdentityRoleClaim<string>>(entity =>
        //{
        //    entity.ToTable("RoleClaims");

        //});

        //modelBuilder.Entity<IdentityUserToken<string>>(entity =>
        //{
        //    entity.ToTable("UserTokens");
        //});

        modelBuilder.ApplyConfigurationsFromAssembly(typeof(AccountingDbContext).Assembly);
    }
    public DbSet<DataAccount> DataAccounts { get; set; }
    // public DbSet<DataBuktiTransaksi> DataBuktiTransaksi { get; set; }
    public DbSet<DataJournalDetails> DataJournalDetails { get; set; }
    public DbSet<DataJournalHeader> DataJournalHeaders { get; set; }
    // public DbSet<DataPeriode> DataPeriodes { get; set; }
    // public DbSet<DataSaldoAwal> DataSaldoAwals { get; set; }
    public DbSet<TipeJournal> TipeJournals { get; set; }


    public DbSet<UserProfile> UserProfile { get; set; }

    // public DbSet<ApplicationUser> ApplicationUser { get; set; }

}