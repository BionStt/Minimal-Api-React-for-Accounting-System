using BackEndMinApi.Domain;
using Microsoft.EntityFrameworkCore;

using Microsoft.EntityFrameworkCore.Metadata.Builders;
namespace BackEndMinApi.Persistence.Configurations;

public class DataJournalDetailsConfiguration : IEntityTypeConfiguration<DataJournalDetails>
{
    public void Configure(EntityTypeBuilder<DataJournalDetails> builder)
    {
        builder.ToTable("DataJournal");

        // builder.Property(e=>e.Id).ForSqlServerUseSequenceHiLo("AccountingDataJournal_hilo").IsRequired();
        builder.Property((e => e.NoUrutId)).ValueGeneratedOnAdd().IsRequired();
        builder.Property(e => e.DataJournalHeaderId);
        builder.Property(e => e.DataAccountId);
        builder.Property(e => e.Debit).HasColumnName("Debit").HasColumnType("money");
        builder.Property(e => e.Kredit).HasColumnName("Kredit").HasColumnType("money");
        builder.Property(e => e.Keterangan).HasColumnName("Keterangan").HasMaxLength(400).IsUnicode(false);
        builder.Property(e => e.SaldoAwal).HasMaxLength(1);

    }

}
