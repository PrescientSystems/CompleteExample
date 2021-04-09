using CompleteExample.Entities;
using NUnit.Framework;
using System.Configuration;
using System.Threading.Tasks;
using System.IO;
using Microsoft.Extensions.Configuration;
using Microsoft.EntityFrameworkCore;

namespace CompleteExample.Logic.Tests
{
    public class UnitTest1
    {
        private CompleteExampleDBContext _context;

        [OneTimeSetUp]
        public void RunBeforeAnyTests()
        {
            var config = new ConfigurationBuilder()
              .AddJsonFile("appsettings.json")
              .Build();

            var optionBuilder = new DbContextOptionsBuilder<CompleteExampleDBContext>();
            optionBuilder.UseSqlServer(config.GetConnectionString("SchoolContext"));
            _context = new CompleteExampleDBContext(optionBuilder.Options);

        }

        [SetUp]
        public void Setup()
        {
        }

        [Test]
        public async Task Test()
        {
        }
    }
}