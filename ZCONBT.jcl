//ZCONBT   JOB ,NOTIFY=&SYSUID,CLASS=A,REGION=0M
// EXPORT SYMLIST=(ZCONBT,ZPROP,BASEDIR,OUTDIR,OUTFILE)
// SET ZCONBT='/u/ibmuser/zconbt/bin/zconbt.zos'
// SET ZPROP='/tmp/apirequester.properties'
// SET BASEDIR='/var/zosconnect/servers/defaultServer/'
// SET OUTDIR='resources/zosconnect/apiRequesters/'
// SET OUTFILE='catalog.ara'
//COPYPROP EXEC PGM=IKJEFT01
//IN DD *
apiDescriptionFile=/u/ibmuser/apir/healthcheck.json
dataStructuresLocation=/u/ibmuser/apir/copybook
apiInfoFileLocation=/u/ibmuser/apir/copybook
connectionRef=RemoteAPIconn
logFileDirectory=/u/ibmuser/apir/
language=COBOL
/*
//OUT DD PATH='&ZPROP.',
//       PATHDISP=(KEEP,DELETE),
//       PATHOPTS=(OWRONLY,OCREAT),PATHMODE=(SIRUSR,SIWUSR)
//SYSTSPRT DD SYSOUT=*
//SYSTSIN DD *
OCOPY INDD(IN) OUTDD(OUT) PATHOPTS(USE)
/*
//PREPPROP   EXEC PGM=BPXBATCH,PARMDD=DDPARM
//DDPARM   DD *,SYMBOLS=JCLONLY
sh iconv -f IBM-1047 -t UTF8 &ZPROP. > &ZPROP..utf8
/*
//ZCON     EXEC PGM=BPXBATCH,REGION=0M,MEMLIMIT=4G,
//        PARMDD=ZCPARM
//STDOUT   DD   SYSOUT=*
//STDERR   DD   SYSOUT=*
//STDIN    DD   DUMMY
//SYSPRINT DD   SYSOUT=*
//STDENV   DD   *
export PATH=/bin:/usr/lpp/java/current_64/bin
export JAVA_HOME=/usr/lpp/java/J8.0_64
//ZCPARM  DD *,SYMBOLS=JCLONLY
sh &ZCONBT. -p &ZPROP..utf8 -f &BASEDIR.&OUTDIR.&OUTFILE.
/*