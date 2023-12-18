# EDIT:
#   Put here the shell lines needed to load R on the HPC.
load_r_sh <- c(
  "module purge all",
  "module load python-miniconda3",
  "source activate /projects/p31728/pythonenvs/env1",
  "module load R/4.2.3"
)

# EDIT:
#   your mail address to receive end of jobs notifications
#   the partition you use
#   the account to use (not on all system)
hpc_config <- list(
  "mail-user" = "tom.wolff@northwestern.edu",
  "partition" = "normal",
  "account"   = "p32153",
  "mail-type" = "FAIL"
)


#SBATCH --account=p32153  ## YOUR ACCOUNT pXXXX or bXXXX
#SBATCH --partition=normal  ### PARTITION (buyin, short, normal, etc)
#SBATCH --nodes=1 ## how many computers do you need
#SBATCH --ntasks-per-node=1 ## how many cpus or processors do you need on each computer
#SBATCH --time=08:00:00 ## how long does this need to run (remember different partitions have restrictions on this param)
#SBATCH --mem-per-cpu=1500M
#SBATCH --job-name=va99 ## When you run squeue -u NETID this is how you can identify the job
#SBATCH --output=va99_quest.out ## standard out and standard error goes to this file
#SBATCH --mail-type=ALL ## you can receive e-mail alerts from SLURM when your job begins and when your job finishes (complet$
#SBATCH --mail-user=srimer@northwestern.edu ## your email
