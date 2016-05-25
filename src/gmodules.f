      MODULE GLOBAL
        PARAMETER(NIUNIT=100)
        integer,save,pointer::iunsat
        INTEGER,SAVE,POINTER ::NCOL,NROW,NLAY,NPER,NBOTM,NCNFBD,IVSD
        INTEGER, SAVE, POINTER ::ITMUNI,LENUNI,IXSEC,ITRSS,INBAS,IUNSTR
        INTEGER, SAVE, POINTER :: IDEALLOC_LPF,IDEALLOC_HY,ISYMFLG
        INTEGER, SAVE, POINTER :: ITRNSP,NEQS,NODES,NJA,NJAS,NJAG
        INTEGER, SAVE, POINTER :: IOUT,IPRCONN,IDSYMRD,ILAYCON4,IWADI,
     *    IWADICLN
        INTEGER, SAVE, POINTER :: INCLN,INGNC,INGNC2,INGNCn
        INTEGER, SAVE,POINTER ::IFREFM,MXNODLAY,NOCVCO,ICONCV,NOVFC
        DOUBLE PRECISION, SAVE, POINTER::WADIEPS
        INTEGER, SAVE,    DIMENSION(:),ALLOCATABLE  ::IUNIT(:)
        INTEGER, SAVE,    DIMENSION(:),ALLOCATABLE  ::IBOUND
        INTEGER, SAVE,    DIMENSION(:),POINTER  ::IA
        INTEGER, SAVE,    DIMENSION(:),POINTER  ::IAG
        REAL, DIMENSION(:),ALLOCATABLE  ::FLOWJA(:)
        INTEGER, POINTER, DIMENSION(:) :: IATMP
        INTEGER, POINTER :: NJATMP
        INTEGER, SAVE,    DIMENSION(:), POINTER  ::JA
        INTEGER, SAVE,    DIMENSION(:), POINTER ::JAFL          
        INTEGER, SAVE,    DIMENSION(:),ALLOCATABLE  ::JAS
        INTEGER, SAVE,    DIMENSION(:),ALLOCATABLE  ::ISYM
        INTEGER, SAVE,    DIMENSION(:),ALLOCATABLE  ::IVC
        DOUBLE PRECISION, SAVE, DIMENSION(:),ALLOCATABLE  ::HOLD
        DOUBLE PRECISION, SAVE, DIMENSION(:),ALLOCATABLE  ::HNEW
        DOUBLE PRECISION, SAVE, DIMENSION(:), ALLOCATABLE ::RHS
        DOUBLE PRECISION, SAVE, DIMENSION(:), POINTER ::AMAT
        DOUBLE PRECISION, SAVE, DIMENSION(:), ALLOCATABLE ::Sn,So
        DOUBLE PRECISION, SAVE, DIMENSION(:), ALLOCATABLE ::AKRC,AKR
        REAL, DIMENSION(:),ALLOCATABLE  ::DELR
        REAL, DIMENSION(:),ALLOCATABLE  ::DELC
        DOUBLE PRECISION, SAVE, DIMENSION(:),ALLOCATABLE  ::BOT
        DOUBLE PRECISION, SAVE, DIMENSION(:),ALLOCATABLE  ::TOP
        DOUBLE PRECISION, SAVE, DIMENSION(:),ALLOCATABLE  ::PGF
        REAL, SAVE, DIMENSION(:),ALLOCATABLE  ::AREA
        REAL, SAVE, DIMENSION(:),ALLOCATABLE  ::FAHL        
        REAL, SAVE, DIMENSION(:),ALLOCATABLE  ::CL1,CL2
        REAL, SAVE, DIMENSION(:),ALLOCATABLE  ::ARAD
        INTEGER, SAVE,    DIMENSION(:),    ALLOCATABLE  ::NODLAY
        INTEGER, DIMENSION(:),    ALLOCATABLE  ::LAYCBD
        INTEGER, SAVE,    DIMENSION(:),    ALLOCATABLE  ::LAYHDT
        INTEGER, SAVE,    DIMENSION(:),    ALLOCATABLE  ::LAYHDS
        REAL,    SAVE,    DIMENSION(:),    ALLOCATABLE  ::PERLEN
        INTEGER, SAVE,    DIMENSION(:),    ALLOCATABLE  ::NSTP
        REAL,    SAVE,    DIMENSION(:),    ALLOCATABLE  ::TSMULT
        INTEGER, SAVE,    DIMENSION(:),    ALLOCATABLE  ::ISSFLG
        REAL,    SAVE,    DIMENSION(:),ALLOCATABLE  ::BUFF
        REAL,    SAVE,    DIMENSION(:),ALLOCATABLE  ::STRT
        DOUBLE PRECISION,  SAVE,  ALLOCATABLE,   DIMENSION(:) ::HWADI
        DOUBLE PRECISION,  SAVE,  ALLOCATABLE,   DIMENSION(:) ::DWADI
      END MODULE GLOBAL
C
C -----------------------------------------------------------------------
      MODULE PARAMMODULE
C  Data definitions for Named Parameters
C  Explicitly declare all variables to enable subroutines that include
C  this file to use the IMPLICIT NONE statement.
        PARAMETER (MXPAR=999,MXCLST=1000,MXINST=1000)
        INTEGER,SAVE,POINTER ::ICLSUM,IPSUM,INAMLOC,NMLTAR,NZONAR,NPVAL
        REAL,          SAVE,    DIMENSION(:),    ALLOCATABLE ::B
        INTEGER,       SAVE,    DIMENSION(:),    ALLOCATABLE ::IACTIVE
        INTEGER,       SAVE,    DIMENSION(:,:),  ALLOCATABLE ::IPLOC
        INTEGER,       SAVE,    DIMENSION(:,:),  ALLOCATABLE ::IPCLST
        INTEGER,       SAVE,    DIMENSION(:,:,:),ALLOCATABLE ::IZON
        REAL,          SAVE,    DIMENSION(:,:,:),ALLOCATABLE ::RMLT
        CHARACTER(LEN=10),SAVE, DIMENSION(:),    ALLOCATABLE ::PARNAM
        CHARACTER(LEN=4), SAVE, DIMENSION(:),    ALLOCATABLE ::PARTYP
        CHARACTER(LEN=10),SAVE, DIMENSION(:),    ALLOCATABLE ::ZONNAM
        CHARACTER(LEN=10),SAVE, DIMENSION(:),    ALLOCATABLE ::MLTNAM
        CHARACTER(LEN=10),SAVE, DIMENSION(:),    ALLOCATABLE ::INAME
      END MODULE PARAMMODULE
C
C -----------------------------------------------------------------------
      MODULE GWFBASMODULE
        INTEGER, SAVE, POINTER  ::MSUM
        INTEGER, SAVE, POINTER  ::IHEDFM,IHEDUN,IDDNFM,IDDNUN,IBOUUN,
     *    ISPCFM,ISPCUN
        INTEGER, SAVE, POINTER  ::LBHDSV,LBDDSV,LBBOSV
        INTEGER, SAVE, POINTER  ::IBUDFL,ICBCFL,IHDDFL,ISPCFL,
     *   IAUXSV,IBDOPT
        INTEGER, SAVE, POINTER  ::IPRTIM,IPEROC,ITSOC,ICHFLG,IFRCNVG
        DOUBLE PRECISION,  SAVE, POINTER  ::DELT,PERTIM,TOTIM
        REAL,              SAVE, POINTER  ::HNOFLO
        CHARACTER(LEN=20), SAVE, POINTER   ::CHEDFM,CDDNFM,CBOUFM,CSPCFM
        INTEGER,           SAVE, DIMENSION(:,:), ALLOCATABLE ::IOFLG
        DOUBLE PRECISION,  SAVE, DIMENSION(:,:), ALLOCATABLE ::VBVL
        CHARACTER(LEN=16), SAVE, DIMENSION(:),   ALLOCATABLE ::VBNM
      END MODULE GWFBASMODULE
C
C -----------------------------------------------------------------------
      MODULE GWFBCFMODULE
       INTEGER,SAVE,POINTER::IBCFCB,IWDFLG,IWETIT,IHDWET,IKCFLAG,
     1  IKVFLAG
       REAL, SAVE, POINTER    ::WETFCT,HDRY
       INTEGER, SAVE,  ALLOCATABLE,   DIMENSION(:)     ::LAYCON
       INTEGER, SAVE,  ALLOCATABLE,   DIMENSION(:)     ::LAYAVG
       REAL, SAVE,     ALLOCATABLE,   DIMENSION(:) ::CV
       REAL, SAVE,     ALLOCATABLE,   DIMENSION(:) ::SC1
       REAL, SAVE,     ALLOCATABLE,   DIMENSION(:) ::SC2
       REAL, SAVE,     ALLOCATABLE,   DIMENSION(:) ::WETDRY
       REAL, SAVE,     ALLOCATABLE,   DIMENSION(:) ::alpha,beta,sr,brook
       INTEGER, SAVE,   ALLOCATABLE, DIMENSION(:)     ::LAYWET
C
        INTEGER, SAVE,   POINTER ::ISFAC,ITHFLG,IHANISO
        INTEGER, SAVE,   ALLOCATABLE, DIMENSION(:)     ::LAYTYP
        REAL,    SAVE,   ALLOCATABLE, DIMENSION(:)     ::CHANI
        INTEGER, SAVE,   ALLOCATABLE, DIMENSION(:)     ::LAYVKA
        INTEGER, SAVE,   ALLOCATABLE, DIMENSION(:)     ::LAYSTRT
        INTEGER, SAVE,   ALLOCATABLE, DIMENSION(:,:)   ::LAYFLG
        REAL,    SAVE,   ALLOCATABLE, DIMENSION(:) ::VKA
        REAL,    SAVE,   ALLOCATABLE, DIMENSION(:) ::VKCB
        REAL,    SAVE,   ALLOCATABLE, DIMENSION(:) ::HANI
        REAL,    SAVE,   ALLOCATABLE, DIMENSION(:) ::HK
        DOUBLE PRECISION,  SAVE,  ALLOCATABLE,  DIMENSION(:) :: HWADIGW 
        DOUBLE PRECISION,  SAVE,  ALLOCATABLE,  DIMENSION(:) :: DWADIGW
      END MODULE GWFBCFMODULE
C -------------------------------------------------------------------------------------
      MODULE CLN1MODULE
        INTEGER, SAVE,POINTER :: NCLN,ICLNCB,ICLNHD,ICLNDD,ICLNIB,
     1           NJA_CLN, NCLNNDS,NCLNGWC,NCONDUITYP,ICLNTIB
        INTEGER, SAVE,    DIMENSION(:),ALLOCATABLE  ::NNDCLN
        INTEGER, SAVE,    DIMENSION(:),ALLOCATABLE  ::IFLINCLN
        INTEGER, SAVE,    DIMENSION(:),ALLOCATABLE  ::ICCWADICLN
        INTEGER, SAVE,    DIMENSION(:),ALLOCATABLE  ::ICGWADICLN
        INTEGER, SAVE,    DIMENSION(:),ALLOCATABLE  ::CLNCON
        INTEGER, SAVE,    DIMENSION(:),POINTER  ::IA_CLN
        INTEGER, SAVE,    DIMENSION(:),POINTER  ::JA_CLN        
        REAL, SAVE,    DIMENSION(:,:),ALLOCATABLE  ::ACLNNDS
        REAL, SAVE,    DIMENSION(:,:),ALLOCATABLE  ::ACLNGWC
        REAL, SAVE,    DIMENSION(:,:),ALLOCATABLE  ::ACLNCOND
        DOUBLE PRECISION,  SAVE, ALLOCATABLE,  DIMENSION(:) ::HWADICC
        DOUBLE PRECISION,  SAVE, ALLOCATABLE,  DIMENSION(:) ::HWADICG
        DOUBLE PRECISION,  SAVE, ALLOCATABLE,  DIMENSION(:) ::DWADICC
        DOUBLE PRECISION,  SAVE, ALLOCATABLE,  DIMENSION(:) ::DWADICG
      END MODULE CLN1MODULE
C
C -------------------------------------------------------------------------------------
      MODULE SMSMODULE
      IMPLICIT NONE
      DOUBLE PRECISION, PARAMETER :: EPSILON = 1.0E-6
      DOUBLE PRECISION, PARAMETER :: CLOSEZERO = 1.0E-15      
      DOUBLE PRECISION, SAVE, POINTER :: Theta
      DOUBLE PRECISION, SAVE, POINTER :: Akappa, Gamma, Amomentum,
     *  Breduc, Btol,RES_LIM
      DOUBLE PRECISION, SAVE, DIMENSION(:), POINTER ::AMATFL
      DOUBLE PRECISION, SAVE, POINTER :: HCLOSE, HICLOSE,BIGCHOLD,BIGCH
      INTEGER, SAVE, POINTER :: ITER1,MXITER,LINMETH,NONMETH,Numtrack,
     *  IPRSMS,IBFLAG     
      DOUBLE PRECISION, DIMENSION(:),ALLOCATABLE  ::HTEMP
CSP - THIS IS AMAT      DOUBLE PRECISION, SAVE, DIMENSION(:), ALLOCATABLE :: A
CSP - THIS IS RHS      DOUBLE PRECISION, SAVE, DIMENSION(:), ALLOCATABLE :: B
CSP - THIS IS HNEW      DOUBLE PRECISION, SAVE, DIMENSION(:), ALLOCATABLE :: Hchange
      INTEGER, SAVE, DIMENSION(:,:), ALLOCATABLE ::  Lrch
      INTEGER, SAVE, DIMENSION(:), ALLOCATABLE ::  LrchL
      DOUBLE PRECISION, SAVE, DIMENSION(:), ALLOCATABLE :: Hncg
      DOUBLE PRECISION, SAVE, DIMENSION(:), ALLOCATABLE ::  HNCGL
      DOUBLE PRECISION, SAVE, DIMENSION(:), ALLOCATABLE :: DKDH,DKDHC
      DOUBLE PRECISION,SAVE,DIMENSION(:),ALLOCATABLE::DEold,Wsave,Hchold
      END MODULE SMSMODULE
C------------------------------------------------------------------

