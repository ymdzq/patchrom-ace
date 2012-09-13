.class public Lcom/android/internal/telephony/gsm/SIMRecords;
.super Lcom/android/internal/telephony/IccRecords;
.source "SIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SIMRecords$1;,
        Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;
    }
.end annotation


# static fields
.field static final CFF_LINE1_MASK:I = 0xf

.field static final CFF_LINE1_RESET:I = 0xf0

.field static final CFF_UNCONDITIONAL_ACTIVE:I = 0xa

.field static final CFF_UNCONDITIONAL_DEACTIVE:I = 0x5

.field private static final CPHS_SST_MBN_ENABLED:I = 0x30

.field private static final CPHS_SST_MBN_MASK:I = 0x30

.field private static final CRASH_RIL:Z = false

.field protected static final CSIM_EVENT_BASE:I = 0x64

.field protected static final DBG:Z = true

.field private static final EVENT_AUTO_SELECT_DONE:I = 0x6a

.field private static final EVENT_CHECK_FDN:I = 0x6f

.field private static final EVENT_DELAY_CFU_QUERY:I = 0x6c

.field protected static final EVENT_GET_AD_DONE:I = 0x9

.field private static final EVENT_GET_ALL_SMS_DONE:I = 0x12

.field private static final EVENT_GET_CB_CHANNEL_DONE:I = 0x23

.field private static final EVENT_GET_CFF_DONE:I = 0x18

.field private static final EVENT_GET_CFIS_DONE:I = 0x20

.field private static final EVENT_GET_CPHS_MAILBOX_DONE:I = 0xb

.field private static final EVENT_GET_CSP_CPHS_DONE:I = 0x21

.field private static final EVENT_GET_CSP_DONE:I = 0x25

.field private static final EVENT_GET_EFLP_DONE:I = 0x68

.field private static final EVENT_GET_EF_MSISDN_DONE:I = 0x73

.field private static final EVENT_GET_FPLMN_DONE:I = 0x6b

.field private static final EVENT_GET_GID1_DONE:I = 0x71

.field private static final EVENT_GET_HPLMNwAcT_DONE:I = 0x74

.field private static final EVENT_GET_HTC_SIM_TYPES:I = 0x26

.field protected static final EVENT_GET_ICCID_DONE:I = 0x4

.field protected static final EVENT_GET_IMSI_DONE:I = 0x3

.field private static final EVENT_GET_INFO_CPHS_DONE:I = 0x1a

.field private static final EVENT_GET_MBDN_DONE:I = 0x6

.field private static final EVENT_GET_MBI_DONE:I = 0x5

.field protected static final EVENT_GET_MSISDN_DONE:I = 0xa

.field private static final EVENT_GET_MWIS_DONE:I = 0x7

.field private static final EVENT_GET_O2_PERSO_DONE:I = 0x72

.field private static final EVENT_GET_PNN_DONE:I = 0xf

.field private static final EVENT_GET_SIM_TYPES_DONE:I = 0x65

.field private static final EVENT_GET_SMS_DONE:I = 0x16

.field private static final EVENT_GET_SPDI_DONE:I = 0xd

.field private static final EVENT_GET_SPN_DONE:I = 0xc

.field protected static final EVENT_GET_SST_DONE:I = 0x11

.field private static final EVENT_GET_SUBSIDY_LOCK_DONE:I = 0x66

.field private static final EVENT_GET_UIMID_DONE:I = 0x27

.field private static final EVENT_GET_VOICE_MAIL_INDICATOR_CPHS_DONE:I = 0x8

.field private static final EVENT_HTC_EXTENDED_OFFSET:I = 0x64

.field private static final EVENT_MARK_SMS_READ_DONE:I = 0x13

.field private static final EVENT_PBK_READY:I = 0x6d

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x2

.field private static final EVENT_RETRY_MSISDN_QUERY:I = 0x6e

.field private static final EVENT_SET_CB_CHANNEL_DONE:I = 0x24

.field private static final EVENT_SET_CPHS_MAILBOX_DONE:I = 0x19

.field private static final EVENT_SET_EFLP_DONE:I = 0x69

.field private static final EVENT_SET_MBDN_DONE:I = 0x14

.field private static final EVENT_SET_MSISDN_DONE:I = 0x1e

.field private static final EVENT_SET_SUBSIDY_LOCK_DONE:I = 0x67

.field private static final EVENT_SIM_READY:I = 0x1

.field private static final EVENT_SIM_REFRESH:I = 0x1f

.field private static final EVENT_SIM_SWAP_STATUS:I = 0x70

.field private static final EVENT_SMS_ON_SIM:I = 0x15

.field private static final EVENT_UPDATE_DONE:I = 0xe

.field private static final H3G_NETWORKLIST:Ljava/util/ArrayList; = null

.field private static final HPLMNwACT_RECORD_SIZE:I = 0x5

.field protected static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static final MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String; = null

.field private static final O2_UK_MCCMNC:Ljava/lang/String; = "23410"

.field private static final ORANGE_NETWORKLIST:Ljava/util/ArrayList; = null

.field static final SPN_RULE_SHOW_PLMN:I = 0x2

.field static final SPN_RULE_SHOW_SPN:I = 0x1

.field static final TAG_FULL_NETWORK_NAME:I = 0x43

.field static final TAG_SHORT_NETWORK_NAME:I = 0x45

.field static final TAG_SPDI:I = 0xa3

.field static final TAG_SPDI_PLMN_LIST:I = 0x80

.field private static final TIMEZONE_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"

.field private static final UST_SST_RECORD_SIZE:I = 0xb

.field private static sPatternAircel:Ljava/util/regex/Pattern;

.field private static sPatternTataDoCoMo:Ljava/util/regex/Pattern;

.field private static sPatternVideocon:Ljava/util/regex/Pattern;


# instance fields
.field private approval:Z

.field private callForwardingEnabled:Z

.field cfuQueryCompleted:Z

.field dataCallForwardingEnabled:Z

.field disableCfuIcon:Z

.field efCPHS_MWI:[B

.field efMWIS:[B

.field private imsi:Ljava/lang/String;

.field public mCFUNumber:Ljava/lang/String;

.field private mCphsInfo:[B

.field mCspPlmnEnabled:Z

.field public mDataCFUNumber:Ljava/lang/String;

.field mEFO2Perso:[B

.field mEfCff:[B

.field mEfCfis:[B

.field mEfCsp:[B

.field mFPLMNList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFdnCapability:Z

.field mGID1:Ljava/lang/String;

.field public mIsFileUpdated:Z

.field private mIsMFG:Z

.field private mMSISDNRetry:I

.field mMsisdnRecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field mNetworkSelectionEnabled:Z

.field mOperatorNameSource:I

.field private mSimSmsRecordIndexes:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

.field mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

.field private mValidSPN:Z

.field mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

.field mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

.field private mloadCompleted:Z

.field private mloadEFCount:I

.field pnnHomeName:Ljava/lang/String;

.field spdiNetworks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field spnDisplayCondition:I

.field private spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 212
    const-string v0, "^4050[2-4]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gsm/SIMRecords;->sPatternTataDoCoMo:Ljava/util/regex/Pattern;

    .line 214
    const-string v0, "^4058[0-1]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gsm/SIMRecords;->sPatternAircel:Ljava/util/regex/Pattern;

    .line 216
    const-string v0, "^4058[2-4]|^40593"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gsm/SIMRecords;->sPatternVideocon:Ljava/util/regex/Pattern;

    .line 363
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "23433"

    aput-object v2, v1, v4

    const-string v2, "20801"

    aput-object v2, v1, v5

    const-string v2, "21403"

    aput-object v2, v1, v6

    const-string v2, "22803"

    aput-object v2, v1, v7

    const-string v2, "26003"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "26803"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SIMRecords;->ORANGE_NETWORKLIST:Ljava/util/ArrayList;

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "23420"

    aput-object v2, v1, v4

    const-string v2, "27205"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SIMRecords;->H3G_NETWORKLIST:Ljava/util/ArrayList;

    .line 388
    const/16 v0, 0x6b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "405025"

    aput-object v1, v0, v4

    const-string v1, "405026"

    aput-object v1, v0, v5

    const-string v1, "405027"

    aput-object v1, v0, v6

    const-string v1, "405028"

    aput-object v1, v0, v7

    const-string v1, "405029"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "405030"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "405031"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "405032"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "405033"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "405034"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "405035"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "405036"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "405037"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "405038"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "405039"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "405040"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "405041"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "405042"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "405043"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "405044"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "405045"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "405046"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "405047"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "405750"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "405751"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "405752"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "405753"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "405754"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "405755"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "405756"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "405799"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "405800"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "405801"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "405802"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "405803"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "405804"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "405805"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "405806"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "405807"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "405808"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "405809"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "405810"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "405811"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "405812"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "405813"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "405814"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "405815"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "405816"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "405817"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "405818"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "405819"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "405820"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "405821"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "405822"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "405823"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "405824"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "405825"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "405826"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "405827"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "405828"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "405829"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "405830"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "405831"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "405832"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "405833"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "405834"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "405835"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "405836"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "405837"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "405838"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "405839"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "405840"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "405841"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "405842"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "405843"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "405844"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "405845"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "405846"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "405847"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "405848"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "405849"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "405850"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "405851"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "405852"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "405853"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "405875"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "405876"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "405877"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "405878"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "405879"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "405880"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "405881"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "405882"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "405883"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "405884"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "405885"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "405886"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "405908"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "405909"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "405910"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "405911"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "405925"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "405926"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "405927"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "405928"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "405929"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "405932"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 3
    .parameter "p"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 408
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccRecords;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 152
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    .line 153
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    .line 155
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    .line 156
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    .line 157
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    .line 158
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    .line 161
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mGID1:Ljava/lang/String;

    .line 165
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEFO2Perso:[B

    .line 169
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCsp:[B

    .line 170
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mNetworkSelectionEnabled:Z

    .line 178
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFPLMNList:Ljava/util/ArrayList;

    .line 194
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mOperatorNameSource:I

    .line 197
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    .line 199
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnHomeName:Ljava/lang/String;

    .line 205
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mValidSPN:Z

    .line 341
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimSmsRecordIndexes:Ljava/util/LinkedList;

    .line 358
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mIsFileUpdated:Z

    .line 382
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mMsisdnRecordList:Ljava/util/ArrayList;

    .line 409
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->SIMRecords_init(Lcom/android/internal/telephony/PhoneBase;)V

    .line 411
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V
    .locals 3
    .parameter "p"
    .parameter "iccHandler"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 414
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccRecords;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 152
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    .line 153
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    .line 155
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    .line 156
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    .line 157
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    .line 158
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    .line 161
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mGID1:Ljava/lang/String;

    .line 165
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEFO2Perso:[B

    .line 169
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCsp:[B

    .line 170
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mNetworkSelectionEnabled:Z

    .line 178
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFPLMNList:Ljava/util/ArrayList;

    .line 194
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mOperatorNameSource:I

    .line 197
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    .line 199
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnHomeName:Ljava/lang/String;

    .line 205
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mValidSPN:Z

    .line 341
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimSmsRecordIndexes:Ljava/util/LinkedList;

    .line 358
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mIsFileUpdated:Z

    .line 382
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mMsisdnRecordList:Ljava/util/ArrayList;

    .line 415
    iput-object p2, p0, Lcom/android/internal/telephony/IccRecords;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 416
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->SIMRecords_init(Lcom/android/internal/telephony/PhoneBase;)V

    .line 417
    return-void
.end method

.method private SIMRecords_init(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 6
    .parameter "p"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 420
    new-instance v1, Lcom/android/internal/telephony/AdnRecordCache;

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/telephony/AdnRecordCache;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    new-instance v1, Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    new-instance v1, Lcom/android/internal/telephony/gsm/MiuiSpnOverrideImpl;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/MiuiSpnOverrideImpl;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    iput-boolean v5, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    iput v5, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x1

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x2

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x15

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsOnSim(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x1f

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x6d

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerPBReadyNotify(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x70

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMSWAPStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v2, "gsm.sim.types"

    invoke-virtual {v1, v2, v4}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRadioOffOrNotAvailable()V

    const-string v1, "ro.cid"

    const-string v2, "11111111"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, cid:Ljava/lang/String;
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const-string v1, "T-MOB101"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "HTC__102"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 457
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v2, "26201"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V

    .line 466
    :cond_1
    :goto_0
    const-string v1, "factory2"

    const-string v2, "ro.bootmode"

    const-string v3, "normal"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mIsMFG:Z

    .line 471
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x50

    if-ne v1, v2, :cond_2

    .line 472
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mValidSPN:Z

    .line 476
    :cond_2
    iput-boolean v5, p0, Lcom/android/internal/telephony/IccRecords;->mIsRecordsLoad:Z

    .line 478
    return-void

    .line 458
    :cond_3
    const-string v1, "VODAP102"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 460
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v2, "26202"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V

    goto :goto_0

    .line 461
    :cond_4
    const-string v1, "O2___102"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 463
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v2, "26207"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private dropSimPbkEntries()V
    .locals 2

    .prologue
    .line 3717
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->dropSimPbkEntries(Ljava/lang/String;I)V

    .line 3718
    return-void
.end method

.method private dropSimPbkEntries(Ljava/lang/String;I)V
    .locals 4
    .parameter "notifyAction"
    .parameter "extra"

    .prologue
    .line 3731
    :try_start_0
    const-string v3, "simphonebook"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    .line 3733
    .local v2, simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v2, :cond_1

    .line 3734
    const-string v3, "dropSimPbkEntries"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3735
    invoke-interface {v2}, Lcom/android/internal/telephony/IIccPhoneBook;->dropSimPbkEntries()V

    .line 3737
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SIM_REFRESH"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3740
    .local v1, notifyIntent:Landroid/content/Intent;
    :goto_0
    if-lez p2, :cond_0

    .line 3741
    const-string v3, "extra"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3743
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3751
    .end local v1           #notifyIntent:Landroid/content/Intent;
    .end local v2           #simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_1
    return-void

    .line 3737
    .restart local v2       #simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3746
    .end local v2           #simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :catch_0
    move-exception v3

    goto :goto_1

    .line 3748
    :catch_1
    move-exception v0

    .line 3749
    .local v0, ex:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private fetchMWIfromUE()V
    .locals 3

    .prologue
    .line 2947
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2949
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "mwi_status_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    .line 2951
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v1, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyMessageWaitingIndicator()V

    .line 2952
    return-void
.end method

.method private getSavedNetworkSelection()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3629
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3630
    .local v0, sp:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "network_selection_key"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getSpnFsm(ZLandroid/os/AsyncResult;)V
    .locals 5
    .parameter "start"
    .parameter "ar"

    .prologue
    const/16 v4, 0xc

    const/4 v3, 0x0

    .line 3447
    if-eqz p1, :cond_0

    .line 3448
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->INIT:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    .line 3451
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$1;->$SwitchMap$com$android$internal$telephony$gsm$SIMRecords$Get_Spn_Fsm_State:[I

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3525
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    .line 3527
    :goto_0
    return-void

    .line 3453
    :pswitch_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    .line 3456
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    const/16 v2, 0x6f46

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3459
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 3461
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->READ_SPN_3GPP:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto :goto_0

    .line 3464
    :pswitch_1
    if-eqz p2, :cond_1

    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 3465
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 3466
    .local v0, data:[B
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    .line 3467
    const/4 v1, 0x1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    .line 3469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load EF_SPN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " spnDisplayCondition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3471
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v2, "gsm.sim.operator.alpha"

    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3473
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto :goto_0

    .line 3477
    .end local v0           #data:[B
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    const/16 v2, 0x6f14

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3480
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 3482
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->READ_SPN_CPHS:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    .line 3486
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    goto/16 :goto_0

    .line 3490
    :pswitch_2
    if-eqz p2, :cond_2

    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 3491
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 3492
    .restart local v0       #data:[B
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v3, v1}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    .line 3495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load EF_SPN_CPHS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3496
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v2, "gsm.sim.operator.alpha"

    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3498
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_0

    .line 3502
    .end local v0           #data:[B
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    const/16 v2, 0x6f18

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3505
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 3507
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_0

    .line 3511
    :pswitch_3
    if-eqz p2, :cond_3

    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_3

    .line 3512
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 3513
    .restart local v0       #data:[B
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v3, v1}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    .line 3516
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load EF_SPN_SHORT_CPHS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3517
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v2, "gsm.sim.operator.alpha"

    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3522
    .end local v0           #data:[B
    :goto_1
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_0

    .line 3519
    :cond_3
    const-string v1, "No SPN loaded in either CHPS or 3GPP"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 3451
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleEfCspData([B)V
    .locals 9
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    .line 3664
    array-length v6, p1

    div-int/lit8 v3, v6, 0x2

    .line 3666
    .local v3, usedCspGroups:I
    const/16 v4, -0x40

    .line 3668
    .local v4, valueAddedServicesGroup:B
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    .line 3669
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_5

    .line 3670
    mul-int/lit8 v6, v1, 0x2

    aget-byte v6, p1, v6

    if-ne v6, v4, :cond_4

    .line 3671
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CSP] found ValueAddedServicesGroup, value "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    mul-int/lit8 v8, v1, 0x2

    add-int/lit8 v8, v8, 0x1

    aget-byte v8, p1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3673
    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0x80

    const/16 v7, 0x80

    if-ne v6, v7, :cond_1

    .line 3677
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    .line 3707
    :cond_0
    :goto_1
    return-void

    .line 3679
    :cond_1
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    .line 3682
    const-string v6, "GSM"

    const-string v7, "[CSP] Set Automatic Network Selection"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3689
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->queryManualselectionStatus()Z

    move-result v6

    if-nez v6, :cond_3

    .line 3690
    .local v0, flag:Z
    :cond_2
    :goto_2
    if-eqz v0, :cond_0

    .line 3693
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSavedNetworkSelection()Ljava/lang/String;

    move-result-object v2

    .line 3694
    .local v2, networkSelection:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3695
    iget-object v5, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->clearNetworkSelection()V

    .line 3696
    iget-object v5, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/PhoneBase;->restoreSavedNetworkSelection(Landroid/os/Message;)V

    goto :goto_1

    .end local v0           #flag:Z
    .end local v2           #networkSelection:Ljava/lang/String;
    :cond_3
    move v0, v5

    .line 3689
    goto :goto_2

    .line 3669
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3706
    :cond_5
    const-string v5, "GSM"

    const-string v6, "[CSP] Value Added Service Group (0xC0), not found!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private handleFileUpdate(I)V
    .locals 9
    .parameter "efid"

    .prologue
    const/16 v8, 0x6f4a

    const/16 v7, 0x6f40

    const/16 v6, 0x6f3a

    const/16 v5, 0x73

    const/4 v4, 0x1

    .line 2669
    sparse-switch p1, :sswitch_data_0

    .line 2742
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v1}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 2748
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mIsFileUpdated:Z

    .line 2754
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->isSIMPhonebookFileId(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2755
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USIM Phonebook file id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2756
    const-string v1, "android.intent.action.SIM_FILE_UPDATE"

    invoke-direct {p0, v1, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->dropSimPbkEntries(Ljava/lang/String;I)V

    .line 2763
    :goto_0
    return-void

    .line 2672
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    const/16 v2, 0x6fc5

    const/16 v3, 0xf

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 2673
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    goto :goto_0

    .line 2677
    :sswitch_1
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2680
    new-instance v1, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v2, 0x6fc7

    const/16 v3, 0x6fc8

    iget v4, p0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    const/4 v5, 0x6

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_0

    .line 2685
    :sswitch_2
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2688
    new-instance v1, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v2, 0x6f17

    const/16 v3, 0xb

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v8, v4, v3}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_0

    .line 2693
    :sswitch_3
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2694
    const-string v1, "GSM"

    const-string v2, "[CSP] SIM Refresh for EF_CSP_CPHS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2697
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    const/16 v2, 0x6f15

    const/16 v3, 0x21

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto :goto_0

    .line 2706
    :sswitch_4
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2709
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 2710
    .local v0, card:Lcom/android/internal/telephony/IccCard;
    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2713
    new-instance v1, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v2, 0x6f4e

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v7, v2, v3}, Lcom/android/internal/telephony/AdnRecordLoader;->loadAllFromEF(IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2719
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v7, v8, v2}, Lcom/android/internal/telephony/AdnRecordLoader;->loadAllFromEF(IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2724
    .end local v0           #card:Lcom/android/internal/telephony/IccCard;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getSubscriberNumber(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2733
    :sswitch_5
    const-string v1, "android.intent.action.SIM_FILE_UPDATE"

    invoke-direct {p0, v1, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->dropSimPbkEntries(Ljava/lang/String;I)V

    .line 2735
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v1}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    goto/16 :goto_0

    .line 2758
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    goto/16 :goto_0

    .line 2669
    nop

    :sswitch_data_0
    .sparse-switch
        0x6f15 -> :sswitch_3
        0x6f17 -> :sswitch_2
        0x6f3a -> :sswitch_5
        0x6f40 -> :sswitch_4
        0x6fc5 -> :sswitch_0
        0x6fc7 -> :sswitch_1
    .end sparse-switch
.end method

.method private handleSimChanged()V
    .locals 7

    .prologue
    .line 2922
    iget-object v4, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2924
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v4, "sim_imsi_key"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2925
    .local v1, lastIMSI:Ljava/lang/String;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 2927
    .local v3, spEditor:Landroid/content/SharedPreferences$Editor;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    .line 2928
    .local v0, imsiForSp:Ljava/lang/String;
    :goto_0
    const-string v4, "sim_imsi_key"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2929
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2931
    const-string v4, "mwi_status_key"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2933
    const-string v4, "GSM"

    const-string v5, "SIM change"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2934
    iget-object v4, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v5, "gsm.sim.change"

    const-string v6, "true"

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2941
    :goto_1
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2942
    return-void

    .line 2927
    .end local v0           #imsiForSp:Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 2937
    .restart local v0       #imsiForSp:Ljava/lang/String;
    :cond_1
    const-string v4, "GSM"

    const-string v5, "SIM not change"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2938
    iget-object v4, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v5, "gsm.sim.change"

    const-string v6, "false"

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleSimRefresh([I)V
    .locals 5
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    .line 2766
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_2

    .line 2767
    :cond_0
    const-string v2, "handleSimRefresh without input"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2813
    :cond_1
    :goto_0
    return-void

    .line 2771
    :cond_2
    aget v2, p1, v4

    sparse-switch v2, :sswitch_data_0

    .line 2810
    const-string v2, "handleSimRefresh with unknown operation"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2773
    :sswitch_0
    const-string v2, "handleSimRefresh with SIM_REFRESH_FILE_UPDATED"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2775
    const/4 v2, 0x1

    aget v1, p1, v2

    .line 2776
    .local v1, efid:I
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleFileUpdate(I)V

    goto :goto_0

    .line 2782
    .end local v1           #efid:I
    :sswitch_1
    const-string v2, "handleSimRefresh with SIM_REFRESH_INIT"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2784
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v2}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 2785
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    .line 2786
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->dropSimPbkEntries()V

    goto :goto_0

    .line 2789
    :sswitch_2
    const-string v2, "handleSimRefresh with SIM_REFRESH_RESET"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2790
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x0

    invoke-interface {v2, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 2799
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v2}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 2802
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x50

    if-ne v2, v3, :cond_1

    .line 2803
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.phone.OTA_COMPLETE_REBOOT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2804
    .local v0, broadcast:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 2771
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x66 -> :sswitch_1
    .end sparse-switch
.end method

.method private handleSms(I[B)V
    .locals 7
    .parameter "nRecordIndex"
    .parameter "ba"

    .prologue
    const/4 v6, 0x0

    .line 2825
    aget-byte v3, p2, v6

    if-eqz v3, :cond_0

    .line 2826
    const-string v3, "ENF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "status : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2830
    :cond_0
    aget-byte v3, p2, v6

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 2831
    array-length v1, p2

    .line 2835
    .local v1, n:I
    add-int/lit8 v3, v1, -0x1

    new-array v2, v3, [B

    .line 2836
    .local v2, pdu:[B
    const/4 v3, 0x1

    add-int/lit8 v4, v1, -0x1

    invoke-static {p2, v3, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2837
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .line 2841
    .local v0, message:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->setIndexOnIcc(I)V

    .line 2844
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v3, :cond_1

    .line 2845
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->dispatchGsmMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    .line 2849
    .end local v0           #message:Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v1           #n:I
    .end local v2           #pdu:[B
    :cond_1
    return-void
.end method

.method private handleSmses(Ljava/util/ArrayList;)V
    .locals 11
    .parameter "messages"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2877
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2879
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 2880
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    .line 2882
    .local v0, ba:[B
    aget-byte v6, v0, v9

    if-eqz v6, :cond_0

    .line 2883
    const-string v6, "ENF"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "status "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-byte v8, v0, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2888
    :cond_0
    aget-byte v6, v0, v9

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    .line 2889
    array-length v4, v0

    .line 2893
    .local v4, n:I
    add-int/lit8 v6, v4, -0x1

    new-array v5, v6, [B

    .line 2894
    .local v5, pdu:[B
    add-int/lit8 v6, v4, -0x1

    invoke-static {v0, v10, v5, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2895
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v3

    .line 2898
    .local v3, message:Lcom/android/internal/telephony/gsm/SmsMessage;
    iget-object v6, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v6, v6, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v6, :cond_1

    .line 2899
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->dispatchGsmMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    .line 2906
    :cond_1
    aput-byte v10, v0, v9

    .line 2879
    .end local v3           #message:Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v4           #n:I
    .end local v5           #pdu:[B
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2917
    .end local v0           #ba:[B
    :cond_3
    return-void
.end method

.method private isCphsMailboxEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3607
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    if-nez v2, :cond_0

    .line 3608
    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0x30

    const/16 v3, 0x30

    if-ne v2, v3, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private isFfBeTreatedAsUnknownCount()Z
    .locals 2

    .prologue
    .line 3614
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, "VIRGI001"

    const-string v1, "ro.cid"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HTC__001"

    const-string v1, "ro.cid"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3617
    :cond_0
    const/4 v0, 0x1

    .line 3618
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOnMatchingPlmn(Ljava/lang/String;)Z
    .locals 5
    .parameter "plmn"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3405
    if-nez p1, :cond_1

    .line 3418
    :cond_0
    :goto_0
    return v2

    .line 3407
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 3408
    goto :goto_0

    .line 3411
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 3412
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3413
    .local v1, spdiNet:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 3414
    goto :goto_0
.end method

.method private parseEfFplmn([B)V
    .locals 4
    .parameter "data"

    .prologue
    .line 3588
    if-eqz p1, :cond_0

    array-length v2, p1

    rem-int/lit8 v2, v2, 0x3

    if-nez v2, :cond_0

    .line 3589
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p1

    div-int/lit8 v3, v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFPLMNList:Ljava/util/ArrayList;

    .line 3591
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 3592
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3594
    .local v1, plmn:Ljava/lang/StringBuilder;
    const/4 v2, 0x2

    invoke-static {p1, v0, v2}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3595
    add-int/lit8 v2, v0, 0x2

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3596
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EF_FPLMN : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3597
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFPLMNList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3591
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 3600
    .end local v0           #i:I
    .end local v1           #plmn:Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method private parseEfSpdi([B)V
    .locals 9
    .parameter "data"

    .prologue
    const/16 v8, 0x80

    const/4 v7, 0x0

    .line 3536
    new-instance v4, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v5, p1

    invoke-direct {v4, p1, v7, v5}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 3538
    .local v4, tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    const/4 v3, 0x0

    .line 3540
    .local v3, plmnEntries:[B
    :goto_0
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3550
    new-instance v1, Lcom/android/internal/telephony/gsm/SimTlv;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v6

    array-length v6, v6

    invoke-direct {v1, v5, v7, v6}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 3551
    .local v1, nestedTlv:Lcom/android/internal/telephony/gsm/SimTlv;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3552
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v5

    if-ne v5, v8, :cond_3

    .line 3553
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v3

    .line 3566
    .end local v1           #nestedTlv:Lcom/android/internal/telephony/gsm/SimTlv;
    :cond_0
    :goto_1
    if-nez v3, :cond_4

    .line 3583
    :cond_1
    return-void

    .line 3558
    .restart local v1       #nestedTlv:Lcom/android/internal/telephony/gsm/SimTlv;
    :cond_2
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v5

    if-ne v5, v8, :cond_3

    .line 3559
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v3

    .line 3560
    goto :goto_1

    .line 3540
    :cond_3
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    goto :goto_0

    .line 3570
    .end local v1           #nestedTlv:Lcom/android/internal/telephony/gsm/SimTlv;
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v3

    div-int/lit8 v6, v6, 0x3

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    .line 3572
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    add-int/lit8 v5, v0, 0x2

    array-length v6, v3

    if-ge v5, v6, :cond_1

    .line 3575
    const/4 v5, 0x3

    invoke-static {v3, v0, v5}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 3578
    .local v2, plmnCode:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x5

    if-lt v5, v6, :cond_5

    .line 3579
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_SPDI network: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3580
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3572
    :cond_5
    add-int/lit8 v0, v0, 0x3

    goto :goto_2
.end method

.method private setLocaleFromMccIfNeeded(I)V
    .locals 4
    .parameter "mcc"

    .prologue
    .line 1238
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->defaultLanguageForMcc(I)Ljava/lang/String;

    move-result-object v1

    .line 1239
    .local v1, language:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v0

    .line 1241
    .local v0, country:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Lcom/android/internal/telephony/PhoneBase;->setSystemLocale(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1242
    return-void
.end method

.method private setSpnFromConfig(Ljava/lang/String;)V
    .locals 1
    .parameter "carrier"

    .prologue
    .line 3052
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3053
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/SpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    .line 3055
    :cond_0
    return-void
.end method

.method private setTimezoneFromMccIfNeeded(I)V
    .locals 5
    .parameter "mcc"

    .prologue
    .line 1220
    const-string v3, "persist.sys.timezone"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1221
    .local v1, timezone:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 1222
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->defaultTimeZoneForMcc(I)Ljava/lang/String;

    move-result-object v2

    .line 1224
    .local v2, zoneId:Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 1226
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1228
    .local v0, alarm:Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 1231
    .end local v0           #alarm:Landroid/app/AlarmManager;
    .end local v2           #zoneId:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private setVoiceMailByCountry(Ljava/lang/String;)V
    .locals 6
    .parameter "spn"

    .prologue
    .line 3060
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xd1

    if-ne v3, v4, :cond_1

    .line 3061
    const-string v3, "44020"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3062
    const-string v3, "1416"

    iput-object v3, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNumSBM_home:Ljava/lang/String;

    .line 3063
    const-string v3, "+819066514170"

    iput-object v3, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNumSBM_roam:Ljava/lang/String;

    .line 3064
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/IccRecords;->isVoiceMailFixed:Z

    .line 3104
    :cond_0
    :goto_0
    return-void

    .line 3078
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v3, :cond_0

    .line 3079
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3080
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->checkImsiChangedForVoiceMail()Z

    move-result v0

    .line 3081
    .local v0, changed:Z
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPreferenceVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    .line 3082
    .local v1, number:Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 3083
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3084
    const-string v3, "GSM"

    const-string v4, "voiceMailNum is empty!! try to search default value from property/xml!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3085
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->getVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3086
    .local v2, vmNumber:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3087
    iput-object v2, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    .line 3088
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->storeVoiceMailNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 3089
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->containsCarrier(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3090
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    .line 3091
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->getVoiceMailTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    .line 3092
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->storeVoiceMailNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 3095
    .end local v2           #vmNumber:Ljava/lang/String;
    :cond_3
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    goto :goto_0

    .line 3098
    :cond_4
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    goto :goto_0
.end method

.method private updateMWItoUE()V
    .locals 4

    .prologue
    .line 2955
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2957
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2958
    .local v1, spEditor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "mwi_status_key"

    iget v3, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2959
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2960
    return-void
.end method


# virtual methods
.method public checkFDNCapability()Z
    .locals 1

    .prologue
    .line 3774
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFdnCapability:Z

    return v0
.end method

.method public checkcallForwardingStatus()V
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3787
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    if-nez v2, :cond_1

    .line 3831
    :cond_0
    :goto_0
    return-void

    .line 3791
    :cond_1
    const/4 v0, 0x0

    .line 3792
    .local v0, cphspreferred:Z
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 3794
    .local v1, operator:Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_2

    .line 3795
    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords;->ORANGE_NETWORKLIST:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3796
    const/4 v0, 0x1

    .line 3800
    :cond_2
    if-ne v0, v3, :cond_a

    .line 3801
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    if-eqz v2, :cond_6

    .line 3802
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    aget-byte v2, v2, v4

    and-int/lit8 v2, v2, 0xf

    if-ne v2, v5, :cond_5

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    .line 3830
    :cond_3
    :goto_3
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyCallForwardingIndicator()V

    goto :goto_0

    .line 3792
    .end local v1           #operator:Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .restart local v1       #operator:Ljava/lang/String;
    :cond_5
    move v2, v4

    .line 3802
    goto :goto_2

    .line 3804
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    if-eqz v2, :cond_9

    .line 3806
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    aget-byte v2, v2, v3

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_7

    move v2, v3

    :goto_4
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    .line 3807
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isVTEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3808
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    aget-byte v2, v2, v3

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_8

    :goto_5
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->dataCallForwardingEnabled:Z

    goto :goto_3

    :cond_7
    move v2, v4

    .line 3806
    goto :goto_4

    :cond_8
    move v3, v4

    .line 3808
    goto :goto_5

    .line 3811
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->queryCFUIfNecessary()V

    goto :goto_3

    .line 3815
    :cond_a
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    if-eqz v2, :cond_d

    .line 3817
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    aget-byte v2, v2, v3

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_b

    move v2, v3

    :goto_6
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    .line 3818
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isVTEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3819
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    aget-byte v2, v2, v3

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_c

    :goto_7
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->dataCallForwardingEnabled:Z

    goto :goto_3

    :cond_b
    move v2, v4

    .line 3817
    goto :goto_6

    :cond_c
    move v3, v4

    .line 3819
    goto :goto_7

    .line 3822
    :cond_d
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    if-eqz v2, :cond_f

    .line 3823
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    aget-byte v2, v2, v4

    and-int/lit8 v2, v2, 0xf

    if-ne v2, v5, :cond_e

    :goto_8
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    goto :goto_3

    :cond_e
    move v3, v4

    goto :goto_8

    .line 3825
    :cond_f
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->queryCFUIfNecessary()V

    goto :goto_3
.end method

.method protected dispatchGsmMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 1
    .parameter "message"

    .prologue
    .line 2821
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 485
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMReady(Landroid/os/Handler;)V

    .line 486
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 487
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 489
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterPBReadyNotify(Landroid/os/Handler;)V

    .line 490
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSmsOnSim(Landroid/os/Handler;)V

    .line 491
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 492
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    .line 493
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    .line 495
    return-void
.end method

.method protected fetchSimRecords()V
    .locals 12

    .prologue
    const/16 v11, 0x65

    const/4 v7, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 3126
    iput-boolean v10, p0, Lcom/android/internal/telephony/IccRecords;->mIsRecordsLoad:Z

    .line 3129
    iput-boolean v8, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    .line 3132
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mloadEFCount:I

    .line 3137
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    .line 3140
    .local v1, iccFh:Lcom/android/internal/telephony/IccFileHandler;
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIMRecords:fetchSimRecords "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3145
    const-string v4, "ro.kernel.qemu"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3146
    const-string v4, "SimRecords"

    const-string v5, "mSimulator = false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3148
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 3149
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_NO_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    .line 3150
    .local v3, simTypes:Lcom/android/internal/telephony/CommandsInterface$SimTypes;
    iget-object v4, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 3151
    .local v0, card:Lcom/android/internal/telephony/IccCard;
    if-eqz v0, :cond_8

    sget-object v4, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3152
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_3G_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    .line 3156
    :goto_0
    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 3157
    .local v2, msg:Landroid/os/Message;
    invoke-static {v2, v3, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3158
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3167
    .end local v0           #card:Lcom/android/internal/telephony/IccCard;
    .end local v2           #msg:Landroid/os/Message;
    .end local v3           #simTypes:Lcom/android/internal/telephony/CommandsInterface$SimTypes;
    :cond_0
    :goto_1
    const/16 v4, 0x6f62

    const/16 v5, 0x74

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3168
    iget v4, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 3173
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 3174
    iget-object v4, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V

    .line 3179
    :goto_2
    iget v4, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 3188
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mIsFileUpdated:Z

    if-eqz v4, :cond_b

    .line 3189
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mIsFileUpdated:Z

    .line 3204
    :cond_1
    :goto_3
    const/16 v4, 0x2fe2

    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3205
    iget v4, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 3207
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3208
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const/16 v5, 0x26

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PhoneBase;->getHtcSimTypes(Landroid/os/Message;)V

    .line 3209
    iget v4, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 3223
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 3225
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 3226
    .restart local v0       #card:Lcom/android/internal/telephony/IccCard;
    if-eqz v0, :cond_c

    sget-object v4, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 3229
    new-instance v4, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v5, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v6, p0, Lcom/android/internal/telephony/IccRecords;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v4, v5, v6}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v5, 0x6f40

    const/16 v6, 0x6f4e

    const/16 v7, 0x73

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->loadAllFromEF(IILandroid/os/Message;)V

    .line 3239
    :goto_4
    iget v4, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 3249
    .end local v0           #card:Lcom/android/internal/telephony/IccCard;
    :goto_5
    const/16 v4, 0x6f7b

    const/16 v5, 0x6b

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3250
    iget v4, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 3254
    iput v10, p0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    .line 3255
    iput-object v9, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    .line 3256
    iput-object v9, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    .line 3261
    iget-object v4, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v4, :cond_5

    .line 3262
    const/16 v4, 0x6fc9

    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v4, v8, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 3263
    iget v4, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 3267
    :cond_5
    const/16 v4, 0x6fad

    const/16 v5, 0x9

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3268
    iget v4, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 3271
    iget-object v4, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v4, :cond_6

    .line 3273
    const/16 v4, 0x6fca

    const/4 v5, 0x7

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v4, v8, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 3274
    iget v4, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 3281
    const/16 v4, 0x6f11

    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3284
    iget v4, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 3288
    const/16 v4, 0x6fcb

    const/16 v5, 0x20

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v4, v8, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 3289
    iget v4, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 3290
    const/16 v4, 0x6f13

    const/16 v5, 0x18

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3291
    iget v4, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 3294
    invoke-direct {p0, v8, v9}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    .line 3296
    const/16 v4, 0x6fcd

    const/16 v5, 0xd

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3297
    iget v4, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 3301
    :cond_6
    const/16 v4, 0x6fc5

    const/16 v5, 0xf

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v4, v8, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 3302
    iget v4, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 3304
    const/16 v4, 0x6f38

    const/16 v5, 0x11

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3305
    iget v4, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 3308
    iget-object v4, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v4, :cond_7

    .line 3309
    const/16 v4, 0x6f16

    const/16 v5, 0x1a

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3310
    iget v4, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 3312
    const/16 v4, 0x6f15

    const/16 v5, 0x21

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3313
    iget v4, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 3323
    const/16 v4, 0x6f45

    const/16 v5, 0x23

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3324
    iget v4, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 3341
    :cond_7
    return-void

    .line 3154
    .restart local v0       #card:Lcom/android/internal/telephony/IccCard;
    .restart local v3       #simTypes:Lcom/android/internal/telephony/CommandsInterface$SimTypes;
    :cond_8
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_2G_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    goto/16 :goto_0

    .line 3160
    .end local v0           #card:Lcom/android/internal/telephony/IccCard;
    .end local v3           #simTypes:Lcom/android/internal/telephony/CommandsInterface$SimTypes;
    :cond_9
    iget-object v4, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getSimTypes(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 3176
    :cond_a
    iget-object v4, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getIMSI(Landroid/os/Message;)V

    goto/16 :goto_2

    .line 3193
    :cond_b
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3196
    iget-object v4, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x6f

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->requestCheckFDNStatus(Landroid/os/Message;)V

    .line 3197
    iget v4, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    goto/16 :goto_3

    .line 3235
    .restart local v0       #card:Lcom/android/internal/telephony/IccCard;
    :cond_c
    new-instance v4, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v5, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v6, p0, Lcom/android/internal/telephony/IccRecords;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v4, v5, v6}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v5, 0x6f40

    const/16 v6, 0x6f4a

    const/16 v7, 0x73

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->loadAllFromEF(IILandroid/os/Message;)V

    goto/16 :goto_4

    .line 3243
    .end local v0           #card:Lcom/android/internal/telephony/IccCard;
    :cond_d
    iget-object v4, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0xa

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getSubscriberNumber(Landroid/os/Message;)V

    goto/16 :goto_5
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 498
    const-string v0, "GSM"

    const-string v1, "SIMRecords finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    return-void
.end method

.method public getDataCallForwardingStatus()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 865
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 867
    .local v0, enabled:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 870
    :goto_1
    return v1

    .end local v0           #enabled:Z
    :cond_0
    move v0, v1

    .line 865
    goto :goto_0

    .line 870
    .restart local v0       #enabled:Z
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->dataCallForwardingEnabled:Z

    goto :goto_1
.end method

.method public getDisplayRule(Ljava/lang/String;)I
    .locals 6
    .parameter "plmn"

    .prologue
    const/16 v5, 0x31

    const/4 v2, 0x2

    .line 3360
    const/4 v1, 0x0

    .line 3361
    .local v1, isH3GSIM:Z
    sget-object v3, Lcom/android/internal/telephony/gsm/SIMRecords;->H3G_NETWORKLIST:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3362
    const/4 v1, 0x1

    .line 3366
    :cond_0
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v3, v5, :cond_1

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x50

    if-ne v3, v4, :cond_3

    .line 3368
    :cond_1
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mValidSPN:Z

    if-nez v3, :cond_3

    .line 3398
    :cond_2
    :goto_0
    return v2

    .line 3373
    :cond_3
    const/4 v0, 0x0

    .line 3374
    .local v0, CheckingEONS:Z
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v3, v2, :cond_4

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v3, v5, :cond_4

    if-eqz v1, :cond_5

    .line 3377
    :cond_4
    const/4 v0, 0x1

    .line 3381
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_6

    if-eqz v0, :cond_7

    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mOperatorNameSource:I

    if-nez v3, :cond_7

    .line 3384
    :cond_6
    const/4 v2, 0x2

    .local v2, rule:I
    goto :goto_0

    .line 3385
    .end local v2           #rule:I
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->isOnMatchingPlmn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3386
    const/4 v2, 0x1

    .line 3387
    .restart local v2       #rule:I
    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 3389
    or-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 3392
    .end local v2           #rule:I
    :cond_8
    const/4 v2, 0x2

    .line 3393
    .restart local v2       #rule:I
    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2

    .line 3395
    or-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getGID1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3835
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mGID1:Ljava/lang/String;

    return-object v0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdnAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdnNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    return-object v0
.end method

.method public getO2SIMCardType()I
    .locals 5

    .prologue
    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3856
    iget-boolean v3, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mloadEFCount:I

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    const-string v4, "23410"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v0, v2

    .line 3861
    :cond_1
    :goto_0
    return v0

    .line 3858
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEFO2Perso:[B

    if-eqz v3, :cond_3

    .line 3859
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEFO2Perso:[B

    aget-byte v2, v3, v2

    and-int/lit8 v2, v2, 0x1

    if-eq v2, v1, :cond_1

    move v0, v1

    goto :goto_0

    .line 3861
    :cond_3
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFdnCapability:Z

    if-eq v2, v1, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 1189
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1190
    const-string v2, "GSM"

    const-string v3, "getOperatorNumeric: IMSI == null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    :goto_0
    return-object v1

    .line 1193
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-nez v2, :cond_2

    .line 1194
    :cond_1
    const-string v2, "GSM"

    const-string v3, "getSIMOperatorNumeric: bad mncLength"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1198
    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v1, :cond_3

    .line 1201
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1209
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1211
    .local v0, mcc:I
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSubsidyLock(ILandroid/os/Message;)V
    .locals 2
    .parameter "querySetting"
    .parameter "response"

    .prologue
    .line 3757
    const/16 v1, 0x66

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3758
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getSubsidyLock(ILandroid/os/Message;)V

    .line 3760
    return-void
.end method

.method public getUsimServiceTable()Lcom/android/internal/telephony/gsm/UsimServiceTable;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    return-object v0
.end method

.method public getVoiceCallForwardingFlag()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 839
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    .line 841
    .local v0, enabled:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 842
    const-string v3, "getVoiceCallForwardingFlag return false due to airplanemode"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 843
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->disableCfuIcon:Z

    .line 846
    :cond_0
    :goto_1
    return v1

    .end local v0           #enabled:Z
    :cond_1
    move v0, v1

    .line 839
    goto :goto_0

    .line 846
    .restart local v0       #enabled:Z
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isVTEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->dataCallForwardingEnabled:Z

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    goto :goto_1
.end method

.method public getVoiceCallForwardingStatus()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 855
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 857
    .local v0, enabled:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 860
    :goto_1
    return v1

    .end local v0           #enabled:Z
    :cond_0
    move v0, v1

    .line 855
    goto :goto_0

    .line 860
    .restart local v0       #enabled:Z
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    goto :goto_1
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 4

    .prologue
    .line 727
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040004

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 730
    .local v0, aplhaTag:Ljava/lang/String;
    const-string v2, "ro.cid"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 732
    .local v1, cid:Ljava/lang/String;
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x71

    if-ne v2, v3, :cond_1

    const-string v2, "ORANG202"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 740
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 743
    .end local v0           #aplhaTag:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0

    .line 740
    .restart local v0       #aplhaTag:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    goto :goto_0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 4

    .prologue
    .line 628
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xd1

    if-ne v1, v2, :cond_1

    .line 629
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 630
    .local v0, operator:Ljava/lang/String;
    const-string v1, "44020"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 631
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v1, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 632
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SBM Roaming VM number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNumSBM_roam:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNumSBM_roam:Ljava/lang/String;

    .line 646
    .end local v0           #operator:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 635
    .restart local v0       #operator:Ljava/lang/String;
    :cond_0
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SBM Home VM number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNumSBM_home:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNumSBM_home:Ljava/lang/String;

    goto :goto_0

    .line 641
    .end local v0           #operator:Ljava/lang/String;
    :cond_1
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x40

    if-ne v1, v2, :cond_2

    .line 642
    const-string v1, "GSM"

    const-string v2, "Iusacell VM number: 186"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const-string v1, "186"

    goto :goto_0

    .line 646
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 58
    .parameter "msg"

    .prologue
    .line 1247
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/IccCardProxy;->isComposedIccRecords()Z

    move-result v3

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mDropEvent:Z

    if-eqz v3, :cond_1

    .line 1249
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " SimRecords drop event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2666
    :cond_0
    :goto_0
    return-void

    .line 1258
    :cond_1
    const/16 v31, 0x0

    .line 1263
    .local v31, isRecordLoadResponse:Z
    :try_start_0
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    sparse-switch v3, :sswitch_data_0

    .line 2662
    :cond_2
    :goto_1
    if-eqz v31, :cond_0

    .line 2663
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRecordLoaded()V

    goto :goto_0

    .line 1265
    :sswitch_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onSimReady()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2657
    :catch_0
    move-exception v21

    .line 2659
    .local v21, exc:Ljava/lang/RuntimeException;
    :try_start_2
    const-string v3, "GSM"

    const-string v5, "Exception parsing SIM record"

    move-object/from16 v0, v21

    invoke-static {v3, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2662
    if-eqz v31, :cond_0

    goto :goto_2

    .line 1270
    .end local v21           #exc:Ljava/lang/RuntimeException;
    :sswitch_1
    :try_start_3
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1273
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRadioOffOrNotAvailable()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 2662
    :catchall_0
    move-exception v3

    if-eqz v31, :cond_3

    .line 2663
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRecordLoaded()V

    .line 2662
    :cond_3
    throw v3

    .line 1276
    :cond_4
    const/4 v3, 0x1

    const/4 v5, 0x0

    :try_start_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->resetVoiceCallForwardingFlag(IZ)V

    goto :goto_1

    .line 1284
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 1285
    .local v12, ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_5

    .line 1286
    const-string v3, "GSM"

    const-string v5, "automatic network selection: failed!"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1288
    :cond_5
    const-string v3, "GSM"

    const-string v5, "automatic network selection: succeeded!"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1295
    .end local v12           #ar:Landroid/os/AsyncResult;
    :sswitch_3
    const/16 v31, 0x1

    .line 1297
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 1299
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_7

    .line 1300
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFdnCapability:Z

    .line 1307
    :cond_6
    :goto_3
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_CHECK_FDN mFdnStatus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFdnCapability:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1301
    :cond_7
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_6

    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->FDN_NOT_SUPPORT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v5, :cond_6

    .line 1304
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFdnCapability:Z

    goto :goto_3

    .line 1314
    .end local v12           #ar:Landroid/os/AsyncResult;
    :sswitch_4
    const/16 v31, 0x1

    .line 1317
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mloadEFCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mloadEFCount:I

    .line 1320
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 1322
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_8

    .line 1323
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception querying IMSI, Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1327
    :cond_8
    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    .line 1331
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x6

    if-lt v3, v5, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0xf

    if-le v3, v5, :cond_a

    .line 1332
    :cond_9
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid IMSI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    .line 1337
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->htcIsAllHexDigits(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 1338
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid IMSI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    .line 1341
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v3, :cond_c

    .line 1343
    const-string v3, "GSM"

    const-string v5, "IMSI: xxxxxxx"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 1350
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/HtcIsimData;->SetGSM_IMSI(Ljava/lang/String;)V

    .line 1355
    :cond_d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mloadEFCount:I

    if-nez v3, :cond_e

    .line 1360
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->approval:Z

    invoke-virtual {v3, v5, v6}, Lcom/android/internal/telephony/PhoneBase;->setTestIcc(Ljava/lang/String;Z)V

    .line 1366
    :cond_e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_10

    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x6

    if-lt v3, v5, :cond_10

    .line 1368
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v39

    .line 1369
    .local v39, mccmncCode:Ljava/lang/String;
    sget-object v13, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .local v13, arr$:[Ljava/lang/String;
    array-length v0, v13

    move/from16 v34, v0

    .local v34, len$:I
    const/16 v24, 0x0

    .local v24, i$:I
    :goto_4
    move/from16 v0, v24

    move/from16 v1, v34

    if-ge v0, v1, :cond_10

    aget-object v38, v13, v24

    .line 1370
    .local v38, mccmnc:Ljava/lang/String;
    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1371
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1377
    .end local v13           #arr$:[Ljava/lang/String;
    .end local v24           #i$:I
    .end local v34           #len$:I
    .end local v38           #mccmnc:Ljava/lang/String;
    .end local v39           #mccmncCode:Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    if-nez v3, :cond_12

    .line 1383
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v37

    .line 1387
    .local v37, mcc:I
    sget-object v3, Lcom/android/internal/telephony/gsm/SIMRecords;->sPatternTataDoCoMo:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_11

    sget-object v3, Lcom/android/internal/telephony/gsm/SIMRecords;->sPatternAircel:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_11

    sget-object v3, Lcom/android/internal/telephony/gsm/SIMRecords;->sPatternVideocon:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1390
    :cond_11
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1405
    .end local v37           #mcc:I
    :cond_12
    :goto_5
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v3, :cond_17

    .line 1407
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_13

    .line 1409
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V

    .line 1414
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    const-string v5, "IMSI"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v37

    .line 1420
    .restart local v37       #mcc:I
    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->setTimezoneFromMccIfNeeded(I)V

    .line 1421
    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->setLocaleFromMccIfNeeded(I)V

    .line 1424
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSimChanged()V

    .line 1427
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 1428
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->calcuateIccExpiredInformation()V

    .line 1430
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mloadEFCount:I

    if-nez v3, :cond_2

    .line 1433
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v25

    .line 1435
    .local v25, iccFh:Lcom/android/internal/telephony/IccFileHandler;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    const-string v5, "23410"

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v25, :cond_2

    .line 1436
    const/16 v3, 0x6f02

    const/16 v5, 0x72

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1437
    const/16 v31, 0x0

    goto/16 :goto_1

    .line 1369
    .end local v25           #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    .end local v37           #mcc:I
    .restart local v13       #arr$:[Ljava/lang/String;
    .restart local v24       #i$:I
    .restart local v34       #len$:I
    .restart local v38       #mccmnc:Ljava/lang/String;
    .restart local v39       #mccmncCode:Ljava/lang/String;
    :cond_14
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_4

    .line 1391
    .end local v13           #arr$:[Ljava/lang/String;
    .end local v24           #i$:I
    .end local v34           #len$:I
    .end local v38           #mccmnc:Ljava/lang/String;
    .end local v39           #mccmncCode:Ljava/lang/String;
    .restart local v37       #mcc:I
    :cond_15
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const-string v5, "72234"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1393
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_5

    .line 1398
    .end local v37           #mcc:I
    :catch_1
    move-exception v20

    .line 1399
    .local v20, e:Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    :try_start_8
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1400
    const-string v3, "GSM"

    const-string v5, "SIMRecords: Corrupt IMSI!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_5

    .line 1395
    .end local v20           #e:Ljava/lang/NumberFormatException;
    .restart local v37       #mcc:I
    :cond_16
    :try_start_9
    invoke-static/range {v37 .. v37}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_5

    .line 1445
    .end local v37           #mcc:I
    :cond_17
    :try_start_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v3, v3, Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v3, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v3, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isReportImsiFromCdma()Ljava/lang/Boolean;

    move-result-object v3

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v3, v5, :cond_18

    .line 1446
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    const-string v5, "IMSI"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSimChanged()V

    goto/16 :goto_1

    .line 1455
    .end local v12           #ar:Landroid/os/AsyncResult;
    :sswitch_5
    const/16 v31, 0x1

    .line 1457
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 1458
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object/from16 v17, v0

    .line 1460
    .local v17, data:[B
    const/16 v32, 0x0

    .line 1461
    .local v32, isValidMbdn:Z
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_19

    .line 1463
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_MBI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    const/4 v3, 0x0

    aget-byte v3, v17, v3

    and-int/lit16 v3, v3, 0xff

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    .line 1473
    const/16 v32, 0x1

    .line 1484
    :cond_19
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 1487
    if-eqz v32, :cond_1b

    .line 1490
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    if-lez v3, :cond_1a

    .line 1493
    new-instance v3, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/IccRecords;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v3, v5, v6}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v5, 0x6fc7

    const/16 v6, 0x6fc8

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    const/4 v8, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1497
    :cond_1a
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    .line 1500
    new-instance v3, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/IccRecords;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v3, v5, v6}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v5, 0x6fc7

    const/16 v6, 0x6fc8

    const/4 v7, 0x1

    const/4 v8, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1509
    :cond_1b
    new-instance v3, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/IccRecords;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v3, v5, v6}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v5, 0x6f17

    const/16 v6, 0x6f4a

    const/4 v7, 0x1

    const/16 v8, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1523
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v17           #data:[B
    .end local v32           #isValidMbdn:Z
    :sswitch_6
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    .line 1524
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    .line 1525
    const/16 v31, 0x1

    .line 1527
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 1529
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1d

    .line 1531
    const-string v5, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid or missing EF"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/16 v7, 0xb

    if-ne v3, v7, :cond_1c

    const-string v3, "[MAILBOX]"

    :goto_6
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/4 v5, 0x6

    if-ne v3, v5, :cond_2

    .line 1541
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    .line 1544
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 1547
    new-instance v3, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/IccRecords;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v3, v5, v6}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v5, 0x6f17

    const/16 v6, 0x6f4a

    const/4 v7, 0x1

    const/16 v8, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1531
    :cond_1c
    const-string v3, "[MBDN]"

    goto :goto_6

    .line 1555
    :cond_1d
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/AdnRecord;

    .line 1557
    .local v4, adn:Lcom/android/internal/telephony/AdnRecord;
    const-string v5, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VM: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/16 v7, 0xb

    if-ne v3, v7, :cond_1e

    const-string v3, " EF[MAILBOX]"

    :goto_7
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    invoke-virtual {v4}, Lcom/android/internal/telephony/AdnRecord;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1f

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/4 v5, 0x6

    if-ne v3, v5, :cond_1f

    .line 1564
    const-string v3, ""

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    .line 1565
    const-string v3, ""

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    .line 1570
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 1573
    new-instance v3, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/IccRecords;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v3, v5, v6}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v5, 0x6f17

    const/16 v6, 0x6f4a

    const/4 v7, 0x1

    const/16 v8, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1557
    :cond_1e
    const-string v3, " EF[MBDN]"

    goto :goto_7

    .line 1581
    :cond_1f
    invoke-virtual {v4}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    .line 1582
    invoke-virtual {v4}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    goto/16 :goto_1

    .line 1587
    .end local v4           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v12           #ar:Landroid/os/AsyncResult;
    :sswitch_7
    const-string v3, "GSM"

    const-string v5, "EVENT_GET_MSISDN_DONE"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 1594
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_20

    .line 1595
    const-string v3, "GSM"

    const-string v5, "Invalid or missing EF[MSISDN]"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mMSISDNRetry:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mMSISDNRetry:I

    .line 1599
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mMSISDNRetry:I

    const/16 v5, 0xc

    if-gt v3, v5, :cond_2

    .line 1601
    const-string v3, "GSM"

    const-string v5, "retry to get MSISDN"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    const/16 v3, 0x6e

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->removeMessages(I)V

    .line 1603
    const/16 v3, 0x6e

    const-wide/16 v5, 0x4e20

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 1610
    :cond_20
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_22

    .line 1613
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mMSISDNRetry:I

    .line 1616
    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object v0, v3

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v44, v0

    .line 1618
    .local v44, results:[Ljava/lang/String;
    if-eqz v44, :cond_23

    move-object/from16 v0, v44

    array-length v3, v0

    const/4 v5, 0x5

    if-lt v3, v5, :cond_23

    .line 1619
    const/4 v3, 0x0

    aget-object v3, v44, v3

    if-eqz v3, :cond_21

    .line 1620
    const/4 v3, 0x0

    aget-object v3, v44, v3

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v41

    .line 1621
    .local v41, name:[B
    const/4 v3, 0x0

    move-object/from16 v0, v41

    array-length v5, v0

    move-object/from16 v0, v41

    invoke-static {v0, v3, v5}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    .line 1624
    .end local v41           #name:[B
    :cond_21
    const/4 v3, 0x1

    aget-object v3, v44, v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    .line 1626
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    if-eqz v3, :cond_22

    .line 1630
    const-string v3, "GSM"

    const-string v5, "msisdn = xxxxxxxxxx"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/HtcIsimData;->SetGSM_MSISDN(Ljava/lang/String;)V

    .line 1648
    .end local v44           #results:[Ljava/lang/String;
    :cond_22
    :goto_8
    const-string v3, "GSM"

    const-string v5, "MSISDN: xxxxxxx"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1635
    .restart local v44       #results:[Ljava/lang/String;
    :cond_23
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    .line 1636
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    goto :goto_8

    .line 1653
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v44           #results:[Ljava/lang/String;
    :sswitch_8
    const-string v3, "GSM"

    const-string v5, "EVENT_GET_EF_MSISDN_DONE"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    const/16 v31, 0x1

    .line 1655
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 1657
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_24

    .line 1658
    const-string v3, "GSM"

    const-string v5, "Invalid or missing EF[MSISDN]"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1665
    :cond_24
    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    check-cast v3, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mMsisdnRecordList:Ljava/util/ArrayList;

    .line 1667
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mMsisdnRecordList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_25

    .line 1668
    const/4 v11, 0x0

    .line 1670
    .local v11, adn_msisdn:Lcom/android/internal/telephony/AdnRecord;
    const/16 v23, 0x0

    .local v23, i:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mMsisdnRecordList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v45

    .local v45, s:I
    :goto_9
    move/from16 v0, v23

    move/from16 v1, v45

    if-ge v0, v1, :cond_25

    .line 1671
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mMsisdnRecordList:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #adn_msisdn:Lcom/android/internal/telephony/AdnRecord;
    check-cast v11, Lcom/android/internal/telephony/AdnRecord;

    .line 1673
    .restart local v11       #adn_msisdn:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {v11}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 1674
    invoke-virtual {v11}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    .line 1675
    invoke-virtual {v11}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    .line 1681
    .end local v11           #adn_msisdn:Lcom/android/internal/telephony/AdnRecord;
    .end local v23           #i:I
    .end local v45           #s:I
    :cond_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    if-eqz v3, :cond_26

    .line 1683
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1684
    .local v16, commands:[Ljava/lang/String;
    const/4 v3, 0x0

    const-string v5, "UNIAT"

    aput-object v5, v16, v3

    .line 1685
    const/4 v3, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "at@msisdn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v16, v3

    .line 1686
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-interface {v3, v0, v5}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 1691
    const-string v3, "GSM"

    const-string v5, "msisdn = xxxxxxxxxx"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    .end local v16           #commands:[Ljava/lang/String;
    :cond_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 1696
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "msisdnTag = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1670
    .restart local v11       #adn_msisdn:Lcom/android/internal/telephony/AdnRecord;
    .restart local v23       #i:I
    .restart local v45       #s:I
    :cond_27
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_9

    .line 1704
    .end local v11           #adn_msisdn:Lcom/android/internal/telephony/AdnRecord;
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v23           #i:I
    .end local v45           #s:I
    :sswitch_9
    const/16 v31, 0x0

    .line 1705
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 1707
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_28

    .line 1708
    iget-object v3, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v5, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v5, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1710
    iget-object v3, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1715
    :cond_28
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 1718
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->msisdnTemp:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    .line 1719
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->msisdnTagTemp:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    .line 1720
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/IccRecords;->msisdnTemp:Ljava/lang/String;

    .line 1721
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/IccRecords;->msisdnTagTemp:Ljava/lang/String;

    .line 1724
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1725
    .restart local v16       #commands:[Ljava/lang/String;
    const/4 v3, 0x0

    const-string v5, "UNIAT"

    aput-object v5, v16, v3

    .line 1726
    const/4 v3, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "at@msisdn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v16, v3

    .line 1727
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-interface {v3, v0, v5}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 1729
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/HtcIsimData;->SetGSM_MSISDN(Ljava/lang/String;)V

    .line 1734
    const-string v3, "GSM"

    const-string v5, "msisdn = xxxxxxxxxx"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1742
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v16           #commands:[Ljava/lang/String;
    :sswitch_a
    const/16 v31, 0x1

    .line 1744
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 1745
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object/from16 v17, v0

    .line 1747
    .restart local v17       #data:[B
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 1751
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_MWIS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    .line 1756
    const/4 v3, 0x0

    aget-byte v3, v17, v3

    and-int/lit16 v3, v3, 0xff

    const/16 v5, 0xff

    if-ne v3, v5, :cond_29

    .line 1757
    const-string v3, "GSM"

    const-string v5, "SIMRecords: Uninitialized record MWIS"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1762
    :cond_29
    const/4 v3, 0x0

    aget-byte v3, v17, v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2b

    const/16 v55, 0x1

    .line 1763
    .local v55, voiceMailWaiting:Z
    :goto_a
    const/4 v3, 0x1

    aget-byte v3, v17, v3

    and-int/lit16 v3, v3, 0xff

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    .line 1772
    if-eqz v55, :cond_2a

    .line 1773
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isFfBeTreatedAsUnknownCount()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 1774
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    const/16 v5, 0xff

    if-ne v3, v5, :cond_2a

    .line 1775
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    .line 1784
    :cond_2a
    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->notifyMessageWaitingIndicator()V

    goto/16 :goto_1

    .line 1762
    .end local v55           #voiceMailWaiting:Z
    :cond_2b
    const/16 v55, 0x0

    goto :goto_a

    .line 1778
    .restart local v55       #voiceMailWaiting:Z
    :cond_2c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    if-nez v3, :cond_2a

    .line 1779
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    goto :goto_b

    .line 1788
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v17           #data:[B
    .end local v55           #voiceMailWaiting:Z
    :sswitch_b
    const/16 v31, 0x1

    .line 1790
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 1791
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object/from16 v17, v0

    .line 1793
    .restart local v17       #data:[B
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 1797
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    .line 1803
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    if-eqz v3, :cond_2d

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x71

    if-ne v3, v5, :cond_2

    .line 1806
    :cond_2d
    const/4 v3, 0x0

    aget-byte v3, v17, v3

    and-int/lit8 v28, v3, 0xf

    .line 1809
    .local v28, indicator:I
    const/16 v3, 0xa

    move/from16 v0, v28

    if-ne v0, v3, :cond_2f

    .line 1811
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    .line 1816
    :cond_2e
    :goto_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->notifyMessageWaitingIndicator()V

    goto/16 :goto_1

    .line 1812
    :cond_2f
    const/4 v3, 0x5

    move/from16 v0, v28

    if-ne v0, v3, :cond_2e

    .line 1813
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    goto :goto_c

    .line 1821
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v17           #data:[B
    .end local v28           #indicator:I
    :sswitch_c
    const/16 v31, 0x1

    .line 1823
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 1824
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object/from16 v17, v0

    .line 1826
    .restart local v17       #data:[B
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 1830
    const/4 v3, 0x0

    move-object/from16 v0, v17

    array-length v5, v0

    move-object/from16 v0, v17

    invoke-static {v0, v3, v5}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    .line 1832
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iccid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1837
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v17           #data:[B
    :sswitch_d
    const/16 v31, 0x1

    .line 1838
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 1839
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object/from16 v17, v0

    .line 1840
    .restart local v17       #data:[B
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_30

    .line 1841
    const-string v3, "GSM"

    const-string v5, "SIMRecords: query UIM ID fail!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1844
    :cond_30
    if-eqz v17, :cond_2

    move-object/from16 v0, v17

    array-length v3, v0

    const/4 v5, 0x1

    if-le v3, v5, :cond_2

    .line 1845
    const/4 v3, 0x0

    aget-byte v3, v17, v3

    new-array v0, v3, [B

    move-object/from16 v18, v0

    .line 1846
    .local v18, dst:[B
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget-byte v6, v17, v6

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v3, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1847
    const/4 v3, 0x0

    aget-byte v3, v17, v3

    new-array v0, v3, [B

    move-object/from16 v19, v0

    .line 1849
    .local v19, dsttemp:[B
    const/4 v3, 0x0

    aget-byte v56, v17, v3

    .local v56, xx:I
    const/16 v57, 0x0

    .local v57, yy:I
    :goto_d
    if-lez v56, :cond_31

    .line 1850
    add-int/lit8 v3, v56, -0x1

    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v57

    invoke-static {v0, v3, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1849
    add-int/lit8 v56, v56, -0x1

    add-int/lit8 v57, v57, 0x1

    goto :goto_d

    .line 1851
    :cond_31
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v53

    .line 1852
    .local v53, uimId:Ljava/lang/String;
    invoke-virtual/range {v53 .. v53}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v53

    .line 1853
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v5, "gsm.cdma.uim.id"

    move-object/from16 v0, v53

    invoke-virtual {v3, v5, v0}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1854
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uim id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v53

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_1

    .line 1861
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v17           #data:[B
    .end local v18           #dst:[B
    .end local v19           #dsttemp:[B
    .end local v53           #uimId:Ljava/lang/String;
    .end local v56           #xx:I
    .end local v57           #yy:I
    :sswitch_e
    const/16 v31, 0x1

    .line 1863
    :try_start_b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mloadEFCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mloadEFCount:I

    .line 1866
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 1867
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object/from16 v17, v0

    .line 1869
    .restart local v17       #data:[B
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v3, :cond_38

    .line 1896
    :try_start_c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_32

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v3, :cond_32

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_33

    :cond_32
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v3, :cond_33

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x6

    if-lt v3, v5, :cond_33

    .line 1898
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v39

    .line 1899
    .restart local v39       #mccmncCode:Ljava/lang/String;
    sget-object v13, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v13       #arr$:[Ljava/lang/String;
    array-length v0, v13

    move/from16 v34, v0

    .restart local v34       #len$:I
    const/16 v24, 0x0

    .restart local v24       #i$:I
    :goto_e
    move/from16 v0, v24

    move/from16 v1, v34

    if-ge v0, v1, :cond_33

    aget-object v38, v13, v24

    .line 1900
    .restart local v38       #mccmnc:Ljava/lang/String;
    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 1901
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1907
    .end local v13           #arr$:[Ljava/lang/String;
    .end local v24           #i$:I
    .end local v34           #len$:I
    .end local v38           #mccmnc:Ljava/lang/String;
    .end local v39           #mccmncCode:Ljava/lang/String;
    :cond_33
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v3, :cond_34

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_36

    .line 1908
    :cond_34
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0

    if-eqz v3, :cond_8b

    .line 1912
    :try_start_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v37

    .line 1916
    .restart local v37       #mcc:I
    sget-object v3, Lcom/android/internal/telephony/gsm/SIMRecords;->sPatternTataDoCoMo:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_35

    sget-object v3, Lcom/android/internal/telephony/gsm/SIMRecords;->sPatternAircel:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_35

    sget-object v3, Lcom/android/internal/telephony/gsm/SIMRecords;->sPatternVideocon:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 1919
    :cond_35
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_0

    .line 1938
    .end local v37           #mcc:I
    :cond_36
    :goto_f
    :try_start_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v3, :cond_37

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v3, :cond_37

    .line 1944
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v3, :cond_37

    .line 1945
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V

    .line 1951
    :cond_37
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mloadEFCount:I

    if-nez v3, :cond_2

    .line 1956
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->approval:Z

    invoke-virtual {v3, v5, v6}, Lcom/android/internal/telephony/PhoneBase;->setTestIcc(Ljava/lang/String;Z)V

    .line 1962
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v25

    .line 1964
    .restart local v25       #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    const-string v5, "23410"

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v25, :cond_2

    .line 1965
    const/16 v3, 0x6f02

    const/16 v5, 0x72

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0

    .line 1966
    :goto_10
    const/16 v31, 0x0

    goto/16 :goto_1

    .line 1873
    .end local v25           #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    :cond_38
    :try_start_f
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_AD: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    move-object/from16 v0, v17

    array-length v3, v0

    const/4 v5, 0x3

    if-ge v3, v5, :cond_3f

    .line 1877
    const-string v3, "GSM"

    const-string v5, "SIMRecords: Corrupt AD data on SIM"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 1896
    :try_start_10
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_39

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v3, :cond_39

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_3a

    :cond_39
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v3, :cond_3a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x6

    if-lt v3, v5, :cond_3a

    .line 1898
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v39

    .line 1899
    .restart local v39       #mccmncCode:Ljava/lang/String;
    sget-object v13, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v13       #arr$:[Ljava/lang/String;
    array-length v0, v13

    move/from16 v34, v0

    .restart local v34       #len$:I
    const/16 v24, 0x0

    .restart local v24       #i$:I
    :goto_11
    move/from16 v0, v24

    move/from16 v1, v34

    if-ge v0, v1, :cond_3a

    aget-object v38, v13, v24

    .line 1900
    .restart local v38       #mccmnc:Ljava/lang/String;
    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 1901
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1907
    .end local v13           #arr$:[Ljava/lang/String;
    .end local v24           #i$:I
    .end local v34           #len$:I
    .end local v38           #mccmnc:Ljava/lang/String;
    .end local v39           #mccmncCode:Ljava/lang/String;
    :cond_3a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v3, :cond_3b

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_3d

    .line 1908
    :cond_3b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_0

    if-eqz v3, :cond_8f

    .line 1912
    :try_start_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v37

    .line 1916
    .restart local v37       #mcc:I
    sget-object v3, Lcom/android/internal/telephony/gsm/SIMRecords;->sPatternTataDoCoMo:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_3c

    sget-object v3, Lcom/android/internal/telephony/gsm/SIMRecords;->sPatternAircel:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_3c

    sget-object v3, Lcom/android/internal/telephony/gsm/SIMRecords;->sPatternVideocon:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_90

    .line 1919
    :cond_3c
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_0

    .line 1938
    .end local v37           #mcc:I
    :cond_3d
    :goto_12
    :try_start_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v3, :cond_3e

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v3, :cond_3e

    .line 1944
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v3, :cond_3e

    .line 1945
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V

    .line 1951
    :cond_3e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mloadEFCount:I

    if-nez v3, :cond_2

    .line 1956
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->approval:Z

    invoke-virtual {v3, v5, v6}, Lcom/android/internal/telephony/PhoneBase;->setTestIcc(Ljava/lang/String;Z)V

    .line 1962
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v25

    .line 1964
    .restart local v25       #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    const-string v5, "23410"

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v25, :cond_2

    .line 1965
    const/16 v3, 0x6f02

    const/16 v5, 0x72

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_0

    goto/16 :goto_10

    .line 1882
    .end local v25           #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    :cond_3f
    const/4 v3, 0x0

    :try_start_13
    aget-byte v3, v17, v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_46

    const/4 v3, 0x1

    :goto_13
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->approval:Z

    .line 1885
    move-object/from16 v0, v17

    array-length v3, v0

    const/4 v5, 0x3

    if-ne v3, v5, :cond_47

    .line 1886
    const-string v3, "GSM"

    const-string v5, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 1896
    :try_start_14
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_40

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v3, :cond_40

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_41

    :cond_40
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v3, :cond_41

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x6

    if-lt v3, v5, :cond_41

    .line 1898
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v39

    .line 1899
    .restart local v39       #mccmncCode:Ljava/lang/String;
    sget-object v13, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v13       #arr$:[Ljava/lang/String;
    array-length v0, v13

    move/from16 v34, v0

    .restart local v34       #len$:I
    const/16 v24, 0x0

    .restart local v24       #i$:I
    :goto_14
    move/from16 v0, v24

    move/from16 v1, v34

    if-ge v0, v1, :cond_41

    aget-object v38, v13, v24

    .line 1900
    .restart local v38       #mccmnc:Ljava/lang/String;
    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_92

    .line 1901
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1907
    .end local v13           #arr$:[Ljava/lang/String;
    .end local v24           #i$:I
    .end local v34           #len$:I
    .end local v38           #mccmnc:Ljava/lang/String;
    .end local v39           #mccmncCode:Ljava/lang/String;
    :cond_41
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v3, :cond_42

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_44

    .line 1908
    :cond_42
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_0

    if-eqz v3, :cond_93

    .line 1912
    :try_start_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v37

    .line 1916
    .restart local v37       #mcc:I
    sget-object v3, Lcom/android/internal/telephony/gsm/SIMRecords;->sPatternTataDoCoMo:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_43

    sget-object v3, Lcom/android/internal/telephony/gsm/SIMRecords;->sPatternAircel:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_43

    sget-object v3, Lcom/android/internal/telephony/gsm/SIMRecords;->sPatternVideocon:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_94

    .line 1919
    :cond_43
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_15} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_0

    .line 1938
    .end local v37           #mcc:I
    :cond_44
    :goto_15
    :try_start_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v3, :cond_45

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v3, :cond_45

    .line 1944
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v3, :cond_45

    .line 1945
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V

    .line 1951
    :cond_45
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mloadEFCount:I

    if-nez v3, :cond_2

    .line 1956
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->approval:Z

    invoke-virtual {v3, v5, v6}, Lcom/android/internal/telephony/PhoneBase;->setTestIcc(Ljava/lang/String;Z)V

    .line 1962
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v25

    .line 1964
    .restart local v25       #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    const-string v5, "23410"

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v25, :cond_2

    .line 1965
    const/16 v3, 0x6f02

    const/16 v5, 0x72

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_0

    goto/16 :goto_10

    .line 1882
    .end local v25           #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    :cond_46
    const/4 v3, 0x0

    goto/16 :goto_13

    .line 1890
    :cond_47
    const/4 v3, 0x3

    :try_start_17
    aget-byte v3, v17, v3

    and-int/lit8 v3, v3, 0xf

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1892
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/16 v5, 0xf

    if-ne v3, v5, :cond_48

    .line 1893
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 1896
    :cond_48
    :try_start_18
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_49

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v3, :cond_49

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_4a

    :cond_49
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v3, :cond_4a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x6

    if-lt v3, v5, :cond_4a

    .line 1898
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v39

    .line 1899
    .restart local v39       #mccmncCode:Ljava/lang/String;
    sget-object v13, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v13       #arr$:[Ljava/lang/String;
    array-length v0, v13

    move/from16 v34, v0

    .restart local v34       #len$:I
    const/16 v24, 0x0

    .restart local v24       #i$:I
    :goto_16
    move/from16 v0, v24

    move/from16 v1, v34

    if-ge v0, v1, :cond_4a

    aget-object v38, v13, v24

    .line 1900
    .restart local v38       #mccmnc:Ljava/lang/String;
    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_96

    .line 1901
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1907
    .end local v13           #arr$:[Ljava/lang/String;
    .end local v24           #i$:I
    .end local v34           #len$:I
    .end local v38           #mccmnc:Ljava/lang/String;
    .end local v39           #mccmncCode:Ljava/lang/String;
    :cond_4a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v3, :cond_4b

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_4d

    .line 1908
    :cond_4b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_0

    if-eqz v3, :cond_97

    .line 1912
    :try_start_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v37

    .line 1916
    .restart local v37       #mcc:I
    sget-object v3, Lcom/android/internal/telephony/gsm/SIMRecords;->sPatternTataDoCoMo:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_4c

    sget-object v3, Lcom/android/internal/telephony/gsm/SIMRecords;->sPatternAircel:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_4c

    sget-object v3, Lcom/android/internal/telephony/gsm/SIMRecords;->sPatternVideocon:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_98

    .line 1919
    :cond_4c
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_19} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_0

    .line 1938
    .end local v37           #mcc:I
    :cond_4d
    :goto_17
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v3, :cond_4e

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v3, :cond_4e

    .line 1944
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v3, :cond_4e

    .line 1945
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V

    .line 1951
    :cond_4e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mloadEFCount:I

    if-nez v3, :cond_2

    .line 1956
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->approval:Z

    invoke-virtual {v3, v5, v6}, Lcom/android/internal/telephony/PhoneBase;->setTestIcc(Ljava/lang/String;Z)V

    .line 1962
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v25

    .line 1964
    .restart local v25       #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    const-string v5, "23410"

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v25, :cond_2

    .line 1965
    const/16 v3, 0x6f02

    const/16 v5, 0x72

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto/16 :goto_10

    .line 1896
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v17           #data:[B
    .end local v25           #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    :catchall_1
    move-exception v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v5, :cond_4f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_50

    :cond_4f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v5, :cond_50

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x6

    if-lt v5, v6, :cond_50

    .line 1898
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x6

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v39

    .line 1899
    .restart local v39       #mccmncCode:Ljava/lang/String;
    sget-object v13, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v13       #arr$:[Ljava/lang/String;
    array-length v0, v13

    move/from16 v34, v0

    .restart local v34       #len$:I
    const/16 v24, 0x0

    .restart local v24       #i$:I
    :goto_18
    move/from16 v0, v24

    move/from16 v1, v34

    if-ge v0, v1, :cond_50

    aget-object v38, v13, v24

    .line 1900
    .restart local v38       #mccmnc:Ljava/lang/String;
    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_86

    .line 1901
    const/4 v5, 0x3

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1907
    .end local v13           #arr$:[Ljava/lang/String;
    .end local v24           #i$:I
    .end local v34           #len$:I
    .end local v38           #mccmnc:Ljava/lang/String;
    .end local v39           #mccmncCode:Ljava/lang/String;
    :cond_50
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v5, :cond_51

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_53

    .line 1908
    :cond_51
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_0

    if-eqz v5, :cond_87

    .line 1912
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v37

    .line 1916
    .restart local v37       #mcc:I
    sget-object v5, Lcom/android/internal/telephony/gsm/SIMRecords;->sPatternTataDoCoMo:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x5

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_52

    sget-object v5, Lcom/android/internal/telephony/gsm/SIMRecords;->sPatternAircel:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x5

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_52

    sget-object v5, Lcom/android/internal/telephony/gsm/SIMRecords;->sPatternVideocon:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x5

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_88

    .line 1919
    :cond_52
    const/4 v5, 0x3

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_1b} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_0

    .line 1938
    .end local v37           #mcc:I
    :cond_53
    :goto_19
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v5, :cond_54

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v5, :cond_54

    .line 1944
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v5, v5, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v5, :cond_54

    .line 1945
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V

    .line 1951
    :cond_54
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mloadEFCount:I

    if-nez v5, :cond_55

    .line 1956
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->approval:Z

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/PhoneBase;->setTestIcc(Ljava/lang/String;Z)V

    .line 1962
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v25

    .line 1964
    .restart local v25       #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    const-string v6, "23410"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_55

    if-eqz v25, :cond_55

    .line 1965
    const/16 v5, 0x6f02

    const/16 v6, 0x72

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1966
    const/16 v31, 0x0

    .line 1896
    .end local v25           #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    :cond_55
    throw v3

    .line 1975
    :sswitch_f
    const/16 v31, 0x1

    .line 1976
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 1977
    .restart local v12       #ar:Landroid/os/AsyncResult;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1981
    .end local v12           #ar:Landroid/os/AsyncResult;
    :sswitch_10
    const/16 v31, 0x1

    .line 1983
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 1984
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object/from16 v17, v0

    .line 1986
    .restart local v17       #data:[B
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 1991
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->cfuQueryCompleted:Z

    .line 1994
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_CFF_CPHS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    goto/16 :goto_1

    .line 2001
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v17           #data:[B
    :sswitch_11
    const/16 v31, 0x1

    .line 2003
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2004
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object/from16 v17, v0

    .line 2006
    .restart local v17       #data:[B
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 2010
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->parseEfSpdi([B)V

    goto/16 :goto_1

    .line 2015
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v17           #data:[B
    :sswitch_12
    const/16 v31, 0x1

    .line 2017
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2018
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object/from16 v17, v0

    .line 2020
    .restart local v17       #data:[B
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 2023
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->parseEfFplmn([B)V

    goto/16 :goto_1

    .line 2028
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v17           #data:[B
    :sswitch_13
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2029
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    .line 2030
    const-string v3, "GSM"

    const-string v5, "SIMRecords update failed"

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v3, v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 2035
    .end local v12           #ar:Landroid/os/AsyncResult;
    :sswitch_14
    const/16 v31, 0x1

    .line 2037
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2038
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object/from16 v17, v0

    .line 2040
    .restart local v17       #data:[B
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 2044
    new-instance v52, Lcom/android/internal/telephony/gsm/SimTlv;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    array-length v5, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v3, v5}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 2046
    .local v52, tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    :goto_1a
    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2047
    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v3

    const/16 v5, 0x43

    if-ne v3, v5, :cond_56

    .line 2048
    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v6

    array-length v6, v6

    invoke-static {v3, v5, v6}, Lcom/android/internal/telephony/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnHomeName:Ljava/lang/String;

    goto/16 :goto_1

    :cond_56
    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    goto :goto_1a

    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v17           #data:[B
    .end local v52           #tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    :sswitch_15
    const/16 v31, 0x1

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object v11, v0


    .restart local v11       #data:[B
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSmses(Ljava/util/ArrayList;)V

    new-instance v2, Lcom/android/internal/telephony/gsm/UsimServiceTable;

    invoke-direct {v2, v11}, Lcom/android/internal/telephony/gsm/UsimServiceTable;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SST: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2067
    .end local v12           #ar:Landroid/os/AsyncResult;
    :sswitch_16
    const-string v3, "ENF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "marked read: sms "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2072
    :sswitch_17
    const/16 v31, 0x0

    .line 2074
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2076
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object/from16 v27, v0

    .line 2078
    .local v27, index:[I
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_57

    move-object/from16 v0, v27

    array-length v3, v0

    const/4 v5, 0x1

    if-eq v3, v5, :cond_58

    .line 2079
    :cond_57
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SIMRecords] Error on SMS_ON_SIM with exp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2084
    :cond_58
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimSmsRecordIndexes:Ljava/util/LinkedList;

    new-instance v5, Ljava/lang/Integer;

    const/4 v6, 0x0

    aget v6, v27, v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 2087
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "READ EF_SMS RECORD index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v27, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    const/16 v5, 0x6f3c

    const/4 v6, 0x0

    aget v6, v27, v6

    const/16 v7, 0x16

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto/16 :goto_1

    .line 2097
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v27           #index:[I
    :sswitch_18
    const/16 v31, 0x0

    .line 2098
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2099
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_5a

    .line 2101
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimSmsRecordIndexes:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-eqz v3, :cond_59

    .line 2102
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimSmsRecordIndexes:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSms(I[B)V

    goto/16 :goto_1

    .line 2104
    :cond_59
    const/4 v5, -0x1

    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSms(I[B)V

    goto/16 :goto_1

    .line 2107
    :cond_5a
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SIMRecords] Error on GET_SMS with exp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2113
    .end local v12           #ar:Landroid/os/AsyncResult;
    :sswitch_19
    const/16 v31, 0x1

    .line 2115
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2116
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object/from16 v17, v0

    .line 2118
    .restart local v17       #data:[B
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_5b

    .line 2119
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SIMRecords] Error on EF_CBMI with exp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2123
    :cond_5b
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_CBMI length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_CBMI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 2126
    .local v15, channelslList:Ljava/lang/StringBuilder;
    const/4 v3, 0x2

    new-array v0, v3, [B

    move-object/from16 v51, v0

    .line 2129
    .local v51, temp:[B
    if-eqz v17, :cond_2

    .line 2130
    const/16 v23, 0x0

    .restart local v23       #i:I
    :goto_1b
    move-object/from16 v0, v17

    array-length v3, v0

    move/from16 v0, v23

    if-ge v0, v3, :cond_5f

    .line 2132
    aget-byte v3, v17, v23

    const/4 v5, -0x1

    if-eq v3, v5, :cond_5f

    add-int/lit8 v3, v23, 0x1

    aget-byte v3, v17, v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_5f

    .line 2134
    const/4 v3, 0x0

    aget-byte v5, v17, v23

    aput-byte v5, v51, v3

    .line 2135
    const/4 v3, 0x1

    add-int/lit8 v5, v23, 0x1

    aget-byte v5, v17, v5

    aput-byte v5, v51, v3

    .line 2136
    const/4 v3, 0x0

    aget-byte v3, v51, v3

    shl-int/lit8 v3, v3, 0x8

    if-gez v3, :cond_5d

    .line 2137
    const/4 v3, 0x0

    aget-byte v3, v51, v3

    shl-int/lit8 v3, v3, 0x8

    add-int/lit16 v10, v3, 0x100

    .line 2140
    .local v10, a:I
    :goto_1c
    const/4 v3, 0x1

    aget-byte v3, v51, v3

    if-gez v3, :cond_5e

    .line 2141
    const/4 v3, 0x1

    aget-byte v3, v51, v3

    add-int/lit16 v14, v3, 0x100

    .line 2145
    .local v14, b:I
    :goto_1d
    add-int v26, v10, v14

    .line 2146
    .local v26, id:I
    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2147
    move-object/from16 v0, v17

    array-length v3, v0

    add-int/lit8 v3, v3, -0x2

    move/from16 v0, v23

    if-eq v0, v3, :cond_5c

    add-int/lit8 v3, v23, 0x2

    aget-byte v3, v17, v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_5c

    add-int/lit8 v3, v23, 0x3

    aget-byte v3, v17, v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_5c

    .line 2148
    const-string v3, ","

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2130
    :cond_5c
    add-int/lit8 v23, v23, 0x2

    goto :goto_1b

    .line 2139
    .end local v10           #a:I
    .end local v14           #b:I
    .end local v26           #id:I
    :cond_5d
    const/4 v3, 0x0

    aget-byte v3, v51, v3

    shl-int/lit8 v10, v3, 0x8

    .restart local v10       #a:I
    goto :goto_1c

    .line 2143
    :cond_5e
    const/4 v3, 0x1

    aget-byte v14, v51, v3

    .restart local v14       #b:I
    goto :goto_1d

    .line 2152
    .end local v10           #a:I
    .end local v14           #b:I
    :cond_5f
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    .line 2153
    .local v40, mid:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v5, "gsm.sim.cbmi.channel"

    move-object/from16 v0, v40

    invoke-virtual {v3, v5, v0}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2154
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v5, "gsm.cb.max.channel"

    move-object/from16 v0, v17

    array-length v6, v0

    div-int/lit8 v6, v6, 0x2

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2155
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_CBMI length (string): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    array-length v6, v0

    div-int/lit8 v6, v6, 0x2

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2175
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v15           #channelslList:Ljava/lang/StringBuilder;
    .end local v17           #data:[B
    .end local v23           #i:I
    .end local v40           #mid:Ljava/lang/String;
    .end local v51           #temp:[B
    :sswitch_1a
    const-string v3, "*********Set EF CDMI done"

    const-string v5, "completed!! "

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    const/16 v31, 0x0

    .line 2177
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2179
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 2180
    iget-object v3, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v5, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v5, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2182
    iget-object v3, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 2189
    .end local v12           #ar:Landroid/os/AsyncResult;
    :sswitch_1b
    const-string v3, "*********Set EF LP done"

    const-string v5, "completed!! "

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    const/16 v31, 0x0

    .line 2191
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2193
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 2194
    iget-object v3, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v5, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v5, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2196
    iget-object v3, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 2200
    .end local v12           #ar:Landroid/os/AsyncResult;
    :sswitch_1c
    const/16 v31, 0x1

    .line 2202
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2203
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object/from16 v17, v0

    .line 2205
    .restart local v17       #data:[B
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_60

    .line 2206
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SIMRecords] Error on EF_LP with exp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2210
    :cond_60
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    .line 2211
    .local v36, mLpList:Ljava/lang/StringBuilder;
    const/16 v35, 0x0

    .line 2213
    .local v35, lp:Ljava/lang/String;
    if-eqz v17, :cond_64

    .line 2215
    const/16 v23, 0x0

    .restart local v23       #i:I
    :goto_1e
    move-object/from16 v0, v17

    array-length v3, v0

    move/from16 v0, v23

    if-ge v0, v3, :cond_63

    .line 2217
    aget-byte v3, v17, v23

    const/4 v5, -0x1

    if-eq v3, v5, :cond_63

    .line 2218
    aget-byte v3, v17, v23

    if-gez v3, :cond_62

    .line 2219
    aget-byte v3, v17, v23

    add-int/lit16 v0, v3, 0x100

    move/from16 v54, v0

    .line 2222
    .local v54, value:I
    :goto_1f
    invoke-static/range {v54 .. v54}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2223
    move-object/from16 v0, v17

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, v23

    if-eq v0, v3, :cond_61

    add-int/lit8 v3, v23, 0x1

    aget-byte v3, v17, v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_61

    .line 2224
    const-string v3, ","

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2215
    :cond_61
    add-int/lit8 v23, v23, 0x1

    goto :goto_1e

    .line 2221
    .end local v54           #value:I
    :cond_62
    aget-byte v54, v17, v23

    .restart local v54       #value:I
    goto :goto_1f

    .line 2228
    .end local v54           #value:I
    :cond_63
    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 2230
    .end local v23           #i:I
    :cond_64
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_LP length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_LP: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_LP(string): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2233
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x39

    if-eq v3, v5, :cond_65

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x8

    if-ne v3, v5, :cond_2

    .line 2236
    :cond_65
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v5, "gsm.cb.lp"

    move-object/from16 v0, v35

    invoke-virtual {v3, v5, v0}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2237
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v49

    .line 2239
    .local v49, sp:Landroid/content/SharedPreferences;
    invoke-interface/range {v49 .. v49}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v50

    .line 2240
    .local v50, spEditor:Landroid/content/SharedPreferences$Editor;
    if-eqz v35, :cond_67

    .line 2242
    const-string v3, ","

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v42

    .line 2243
    .local v42, num:I
    const/4 v3, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v42

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    .line 2244
    .local v33, langnum:I
    const/16 v3, 0xf

    move/from16 v0, v33

    if-le v0, v3, :cond_66

    .line 2245
    const-string v3, "lang_list"

    const-string v5, "15"

    move-object/from16 v0, v50

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2250
    .end local v33           #langnum:I
    .end local v42           #num:I
    :goto_20
    invoke-interface/range {v50 .. v50}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    .line 2247
    .restart local v33       #langnum:I
    .restart local v42       #num:I
    :cond_66
    const-string v3, "lang_list"

    const/4 v5, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v42

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v50

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_20

    .line 2249
    .end local v33           #langnum:I
    .end local v42           #num:I
    :cond_67
    const-string v3, "lang_list"

    const-string v5, "15"

    move-object/from16 v0, v50

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_20

    .line 2255
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v17           #data:[B
    .end local v35           #lp:Ljava/lang/String;
    .end local v36           #mLpList:Ljava/lang/StringBuilder;
    .end local v49           #sp:Landroid/content/SharedPreferences;
    .end local v50           #spEditor:Landroid/content/SharedPreferences$Editor;
    :sswitch_1d
    const/16 v31, 0x1

    .line 2257
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2258
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object/from16 v17, v0

    .line 2260
    .restart local v17       #data:[B
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_68

    .line 2262
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x31

    if-ne v3, v5, :cond_2

    .line 2263
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mValidSPN:Z

    goto/16 :goto_1

    .line 2273
    :cond_68
    if-eqz v17, :cond_73

    move-object/from16 v0, v17

    array-length v3, v0

    if-lez v3, :cond_73

    .line 2274
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_SST: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    move-object/from16 v0, v17

    array-length v3, v0

    const/16 v5, 0xb

    if-lt v3, v5, :cond_69

    .line 2278
    const/16 v3, 0xa

    aget-byte v3, v17, v3

    and-int/lit8 v3, v3, 0x10

    const/16 v5, 0x10

    if-ne v3, v5, :cond_6d

    const/4 v3, 0x1

    :goto_21
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/IccRecords;->mEPSMMI:Z

    .line 2285
    :cond_69
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v25

    .line 2287
    .restart local v25       #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v25, :cond_6c

    .line 2288
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_6f

    .line 2290
    new-instance v3, Lcom/android/internal/telephony/gsm/UsimServiceTable;

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Lcom/android/internal/telephony/gsm/UsimServiceTable;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    .line 2293
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v3

    if-nez v3, :cond_6a

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 2296
    :cond_6a
    const/4 v3, 0x0

    aget-byte v3, v17, v3

    and-int/lit8 v3, v3, 0x2

    const/4 v5, 0x2

    if-ne v3, v5, :cond_6e

    const/4 v3, 0x1

    :goto_22
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/IccRecords;->mIsFdnEnabled:Z

    .line 2298
    :cond_6b
    move-object/from16 v0, v17

    array-length v3, v0

    const/4 v5, 0x3

    if-lt v3, v5, :cond_6c

    .line 2299
    const/4 v3, 0x2

    aget-byte v3, v17, v3

    and-int/lit8 v3, v3, 0x1

    const/4 v5, 0x1

    if-ne v3, v5, :cond_6c

    .line 2300
    const/16 v3, 0x6f3e

    const/16 v5, 0x71

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2301
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2324
    .end local v25           #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    :cond_6c
    :goto_23
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x31

    if-ne v3, v5, :cond_2

    .line 2325
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_3G_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "gsm.sim.types"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2327
    if-eqz v17, :cond_74

    move-object/from16 v0, v17

    array-length v3, v0

    const/4 v5, 0x3

    if-lt v3, v5, :cond_74

    .line 2328
    const/4 v3, 0x2

    aget-byte v3, v17, v3

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_2

    .line 2329
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mValidSPN:Z

    goto/16 :goto_1

    .line 2278
    :cond_6d
    const/4 v3, 0x0

    goto/16 :goto_21

    .line 2296
    .restart local v25       #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    :cond_6e
    const/4 v3, 0x0

    goto :goto_22

    .line 2306
    :cond_6f
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v3

    if-nez v3, :cond_70

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v3

    if-eqz v3, :cond_71

    .line 2309
    :cond_70
    const/4 v3, 0x0

    aget-byte v3, v17, v3

    and-int/lit8 v3, v3, 0x30

    const/16 v5, 0x30

    if-ne v3, v5, :cond_72

    const/4 v3, 0x1

    :goto_24
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/IccRecords;->mIsFdnEnabled:Z

    .line 2311
    :cond_71
    move-object/from16 v0, v17

    array-length v3, v0

    const/4 v5, 0x4

    if-lt v3, v5, :cond_6c

    .line 2312
    const/4 v3, 0x3

    aget-byte v3, v17, v3

    and-int/lit8 v3, v3, 0x30

    const/16 v5, 0x30

    if-ne v3, v5, :cond_6c

    .line 2313
    const/16 v3, 0x6f3e

    const/16 v5, 0x71

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2314
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    goto :goto_23

    .line 2309
    :cond_72
    const/4 v3, 0x0

    goto :goto_24

    .line 2321
    .end local v25           #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    :cond_73
    const-string v3, "GSM"

    const-string v5, "Empty EF_SST"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23

    .line 2332
    :cond_74
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mValidSPN:Z

    goto/16 :goto_1

    .line 2340
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v17           #data:[B
    :sswitch_1e
    const/16 v31, 0x1

    .line 2342
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2344
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 2348
    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    .line 2350
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iCPHS: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2354
    .end local v12           #ar:Landroid/os/AsyncResult;
    :sswitch_1f
    const/16 v31, 0x0

    .line 2355
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2357
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_75

    .line 2358
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailNum:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    .line 2359
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    .line 2362
    :cond_75
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v3

    if-eqz v3, :cond_77

    .line 2363
    new-instance v4, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    invoke-direct {v4, v3, v5}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2364
    .restart local v4       #adn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v0, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Landroid/os/Message;

    .line 2373
    .local v43, onCphsCompleted:Landroid/os/Message;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_76

    iget-object v3, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_76

    .line 2374
    iget-object v3, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    const/4 v5, 0x0

    iput-object v5, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2376
    iget-object v3, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 2378
    const-string v3, "Callback with MBDN successful."

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2380
    const/16 v43, 0x0

    .line 2385
    :cond_76
    new-instance v3, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/IccRecords;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v3, v5, v6}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v5, 0x6f17

    const/16 v6, 0x6f4a

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x19

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 2391
    .end local v4           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v43           #onCphsCompleted:Landroid/os/Message;
    :cond_77
    iget-object v3, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 2392
    iget-object v3, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v5, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v5, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2394
    iget-object v3, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 2399
    .end local v12           #ar:Landroid/os/AsyncResult;
    :sswitch_20
    const/16 v31, 0x0

    .line 2400
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2401
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_78

    .line 2402
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailNum:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    .line 2403
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    .line 2408
    :goto_25
    iget-object v3, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 2409
    const-string v3, "Callback with CPHS MB successful."

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2410
    iget-object v3, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v5, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v5, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2412
    iget-object v3, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 2405
    :cond_78
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set CPHS MailBox with exception: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_25

    .line 2416
    .end local v12           #ar:Landroid/os/AsyncResult;
    :sswitch_21
    const/16 v31, 0x0

    .line 2417
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2418
    .restart local v12       #ar:Landroid/os/AsyncResult;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sim REFRESH with exception: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2419
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 2420
    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSimRefresh([I)V

    goto/16 :goto_1

    .line 2424
    .end local v12           #ar:Landroid/os/AsyncResult;
    :sswitch_22
    const/16 v31, 0x1

    .line 2426
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2427
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object/from16 v17, v0

    .line 2429
    .restart local v17       #data:[B
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 2434
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->cfuQueryCompleted:Z

    .line 2437
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_CFIS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2440
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    goto/16 :goto_1

    .line 2444
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v17           #data:[B
    :sswitch_23
    const/16 v31, 0x1

    .line 2446
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2448
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_79

    .line 2449
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in fetching EF_CSP data "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2453
    :cond_79
    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object/from16 v17, v0

    .line 2455
    .restart local v17       #data:[B
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_CSP: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2456
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleEfCspData([B)V

    goto/16 :goto_1

    .line 2461
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v17           #data:[B
    :sswitch_24
    const-string v3, "GSM"

    const-string v5, "Delay CFU Query..."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2463
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v3, :cond_2

    .line 2464
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/android/internal/telephony/PhoneBase;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 2467
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isVTEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2468
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/android/internal/telephony/PhoneBase;->getDataCallForwardingOption(ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 2479
    :sswitch_25
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2480
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 2483
    iget-object v0, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    .line 2484
    .local v48, simTypes:Lcom/android/internal/telephony/CommandsInterface$SimTypes;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v5, "gsm.sim.types"

    invoke-virtual/range {v48 .. v48}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2490
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v48           #simTypes:Lcom/android/internal/telephony/CommandsInterface$SimTypes;
    :sswitch_26
    const-string v3, "GSM"

    const-string v5, "EVENT_GET_HTC_SIM_TYPES"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2491
    const/16 v31, 0x1

    .line 2492
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2493
    .restart local v12       #ar:Landroid/os/AsyncResult;
    if-eqz v12, :cond_7a

    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_7b

    .line 2495
    :cond_7a
    const-string v3, "GSM"

    const-string v5, "EVENT_GET_HTC_SIM_TYPES, exception happen !!!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2498
    :cond_7b
    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object/from16 v30, v0

    .line 2499
    .local v30, ints:[I
    const/16 v46, 0x0

    .line 2500
    .local v46, simGroup:I
    move-object/from16 v0, v30

    array-length v3, v0

    const/4 v5, 0x1

    if-le v3, v5, :cond_7d

    .line 2501
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_GET_HTC_SIM_TYPES: simtype group= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v30, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,simtype= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget v6, v30, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2502
    const/4 v3, 0x0

    aget v46, v30, v3

    .line 2503
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "gsm.htc.sim.types.group"

    const/4 v6, 0x0

    aget v6, v30, v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2514
    :goto_26
    const/4 v3, 0x2

    move/from16 v0, v46

    if-eq v0, v3, :cond_7c

    const/4 v3, 0x3

    move/from16 v0, v46

    if-ne v0, v3, :cond_2

    .line 2517
    :cond_7c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v25

    .line 2519
    .restart local v25       #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    const/16 v3, 0x6f31

    const/16 v5, 0x27

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2520
    const/16 v31, 0x0

    .line 2521
    goto/16 :goto_1

    .line 2505
    .end local v25           #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    :cond_7d
    const-string v3, "GSM"

    const-string v5, "get ruturning value 2 from WSD"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 2527
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v30           #ints:[I
    .end local v46           #simGroup:I
    :sswitch_27
    const-string v3, "GSM"

    const-string v5, "EVENT_PBK_READY"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2530
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v3

    if-nez v3, :cond_7e

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v3

    if-nez v3, :cond_7e

    .line 2533
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->getSubscriberNumber(Landroid/os/Message;)V

    .line 2537
    :cond_7e
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 2540
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    const-string v5, "LOADED_UNDER_NETWORK_LOCK"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2543
    const-string v3, "GSM"

    const-string v5, "(EVENT_PBK_READY) Broadcast INTENT_VALUE_ICC_LOADED_UNDER_NETWORK_LOCK to load sim pb done."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2548
    :cond_7f
    const-string v3, "gsm.sim.types"

    const-string v5, ""

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 2549
    .local v47, simType:Ljava/lang/String;
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_2G_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v47

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2550
    const-string v3, "android.intent.action.SIM_FILE_UPDATE"

    const/16 v5, 0x6f3a

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->dropSimPbkEntries(Ljava/lang/String;I)V

    .line 2551
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    goto/16 :goto_1

    .line 2558
    .end local v47           #simType:Ljava/lang/String;
    :sswitch_28
    const-string v3, "GSM"

    const-string v5, "EVENT_RETRY_MSISDN_QUERY"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->getSubscriberNumber(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 2566
    :sswitch_29
    const-string v3, "GSM"

    const-string v5, "EVENT_SIM_SWAP_STATUS"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2567
    new-instance v29, Landroid/content/Intent;

    const-string v3, "android.intent.action.ACTION_SIM_SWAP_STATUS"

    move-object/from16 v0, v29

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2568
    .local v29, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 2576
    .end local v29           #intent:Landroid/content/Intent;
    :sswitch_2a
    const/16 v31, 0x1

    .line 2577
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2579
    .restart local v12       #ar:Landroid/os/AsyncResult;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/IccRecords;->mEUTRAN_excpetion:Z

    .line 2580
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_82

    .line 2581
    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object/from16 v17, v0

    .line 2585
    .restart local v17       #data:[B
    move-object/from16 v0, v17

    array-length v3, v0

    const/4 v5, 0x5

    if-lt v3, v5, :cond_81

    .line 2586
    const/4 v3, 0x3

    aget-byte v3, v17, v3

    and-int/lit8 v3, v3, 0x40

    const/16 v5, 0x40

    if-ne v3, v5, :cond_80

    .line 2587
    const-string v3, "GSM"

    const-string v5, "access technology selected"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2588
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/IccRecords;->mEUTRAN:Z

    goto/16 :goto_1

    .line 2590
    :cond_80
    const-string v3, "GSM"

    const-string v5, "access technology not selected"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2591
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/IccRecords;->mEUTRAN:Z

    goto/16 :goto_1

    .line 2594
    :cond_81
    const-string v3, "GSM"

    const-string v5, "length of EF_HPLMNwAcT is incorrect"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2597
    .end local v17           #data:[B
    :cond_82
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/IccRecords;->mEUTRAN_excpetion:Z

    .line 2598
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GET EF_HPLMNwAcT, Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2608
    .end local v12           #ar:Landroid/os/AsyncResult;
    :sswitch_2b
    const-string v3, "GSM"

    const-string v5, "EVENT_GET_GID1_DONE"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2609
    const/16 v31, 0x1

    .line 2610
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2611
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object/from16 v17, v0

    .line 2612
    .restart local v17       #data:[B
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 2619
    const/16 v23, 0x0

    .restart local v23       #i:I
    :goto_27
    move-object/from16 v0, v17

    array-length v3, v0

    move/from16 v0, v23

    if-ge v0, v3, :cond_83

    .line 2620
    aget-byte v3, v17, v23

    const/4 v5, -0x1

    if-ne v3, v5, :cond_84

    .line 2624
    :cond_83
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v22

    .line 2626
    .local v22, gid:Ljava/lang/String;
    if-nez v23, :cond_85

    .line 2627
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mGID1:Ljava/lang/String;

    .line 2631
    :goto_28
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_GID1: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mGID1:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2619
    .end local v22           #gid:Ljava/lang/String;
    :cond_84
    add-int/lit8 v23, v23, 0x1

    goto :goto_27

    .line 2629
    .restart local v22       #gid:Ljava/lang/String;
    :cond_85
    const/4 v3, 0x0

    mul-int/lit8 v5, v23, 0x2

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mGID1:Ljava/lang/String;

    goto :goto_28

    .line 2639
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v17           #data:[B
    .end local v22           #gid:Ljava/lang/String;
    .end local v23           #i:I
    :sswitch_2c
    const-string v3, "GSM"

    const-string v5, "EVENT_GET_O2_PERSO_DONE"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2640
    const/16 v31, 0x1

    .line 2641
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2642
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object/from16 v17, v0

    .line 2644
    .restart local v17       #data:[B
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEFO2Perso:[B

    .line 2645
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 2649
    if-eqz v17, :cond_2

    move-object/from16 v0, v17

    array-length v3, v0

    if-lez v3, :cond_2

    .line 2650
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_O2_PERSO: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mEFO2Perso:[B

    goto/16 :goto_1

    .line 1899
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v17           #data:[B
    .restart local v13       #arr$:[Ljava/lang/String;
    .restart local v24       #i$:I
    .restart local v34       #len$:I
    .restart local v38       #mccmnc:Ljava/lang/String;
    .restart local v39       #mccmncCode:Ljava/lang/String;
    :cond_86
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_18

    .line 1933
    .end local v13           #arr$:[Ljava/lang/String;
    .end local v24           #i$:I
    .end local v34           #len$:I
    .end local v38           #mccmnc:Ljava/lang/String;
    .end local v39           #mccmncCode:Ljava/lang/String;
    :cond_87
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1935
    const-string v5, "GSM"

    const-string v6, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    .line 1927
    :catch_2
    move-exception v20

    .line 1928
    .restart local v20       #e:Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1929
    const-string v5, "GSM"

    const-string v6, "SIMRecords: Corrupt IMSI!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_0

    goto/16 :goto_19

    .line 1920
    .end local v20           #e:Ljava/lang/NumberFormatException;
    .restart local v37       #mcc:I
    :cond_88
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const-string v6, "72234"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_89

    .line 1922
    const/4 v5, 0x2

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    goto/16 :goto_19

    .line 1924
    :cond_89
    invoke-static/range {v37 .. v37}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_1d} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_0

    goto/16 :goto_19

    .line 1899
    .end local v37           #mcc:I
    .restart local v12       #ar:Landroid/os/AsyncResult;
    .restart local v13       #arr$:[Ljava/lang/String;
    .restart local v17       #data:[B
    .restart local v24       #i$:I
    .restart local v34       #len$:I
    .restart local v38       #mccmnc:Ljava/lang/String;
    .restart local v39       #mccmncCode:Ljava/lang/String;
    :cond_8a
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_e

    .line 1933
    .end local v13           #arr$:[Ljava/lang/String;
    .end local v24           #i$:I
    .end local v34           #len$:I
    .end local v38           #mccmnc:Ljava/lang/String;
    .end local v39           #mccmncCode:Ljava/lang/String;
    :cond_8b
    const/4 v3, 0x0

    :try_start_1e
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1935
    const-string v3, "GSM"

    const-string v5, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 1927
    :catch_3
    move-exception v20

    .line 1928
    .restart local v20       #e:Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1929
    const-string v3, "GSM"

    const-string v5, "SIMRecords: Corrupt IMSI!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_0

    goto/16 :goto_f

    .line 1920
    .end local v20           #e:Ljava/lang/NumberFormatException;
    .restart local v37       #mcc:I
    :cond_8c
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const-string v5, "72234"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 1922
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    goto/16 :goto_f

    .line 1924
    :cond_8d
    invoke-static/range {v37 .. v37}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_1f} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_1f} :catch_0

    goto/16 :goto_f

    .line 1899
    .end local v37           #mcc:I
    .restart local v13       #arr$:[Ljava/lang/String;
    .restart local v24       #i$:I
    .restart local v34       #len$:I
    .restart local v38       #mccmnc:Ljava/lang/String;
    .restart local v39       #mccmncCode:Ljava/lang/String;
    :cond_8e
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_11

    .line 1933
    .end local v13           #arr$:[Ljava/lang/String;
    .end local v24           #i$:I
    .end local v34           #len$:I
    .end local v38           #mccmnc:Ljava/lang/String;
    .end local v39           #mccmncCode:Ljava/lang/String;
    :cond_8f
    const/4 v3, 0x0

    :try_start_20
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1935
    const-string v3, "GSM"

    const-string v5, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 1927
    :catch_4
    move-exception v20

    .line 1928
    .restart local v20       #e:Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1929
    const-string v3, "GSM"

    const-string v5, "SIMRecords: Corrupt IMSI!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_20} :catch_0

    goto/16 :goto_12

    .line 1920
    .end local v20           #e:Ljava/lang/NumberFormatException;
    .restart local v37       #mcc:I
    :cond_90
    :try_start_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const-string v5, "72234"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_91

    .line 1922
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    goto/16 :goto_12

    .line 1924
    :cond_91
    invoke-static/range {v37 .. v37}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_21} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_21} :catch_0

    goto/16 :goto_12

    .line 1899
    .end local v37           #mcc:I
    .restart local v13       #arr$:[Ljava/lang/String;
    .restart local v24       #i$:I
    .restart local v34       #len$:I
    .restart local v38       #mccmnc:Ljava/lang/String;
    .restart local v39       #mccmncCode:Ljava/lang/String;
    :cond_92
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_14

    .line 1933
    .end local v13           #arr$:[Ljava/lang/String;
    .end local v24           #i$:I
    .end local v34           #len$:I
    .end local v38           #mccmnc:Ljava/lang/String;
    .end local v39           #mccmncCode:Ljava/lang/String;
    :cond_93
    const/4 v3, 0x0

    :try_start_22
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1935
    const-string v3, "GSM"

    const-string v5, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 1927
    :catch_5
    move-exception v20

    .line 1928
    .restart local v20       #e:Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1929
    const-string v3, "GSM"

    const-string v5, "SIMRecords: Corrupt IMSI!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_22} :catch_0

    goto/16 :goto_15

    .line 1920
    .end local v20           #e:Ljava/lang/NumberFormatException;
    .restart local v37       #mcc:I
    :cond_94
    :try_start_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const-string v5, "72234"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_95

    .line 1922
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    goto/16 :goto_15

    .line 1924
    :cond_95
    invoke-static/range {v37 .. v37}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_23} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_23} :catch_0

    goto/16 :goto_15

    .line 1899
    .end local v37           #mcc:I
    .restart local v13       #arr$:[Ljava/lang/String;
    .restart local v24       #i$:I
    .restart local v34       #len$:I
    .restart local v38       #mccmnc:Ljava/lang/String;
    .restart local v39       #mccmncCode:Ljava/lang/String;
    :cond_96
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_16

    .line 1933
    .end local v13           #arr$:[Ljava/lang/String;
    .end local v24           #i$:I
    .end local v34           #len$:I
    .end local v38           #mccmnc:Ljava/lang/String;
    .end local v39           #mccmncCode:Ljava/lang/String;
    :cond_97
    const/4 v3, 0x0

    :try_start_24
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1935
    const-string v3, "GSM"

    const-string v5, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 1927
    :catch_6
    move-exception v20

    .line 1928
    .restart local v20       #e:Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1929
    const-string v3, "GSM"

    const-string v5, "SIMRecords: Corrupt IMSI!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_24} :catch_0

    goto/16 :goto_17

    .line 1920
    .end local v20           #e:Ljava/lang/NumberFormatException;
    .restart local v37       #mcc:I
    :cond_98
    :try_start_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const-string v5, "72234"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_99

    .line 1922
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    goto/16 :goto_17

    .line 1924
    :cond_99
    invoke-static/range {v37 .. v37}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_25} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_25} :catch_0

    goto/16 :goto_17

    .line 1263
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_4
        0x4 -> :sswitch_c
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_a
        0x8 -> :sswitch_b
        0x9 -> :sswitch_e
        0xa -> :sswitch_7
        0xb -> :sswitch_6
        0xc -> :sswitch_f
        0xd -> :sswitch_11
        0xe -> :sswitch_13
        0xf -> :sswitch_14
        0x11 -> :sswitch_1d
        0x12 -> :sswitch_15
        0x13 -> :sswitch_16
        0x14 -> :sswitch_1f
        0x15 -> :sswitch_17
        0x16 -> :sswitch_18
        0x18 -> :sswitch_10
        0x19 -> :sswitch_20
        0x1a -> :sswitch_1e
        0x1e -> :sswitch_9
        0x1f -> :sswitch_21
        0x20 -> :sswitch_22
        0x21 -> :sswitch_23
        0x23 -> :sswitch_19
        0x24 -> :sswitch_1a
        0x26 -> :sswitch_26
        0x27 -> :sswitch_d
        0x65 -> :sswitch_25
        0x68 -> :sswitch_1c
        0x69 -> :sswitch_1b
        0x6a -> :sswitch_2
        0x6b -> :sswitch_12
        0x6c -> :sswitch_24
        0x6d -> :sswitch_27
        0x6e -> :sswitch_28
        0x6f -> :sswitch_3
        0x70 -> :sswitch_29
        0x71 -> :sswitch_2b
        0x72 -> :sswitch_2c
        0x73 -> :sswitch_8
        0x74 -> :sswitch_2a
    .end sparse-switch
.end method

.method isCallForwardingEnabled()Z
    .locals 1

    .prologue
    .line 3866
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    return v0
.end method

.method public isCspPlmnEnabled()Z
    .locals 1

    .prologue
    .line 3647
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    return v0
.end method

.method public isSIMPhonebookFileId(I)Z
    .locals 2
    .parameter "efid"

    .prologue
    .line 3844
    :try_start_0
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 3845
    .local v0, simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 3846
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->isSIMPhonebookFileId(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3850
    .end local v0           #simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :goto_0
    return v1

    .line 3848
    :catch_0
    move-exception v1

    .line 3850
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 3635
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3636
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 3639
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3640
    return-void
.end method

.method protected onAllRecordsLoaded()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 2988
    const-string v3, "GSM"

    const-string v4, "SIMRecords: record load complete"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2990
    iput-boolean v5, p0, Lcom/android/internal/telephony/IccRecords;->mIsRecordsLoad:Z

    .line 2994
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v3, :cond_0

    .line 2996
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mloadCompleted:Z

    .line 3000
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkcallForwardingStatus()V

    .line 3003
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 3006
    .local v2, operator:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->initUSSDExcludeNumbers()V

    .line 3013
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVoiceMailByCountry(Ljava/lang/String;)V

    .line 3014
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->setSpnFromConfig(Ljava/lang/String;)V

    .line 3017
    .end local v2           #operator:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 3018
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    new-instance v4, Landroid/os/AsyncResult;

    invoke-direct {v4, v8, v8, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 3022
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 3023
    .restart local v2       #operator:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v4, "gsm.sim.operator.numeric"

    invoke-virtual {v3, v4, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3025
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 3026
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v4, "gsm.sim.operator.iso-country"

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3034
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    const-string v4, "LOADED"

    invoke-virtual {v3, v4, v8}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 3047
    .end local v2           #operator:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 3029
    .restart local v2       #operator:Ljava/lang/String;
    :cond_2
    const-string v3, "SIM"

    const-string v4, "[SIMRecords] onAllRecordsLoaded: imsi is NULL!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3037
    .end local v2           #operator:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    if-eqz v3, :cond_1

    .line 3038
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v0

    .line 3039
    .local v0, appId:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;

    move-result-object v1

    .line 3040
    .local v1, iccCardPxy:Lcom/android/internal/telephony/IccCardProxy;
    if-eqz v1, :cond_1

    .line 3041
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIMRecords "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": record load complete"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3042
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/IccCardProxy;->setAllRecordsLoaded(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onRadioOffOrNotAvailable()V
    .locals 4

    .prologue
    const/4 v0, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 502
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    .line 503
    iput-object v2, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    .line 504
    iput-object v2, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    .line 505
    iput v3, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    .line 506
    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 507
    iput-object v2, p0, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    .line 509
    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    .line 510
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    .line 511
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    .line 512
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    .line 513
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnHomeName:Ljava/lang/String;

    .line 515
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFPLMNList:Ljava/util/ArrayList;

    .line 516
    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mOperatorNameSource:I

    .line 519
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 521
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gsm.sim.operator.numeric"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gsm.sim.operator.alpha"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gsm.sim.operator.iso-country"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gsm.sim.cbmi.channel"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    iput-boolean v3, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    .line 533
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->resetVoiceCallForwardingFlag(IZ)V

    .line 539
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mMsisdnRecordList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 543
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mGID1:Ljava/lang/String;

    .line 546
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEFO2Perso:[B

    .line 550
    iput-boolean v3, p0, Lcom/android/internal/telephony/IccRecords;->mIsRecordsLoad:Z

    .line 552
    return-void
.end method

.method protected onRecordLoaded()V
    .locals 2

    .prologue
    .line 2965
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2967
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2970
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v0, :cond_0

    .line 2971
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    if-nez v0, :cond_0

    .line 2974
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchMWIfromUE()V

    .line 2980
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onAllRecordsLoaded()V

    .line 2985
    :cond_1
    :goto_0
    return-void

    .line 2981
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    if-gez v0, :cond_1

    .line 2982
    const-string v0, "GSM"

    const-string v1, "SIMRecords: recordsToLoad <0, programmer error suspected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2983
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    goto :goto_0
.end method

.method public onRefresh(Z[I)V
    .locals 0
    .parameter "fileChanged"
    .parameter "fileList"

    .prologue
    .line 1174
    if-eqz p1, :cond_0

    .line 1178
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    .line 1180
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->dropSimPbkEntries()V

    .line 1182
    :cond_0
    return-void
.end method

.method public onSimReady()V
    .locals 3

    .prologue
    .line 3111
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3113
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 3118
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    .line 3120
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->dropSimPbkEntries()V

    .line 3122
    return-void
.end method

.method queryCFUIfNecessary()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1114
    iget-boolean v3, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    if-eqz v3, :cond_0

    .line 1115
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1165
    :cond_0
    :goto_0
    return-void

    .line 1119
    :cond_1
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->cfuQueryCompleted:Z

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mloadCompleted:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->checkTestIcc()Z

    move-result v3

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mIsMFG:Z

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getNetwrorkType()I

    move-result v3

    const/16 v6, 0xe

    if-eq v3, v6, :cond_7

    .line 1122
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "cfu_query_when_campon"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_8

    move v0, v4

    .line 1125
    .local v0, cfuQuery:Z
    :goto_1
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0x99

    if-ne v3, v6, :cond_2

    .line 1126
    const/4 v0, 0x0

    .line 1129
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1130
    const/4 v0, 0x1

    .line 1134
    :cond_3
    const/4 v1, 0x0

    .line 1135
    .local v1, noCfuQuery:Z
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_5

    .line 1136
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 1137
    .local v2, operator:Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 1138
    sget-object v3, Lcom/android/internal/telephony/gsm/SIMRecords;->ORANGE_NETWORKLIST:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1139
    const/4 v1, 0x1

    .line 1143
    :cond_4
    if-nez v1, :cond_5

    if-ne v0, v4, :cond_5

    .line 1146
    const/16 v3, 0x6c

    const-wide/16 v6, 0x3e8

    invoke-virtual {p0, v3, v6, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->sendEmptyMessageDelayed(IJ)Z

    .line 1147
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->cfuQueryCompleted:Z

    .line 1151
    .end local v2           #operator:Ljava/lang/String;
    :cond_5
    if-eqz v0, :cond_6

    if-eqz v1, :cond_7

    .line 1154
    :cond_6
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->cfuQueryCompleted:Z

    .line 1160
    .end local v0           #cfuQuery:Z
    .end local v1           #noCfuQuery:Z
    :cond_7
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->disableCfuIcon:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    if-eqz v3, :cond_0

    .line 1161
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->disableCfuIcon:Z

    .line 1162
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyCallForwardingIndicator()V

    goto/16 :goto_0

    :cond_8
    move v0, v5

    .line 1122
    goto :goto_1
.end method

.method resetVoiceCallForwardingFlag(IZ)V
    .locals 2
    .parameter "line"
    .parameter "enable"

    .prologue
    const/4 v1, 0x1

    .line 1102
    if-eq p1, v1, :cond_1

    .line 1109
    :cond_0
    :goto_0
    return-void

    .line 1104
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    if-eq v0, p2, :cond_0

    .line 1106
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->disableCfuIcon:Z

    .line 1107
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyCallForwardingIndicator()V

    goto :goto_0
.end method

.method public setCBLanguageEFlp([B)V
    .locals 3
    .parameter "lp"

    .prologue
    .line 2853
    const-string v0, "ENF"

    const-string v1, "setCBMsgIdEFcbmi()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2856
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f05

    const/16 v2, 0x69

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 2860
    return-void
.end method

.method public setCBMsgIdEFcbmi([BLandroid/os/Message;)V
    .locals 3
    .parameter "msgId"
    .parameter "onComplete"

    .prologue
    .line 2865
    const-string v0, "ENF"

    const-string v1, "setCBMsgIdEFcbmi()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2868
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f45

    const/16 v2, 0x24

    invoke-virtual {p0, v2, p2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 2873
    return-void
.end method

.method public setDataCallForwardingFlag(IZILjava/lang/String;)V
    .locals 10
    .parameter "line"
    .parameter "enable"
    .parameter "serviceClass"
    .parameter "dialNumber"

    .prologue
    const/16 v3, 0xe

    const/4 v0, 0x1

    .line 1014
    if-eq p1, v0, :cond_1

    .line 1095
    :cond_0
    :goto_0
    return-void

    .line 1016
    :cond_1
    const-string v0, "SIMRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataCallForwardingFlag enable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    iput-boolean p2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->dataCallForwardingEnabled:Z

    .line 1024
    if-eqz p2, :cond_2

    .line 1025
    iput-object p4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mDataCFUNumber:Ljava/lang/String;

    .line 1026
    const-string v0, "SIMRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDataCFUNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mDataCFUNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyCallForwardingIndicator()V

    .line 1037
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    if-eqz v0, :cond_4

    .line 1039
    if-eqz p2, :cond_6

    .line 1043
    if-nez p3, :cond_5

    .line 1044
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    .line 1049
    :goto_1
    if-eqz p4, :cond_3

    .line 1050
    invoke-static {p4}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v8

    .line 1051
    .local v8, str:[B
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x2

    array-length v2, v8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1052
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v2, 0x3

    array-length v3, v8

    invoke-static {v8, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1066
    .end local v8           #str:[B
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6fcb

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/16 v9, 0x6fcb

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v5, v9}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 1072
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    if-eqz v0, :cond_0

    .line 1073
    if-eqz p2, :cond_7

    .line 1074
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0xa

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1083
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f13

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/16 v3, 0xe

    const/16 v4, 0x6f13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1088
    :catch_0
    move-exception v6

    .line 1089
    .local v6, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "GSM"

    const-string v1, "Error saving call fowarding flag to SIM. Probably malformed SIM record"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1046
    .end local v6           #ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    and-int/lit8 v3, p3, 0x1f

    int-to-byte v3, v3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_1

    .line 1056
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xef

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1058
    const/4 v7, 0x2

    .local v7, i:I
    :goto_3
    if-ge v7, v3, :cond_3

    .line 1059
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    aget-byte v1, v0, v7

    or-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    .line 1058
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1077
    .end local v7           #i:I
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0x5

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 9
    .parameter "alphaTag"
    .parameter "number"
    .parameter "onComplete"

    .prologue
    const/4 v5, 0x0

    const/16 v2, 0x6f40

    const/16 v8, 0x1e

    const/4 v4, 0x1

    .line 598
    iput-object p2, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTemp:Ljava/lang/String;

    .line 599
    iput-object p1, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTagTemp:Ljava/lang/String;

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set MSISDN: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTagTemp:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "xxxxxxx"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 601
    new-instance v1, Lcom/android/internal/telephony/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTagTemp:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTemp:Ljava/lang/String;

    invoke-direct {v1, v0, v3}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    .local v1, adn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v7

    .line 606
    .local v7, card:Lcom/android/internal/telephony/IccCard;
    if-eqz v7, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v6, p0, Lcom/android/internal/telephony/IccRecords;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v3, v6}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v3, 0x6f4e

    invoke-virtual {p0, v8, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    .line 620
    :goto_0
    return-void

    .line 615
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v6, p0, Lcom/android/internal/telephony/IccRecords;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v3, v6}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v3, 0x6f4a

    invoke-virtual {p0, v8, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public setOperatorNameSource(I)V
    .locals 0
    .parameter "source"

    .prologue
    .line 3781
    iput p1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mOperatorNameSource:I

    .line 3782
    return-void
.end method

.method public setSubsidyLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "subsidyType"
    .parameter "passWord"
    .parameter "response"

    .prologue
    .line 3764
    const/16 v1, 0x67

    invoke-virtual {p0, v1, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3765
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, p2, v0}, Lcom/android/internal/telephony/CommandsInterface;->setSubsidyLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 3767
    return-void
.end method

.method public setVoiceCallForwardingFlag(IZ)V
    .locals 8
    .parameter "line"
    .parameter "enable"

    .prologue
    const/4 v0, 0x1

    .line 881
    if-eq p1, v0, :cond_1

    .line 929
    :cond_0
    :goto_0
    return-void

    .line 883
    :cond_1
    iput-boolean p2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    .line 885
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->notifyCallForwardingIndicator()V

    .line 888
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    if-eqz v0, :cond_2

    .line 890
    if-eqz p2, :cond_3

    .line 891
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    or-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 901
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6fcb

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/16 v7, 0x6fcb

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 907
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    if-eqz v0, :cond_0

    .line 908
    if-eqz p2, :cond_4

    .line 909
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0xa

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 918
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f13

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/16 v3, 0xe

    const/16 v4, 0x6f13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 923
    :catch_0
    move-exception v6

    .line 924
    .local v6, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "GSM"

    const-string v1, "Error saving call fowarding flag to SIM. Probably malformed SIM record"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 893
    .end local v6           #ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xfe

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_1

    .line 912
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0x5

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public setVoiceCallForwardingFlag(IZILjava/lang/String;)V
    .locals 10
    .parameter "line"
    .parameter "enable"
    .parameter "serviceClass"
    .parameter "dialNumber"

    .prologue
    const/16 v3, 0xe

    const/4 v0, 0x1

    .line 935
    if-eq p1, v0, :cond_1

    .line 1009
    :cond_0
    :goto_0
    return-void

    .line 937
    :cond_1
    iput-boolean p2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    .line 942
    if-eqz p2, :cond_2

    .line 943
    iput-object p4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCFUNumber:Ljava/lang/String;

    .line 944
    const-string v0, "SIMRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCFUNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCFUNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyCallForwardingIndicator()V

    .line 953
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    if-eqz v0, :cond_4

    .line 955
    if-eqz p2, :cond_6

    .line 959
    if-nez p3, :cond_5

    .line 960
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    .line 965
    :goto_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 966
    invoke-static {p4}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v8

    .line 967
    .local v8, str:[B
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x2

    array-length v2, v8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 968
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v2, 0x3

    array-length v3, v8

    invoke-static {v8, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 981
    .end local v8           #str:[B
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6fcb

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/16 v9, 0x6fcb

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v5, v9}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 987
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    if-eqz v0, :cond_0

    .line 988
    if-eqz p2, :cond_7

    .line 989
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0xa

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 998
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f13

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/16 v3, 0xe

    const/16 v4, 0x6f13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1003
    :catch_0
    move-exception v6

    .line 1004
    .local v6, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "GSM"

    const-string v1, "Error saving call fowarding flag to SIM. Probably malformed SIM record"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 962
    .end local v6           #ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    and-int/lit8 v3, p3, 0x1f

    int-to-byte v3, v3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_1

    .line 972
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xfe

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 974
    const/4 v7, 0x2

    .local v7, i:I
    :goto_3
    if-ge v7, v3, :cond_3

    .line 975
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    aget-byte v1, v0, v7

    or-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    .line 974
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 992
    .end local v7           #i:I
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0x5

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .parameter "alphaTag"
    .parameter "voiceNumber"
    .parameter "onComplete"

    .prologue
    const/4 v5, 0x0

    .line 675
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccRecords;->isVoiceMailFixed:Z

    if-eqz v0, :cond_0

    .line 676
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/IccVmFixedException;

    const-string v3, "Voicemail number is fixed by operator"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/IccVmFixedException;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 678
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 720
    :goto_0
    return-void

    .line 682
    :cond_0
    iput-object p2, p0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailNum:Ljava/lang/String;

    .line 688
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailTag:Ljava/lang/String;

    .line 691
    new-instance v1, Lcom/android/internal/telephony/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailNum:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    .local v1, adn:Lcom/android/internal/telephony/AdnRecord;
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    const/16 v2, 0xff

    if-eq v0, v2, :cond_1

    .line 696
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v2, v3}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v2, 0x6fc7

    const/16 v3, 0x6fc8

    iget v4, p0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    const/16 v6, 0x14

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 701
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 704
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v2, v3}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v2, 0x6f17

    const/16 v3, 0x6f4a

    const/4 v4, 0x1

    const/16 v6, 0x19

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 713
    :cond_2
    iput-object p2, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    .line 716
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/IccVmNotSupportedException;

    const-string v3, "Update SIM voice mailbox error"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/IccVmNotSupportedException;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 718
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 8
    .parameter "line"
    .parameter "countWaiting"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 757
    if-eq p1, v1, :cond_0

    .line 830
    :goto_0
    return-void

    .line 763
    :cond_0
    if-gez p2, :cond_4

    .line 764
    const/4 p2, -0x1

    .line 771
    :cond_1
    :goto_1
    iput p2, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    .line 773
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->notifyMessageWaitingIndicator()V

    .line 776
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    if-eqz v2, :cond_2

    .line 780
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xfe

    iget v5, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    if-nez v5, :cond_5

    :goto_2
    or-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    .line 784
    if-gez p2, :cond_7

    .line 791
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isFfBeTreatedAsUnknownCount()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 792
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v1, 0x1

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 804
    :goto_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6fca

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/16 v7, 0x6fca

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 810
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    if-eqz v0, :cond_3

    .line 812
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    const/4 v3, 0x0

    aget-byte v0, v0, v3

    and-int/lit16 v3, v0, 0xf0

    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    if-nez v0, :cond_8

    const/4 v0, 0x5

    :goto_4
    or-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 817
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f11

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    const/16 v3, 0xe

    const/16 v4, 0x6f11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 824
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->updateMWItoUE()V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 826
    :catch_0
    move-exception v6

    .line 827
    .local v6, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "GSM"

    const-string v1, "Error saving voice mail state to SIM. Probably malformed SIM record"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 765
    .end local v6           #ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_4
    const/16 v2, 0xff

    if-le p2, v2, :cond_1

    .line 768
    const/16 p2, 0xff

    goto/16 :goto_1

    :cond_5
    move v0, v1

    .line 780
    goto :goto_2

    .line 795
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    goto :goto_3

    .line 799
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v1, 0x1

    int-to-byte v2, p2

    aput-byte v2, v0, v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 812
    :cond_8
    const/16 v0, 0xa

    goto :goto_4
.end method

.method public getUsimServiceTable()Lcom/android/internal/telephony/gsm/UsimServiceTable;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    return-object v0
.end method