using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;

namespace CompleteExample.Entities
{
    public class CompleteExampleDBContext : DbContext
    {

        public CompleteExampleDBContext(DbContextOptions<CompleteExampleDBContext> options) : base(options) { }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {

            modelBuilder.Entity<Student>()
                .ToTable("Students", schema: "dbo");

            modelBuilder.Entity<Course>()
                .ToTable("Courses", schema: "dbo");

            modelBuilder.Entity<Enrollment>()
                .ToTable("Enrollment", schema: "dbo");

            modelBuilder.Entity<Instructor>()
                .ToTable("Instructors", schema: "dbo");

            base.OnModelCreating(modelBuilder);
        }

        public DbSet<Course> Courses { get; set; }
        public DbSet<Student> Students { get; set; }
        public DbSet<Enrollment> Enrollment { get; set; }
        public DbSet<Instructor> Instructors { get; set; }

    }
}
