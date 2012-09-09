.class public Lcom/android/internal/telephony/cdma/HtcCdmaNitz;
.super Landroid/os/Handler;
.source "HtcCdmaNitz.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;,
        Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;,
        Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;
    }
.end annotation


# static fields
.field private static final DBG_DETAIL:Z = false

.field private static final EVENT_DISPOSE:I = 0x2

.field private static final EVENT_INIT:I = 0x1

.field private static final EVENT_QUICKBOOT_OFF:I = 0x3

.field private static final EVENT_SCREEN_ON:I = 0x4

.field private static final FAKE_SUPPORT:Z = false

.field private static final HTC_HISTORY_ENTRIES:I = 0x4

.field private static final KEY_TIME_ZONE_IS_VALID:Ljava/lang/String; = "gsm.timezone.isvalid"

.field private static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field private static final NITZ_EXPIRE_TIME_MS:J = 0x2bf20L

.field private static final PREDICTION_TYPE_NONE:I = 0x2

.field private static final PREDICTION_TYPE_NOT_FOUND:I = 0x0

.field private static final PREDICTION_TYPE_ONLY_OFFSET_MATCH:I = 0xc

.field private static final PREDICTION_TYPE_WO_COUNTRY_WO_DST:I = 0xa

.field private static final PREDICTION_TYPE_WO_COUNTRY_W_DST:I = 0x8

.field private static final PREDICTION_TYPE_W_COUNTRY_WO_DST:I = 0x6

.field private static final PREDICTION_TYPE_W_COUNTRY_W_DST:I = 0x4

.field private static final PREDICTION_UNTRUST_LEVEL:I = 0x9

.field public static final SETUP_NITZ_FROM_LOCATION_UPDATE:I = 0x2

.field public static final SETUP_NITZ_FROM_MCC_UPDATE:I = 0x3

.field public static final SETUP_NITZ_FROM_NITZ_EVENT:I = 0x0

.field public static final SETUP_NITZ_FROM_SID_UPDATE:I = 0x1

.field public static final SETUP_NITZ_FROM_USER_SETUP:I = 0x4

.field private static logDateFormat:Ljava/text/SimpleDateFormat; = null

.field private static final logFakeNitzPrefix:Ljava/lang/String; = "Fake NITZ-"

.field private static final logNitzPrefix:Ljava/lang/String; = "NITZ-"


# instance fields
.field private SST__EVENT_NITZ_TIME:Ljava/lang/Integer;

.field private SST__EVENT_RADIO_STATE_CHANGED:Ljava/lang/Integer;

.field private currentBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

.field private currentOperatorIso:Ljava/lang/String;

.field private currentOperatorMcc:Ljava/lang/String;

.field private htcGivenFakeString:Ljava/lang/String;

.field private lastIsoUsedForNitz:Ljava/lang/String;

.field private lastNITZreceivedTime:Ljava/lang/Long;

.field private mContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastCorrectTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

.field private mNitzLog:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;",
            ">;"
        }
    .end annotation
.end field

.field private mReportedUnknownTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

.field private mSst:Lcom/android/internal/telephony/ServiceStateTracker;

.field private mTimeZonePickerTriggered:Z

.field private prevSetupFakeString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 447
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mNitzLog:Ljava/util/LinkedList;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/ServiceStateTracker;)V
    .locals 1
    .parameter "context"
    .parameter "sst"

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 447
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mNitzLog:Ljava/util/LinkedList;

    .line 68
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mSst:Lcom/android/internal/telephony/ServiceStateTracker;

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->sendEmptyMessage(I)Z

    .line 71
    return-void
.end method

.method static synthetic access$000(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->logShortDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addNitzHistory(Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;)V
    .locals 2
    .parameter "history"

    .prologue
    .line 451
    monitor-enter p0

    .line 452
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mNitzLog:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 453
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mNitzLog:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 454
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mNitzLog:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 456
    :cond_0
    monitor-exit p0

    .line 458
    return-void

    .line 456
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private bootupTimeZoneCacheClear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 575
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NITZ-time zone : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mLastCorrectTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] clear "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " notify="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mTimeZonePickerTriggered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gsm.timezone.isvalid"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mReportedUnknownTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const-string v0, "gsm.timezone.isvalid"

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mReportedUnknownTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    .line 580
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mTimeZonePickerTriggered:Z

    .line 581
    return-void
.end method

.method private findTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 10
    .parameter "offset"
    .parameter "dst"
    .parameter "when"

    .prologue
    .line 584
    move v5, p1

    .line 585
    .local v5, rawOffset:I
    if-eqz p2, :cond_0

    .line 586
    const v9, 0x36ee80

    sub-int/2addr v5, v9

    .line 588
    :cond_0
    invoke-static {v5}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v8

    .line 589
    .local v8, zones:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 590
    .local v2, guess:Ljava/util/TimeZone;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p3, p4}, Ljava/util/Date;-><init>(J)V

    .line 591
    .local v1, d:Ljava/util/Date;
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v7, v0, v3

    .line 592
    .local v7, zone:Ljava/lang/String;
    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    .line 593
    .local v6, tz:Ljava/util/TimeZone;
    invoke-virtual {v6, p3, p4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v9

    if-ne v9, p1, :cond_2

    invoke-virtual {v6, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v9

    if-ne v9, p2, :cond_2

    .line 595
    move-object v2, v6

    .line 600
    .end local v6           #tz:Ljava/util/TimeZone;
    .end local v7           #zone:Ljava/lang/String;
    :cond_1
    return-object v2

    .line 591
    .restart local v6       #tz:Ljava/util/TimeZone;
    .restart local v7       #zone:Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getFakeNitzItem(I)Ljava/lang/String;
    .locals 1
    .parameter "itemIndex"

    .prologue
    .line 964
    const/4 v0, 0x0

    .line 974
    .local v0, fakeNitzItem:Ljava/lang/String;
    return-object v0
.end method

.method private static logShortDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 4
    .parameter "date"

    .prologue
    .line 1166
    if-eqz p0, :cond_1

    .line 1167
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->logDateFormat:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    .line 1168
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSSZ"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->logDateFormat:Ljava/text/SimpleDateFormat;

    .line 1170
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->logDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/text/FieldPosition;

    sget-object v3, Ljava/text/DateFormat$Field;->MONTH:Ljava/text/DateFormat$Field;

    invoke-direct {v2, v3}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;)V

    invoke-virtual {v0, p0, v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1172
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private neverNotifyTimezonePickerChecker()Z
    .locals 2

    .prologue
    .line 874
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x61

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xad

    if-ne v0, v1, :cond_1

    .line 883
    :cond_0
    const/4 v0, 0x1

    .line 885
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nitzTimeZoneLossContryMatch(Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;)Z
    .locals 2
    .parameter "tzA"
    .parameter "tzB"

    .prologue
    .line 604
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->countryIso:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->countryIso:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p2, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->countryIso:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->countryIso:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 609
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->countryIso:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->countryIso:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 611
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private searchSmartTimeZoneForNITZ_Internal(Ljava/util/TimeZone;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;IJ)Ljava/util/TimeZone;
    .locals 15
    .parameter "knownTimeZone"
    .parameter "currentSid"
    .parameter "givenCountryIso"
    .parameter "daylightSavingTime"
    .parameter "timeZoneOffset"
    .parameter "timeInNitz"

    .prologue
    .line 724
    const-string v11, "CDMA"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NITZ-time zone check: ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mLastCorrectTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " notify="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mTimeZonePickerTriggered:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mReportedUnknownTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] from "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    new-instance v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    const/4 v11, 0x0

    invoke-direct {v7, p0, v11}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;-><init>(Lcom/android/internal/telephony/cdma/HtcCdmaNitz;Lcom/android/internal/telephony/cdma/HtcCdmaNitz$1;)V

    .line 728
    .local v7, searchItem:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;
    move-object/from16 v0, p1

    iput-object v0, v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->knownTimeZone:Ljava/util/TimeZone;

    .line 729
    const/4 v11, 0x0

    iput v11, v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->predictionType:I

    .line 730
    move-object/from16 v0, p3

    iput-object v0, v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->countryIso:Ljava/lang/String;

    .line 731
    move-object/from16 v0, p2

    iput-object v0, v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->sid:Ljava/lang/Integer;

    .line 732
    move-object/from16 v0, p4

    iput-object v0, v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->daylightSavingTime:Ljava/lang/Boolean;

    .line 733
    move/from16 v0, p5

    iput v0, v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->timeZoneOffset:I

    .line 734
    move-wide/from16 v0, p6

    iput-wide v0, v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->timeInNitz:J

    .line 736
    const/4 v6, 0x0

    .line 737
    .local v6, possibleTimeZone:Ljava/util/TimeZone;
    if-eqz p1, :cond_4

    .line 738
    iput-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mLastCorrectTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    .line 739
    move-object/from16 v6, p1

    .line 740
    const/4 v11, 0x2

    iput v11, v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->predictionType:I

    .line 804
    :cond_0
    :goto_0
    const-string v12, "gsm.timezone.isvalid"

    if-eqz v6, :cond_e

    const/4 v11, 0x1

    :goto_1
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    const/4 v5, 0x0

    .line 806
    .local v5, needToTriggerPicker:Z
    if-nez v6, :cond_11

    .line 807
    if-nez p3, :cond_2

    .line 808
    const/4 v5, 0x1

    .line 809
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mReportedUnknownTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    if-eqz v11, :cond_10

    .line 810
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mReportedUnknownTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    iget-object v11, v11, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->daylightSavingTime:Ljava/lang/Boolean;

    iget-object v12, v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->daylightSavingTime:Ljava/lang/Boolean;

    if-ne v11, v12, :cond_1

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mReportedUnknownTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    iget v11, v11, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->timeZoneOffset:I

    iget v12, v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->timeZoneOffset:I

    if-ne v11, v12, :cond_1

    .line 813
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mReportedUnknownTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    invoke-direct {p0, v11, v7}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->nitzTimeZoneLossContryMatch(Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;)Z

    move-result v11

    if-nez v11, :cond_f

    const/4 v5, 0x1

    .line 819
    :cond_1
    :goto_2
    if-eqz v5, :cond_2

    .line 820
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mContext:Landroid/content/Context;

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->triggerTimezonePicker(Landroid/content/Context;)V

    .line 821
    iput-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mReportedUnknownTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    .line 822
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mTimeZonePickerTriggered:Z

    .line 848
    :cond_2
    :goto_3
    const/4 v9, -0x1

    .line 850
    .local v9, settingAutoTimeZone:I
    :try_start_0
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "auto_time_zone"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    .line 853
    :goto_4
    const/4 v8, -0x1

    .line 855
    .local v8, settingAutoTime:I
    :try_start_1
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "auto_time"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    .line 858
    :goto_5
    const-string v12, "CDMA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NITZ-time zone: ("

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "/"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ")"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "/"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v13, 0xea60

    div-int v13, p5, v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " -> "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz v6, :cond_15

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, "("

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v14, v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->predictionType:I

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, "/"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v14, 0x9

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, ")"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_6
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " ["

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "*"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->neverNotifyTimezonePickerChecker()Z

    move-result v11

    if-nez v11, :cond_16

    const/4 v11, 0x1

    :goto_7
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "]"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " Set="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "/"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    if-eqz v6, :cond_3

    .line 868
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->lastIsoUsedForNitz:Ljava/lang/String;

    .line 870
    :cond_3
    return-object v6

    .line 744
    .end local v5           #needToTriggerPicker:Z
    .end local v8           #settingAutoTime:I
    .end local v9           #settingAutoTimeZone:I
    :cond_4
    if-eqz p4, :cond_7

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 745
    .local v10, tryDst:Z
    :goto_8
    if-eqz p3, :cond_a

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_a

    .line 746
    move/from16 v0, p5

    move-wide/from16 v1, p6

    move-object/from16 v3, p3

    invoke-static {v0, v10, v1, v2, v3}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    .line 747
    if-eqz v6, :cond_8

    .line 748
    iput-object v6, v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->knownTimeZone:Ljava/util/TimeZone;

    .line 749
    const/4 v11, 0x4

    iput v11, v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->predictionType:I

    .line 788
    :cond_5
    :goto_9
    if-nez v6, :cond_0

    .line 789
    const/4 v4, 0x0

    .line 790
    .local v4, discardDstMatch:Z
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mLastCorrectTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    if-eqz v11, :cond_6

    .line 791
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mLastCorrectTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    iget v11, v11, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->timeZoneOffset:I

    iget v12, v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->timeZoneOffset:I

    if-ne v11, v12, :cond_6

    .line 792
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mLastCorrectTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    invoke-direct {p0, v11, v7}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->nitzTimeZoneLossContryMatch(Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;)Z

    move-result v4

    .line 795
    :cond_6
    if-eqz v4, :cond_0

    .line 796
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mLastCorrectTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    iget-object v6, v11, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->knownTimeZone:Ljava/util/TimeZone;

    .line 797
    iput-object v6, v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->knownTimeZone:Ljava/util/TimeZone;

    .line 798
    const/16 v11, 0xc

    iput v11, v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->predictionType:I

    goto/16 :goto_0

    .line 744
    .end local v4           #discardDstMatch:Z
    .end local v10           #tryDst:Z
    :cond_7
    const/4 v10, 0x0

    goto :goto_8

    .line 751
    .restart local v10       #tryDst:Z
    :cond_8
    if-nez p4, :cond_5

    .line 752
    if-nez v10, :cond_9

    const/4 v11, 0x1

    :goto_a
    move/from16 v0, p5

    move-wide/from16 v1, p6

    move-object/from16 v3, p3

    invoke-static {v0, v11, v1, v2, v3}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    .line 753
    if-eqz v6, :cond_5

    .line 754
    iput-object v6, v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->knownTimeZone:Ljava/util/TimeZone;

    .line 755
    const/4 v11, 0x6

    iput v11, v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->predictionType:I

    goto :goto_9

    .line 752
    :cond_9
    const/4 v11, 0x0

    goto :goto_a

    .line 767
    :cond_a
    move/from16 v0, p5

    move-wide/from16 v1, p6

    invoke-direct {p0, v0, v10, v1, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v6

    .line 768
    if-eqz v6, :cond_b

    .line 769
    iput-object v6, v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->knownTimeZone:Ljava/util/TimeZone;

    .line 770
    const/16 v11, 0x8

    iput v11, v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->predictionType:I

    goto :goto_9

    .line 774
    :cond_b
    if-nez v10, :cond_c

    const/4 v11, 0x1

    :goto_b
    move/from16 v0, p5

    move-wide/from16 v1, p6

    invoke-direct {p0, v0, v11, v1, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v6

    .line 775
    if-eqz v6, :cond_5

    .line 776
    iput-object v6, v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->knownTimeZone:Ljava/util/TimeZone;

    .line 777
    if-nez p4, :cond_d

    .line 778
    const/16 v11, 0x8

    iput v11, v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->predictionType:I

    goto :goto_9

    .line 774
    :cond_c
    const/4 v11, 0x0

    goto :goto_b

    .line 781
    :cond_d
    const/16 v11, 0xa

    iput v11, v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->predictionType:I

    goto :goto_9

    .line 804
    .end local v10           #tryDst:Z
    :cond_e
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 813
    .restart local v5       #needToTriggerPicker:Z
    :cond_f
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 817
    :cond_10
    const/4 v5, 0x1

    goto/16 :goto_2

    .line 827
    :cond_11
    iget-boolean v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mTimeZonePickerTriggered:Z

    if-eqz v11, :cond_12

    .line 828
    const/4 v5, 0x1

    .line 829
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mContext:Landroid/content/Context;

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->triggerTimezonePicker(Landroid/content/Context;)V

    .line 830
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mReportedUnknownTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    .line 831
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mTimeZonePickerTriggered:Z

    .line 833
    :cond_12
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mLastCorrectTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    if-eqz v11, :cond_13

    iget v11, v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->predictionType:I

    const/16 v12, 0x9

    if-ge v11, v12, :cond_14

    .line 835
    :cond_13
    iput-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mLastCorrectTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    goto/16 :goto_3

    .line 837
    :cond_14
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mLastCorrectTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    iget v11, v11, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->predictionType:I

    const/16 v12, 0x9

    if-lt v11, v12, :cond_2

    .line 838
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mLastCorrectTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    iget v11, v11, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->predictionType:I

    iget v12, v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->predictionType:I

    if-lt v11, v12, :cond_2

    .line 839
    iput-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mLastCorrectTimeZone:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;

    goto/16 :goto_3

    .line 858
    .restart local v8       #settingAutoTime:I
    .restart local v9       #settingAutoTimeZone:I
    :cond_15
    const/4 v11, 0x0

    goto/16 :goto_6

    :cond_16
    const/4 v11, 0x0

    goto/16 :goto_7

    .line 856
    :catch_0
    move-exception v11

    goto/16 :goto_5

    .line 851
    .end local v8           #settingAutoTime:I
    :catch_1
    move-exception v11

    goto/16 :goto_4
.end method

.method private triggerTimezonePicker(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 889
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->neverNotifyTimezonePickerChecker()Z

    move-result v2

    if-nez v2, :cond_0

    .line 890
    const-string v0, "htc.intent.action.timezone_picker"

    .line 891
    .local v0, ACTION_TRIGGER_TIME_ZONE_PICKER:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "htc.intent.action.timezone_picker"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 893
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 898
    .end local v0           #ACTION_TRIGGER_TIME_ZONE_PICKER:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 896
    :cond_0
    const-string v3, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NITZ-unable waking-up timezone picker - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateBaseStation(Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;)Ljava/lang/String;
    .locals 10
    .parameter "infoBS"

    .prologue
    .line 235
    const/4 v6, 0x0

    .line 236
    .local v6, sidChanged:Z
    if-eqz p1, :cond_0

    .line 253
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->currentBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    if-eqz v8, :cond_2

    .line 254
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->currentBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    iget v8, v8, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->systemId:I

    iget v9, p1, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->systemId:I

    if-eq v8, v9, :cond_0

    .line 255
    const/4 v6, 0x1

    .line 263
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->currentBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    .line 265
    monitor-enter p0

    .line 266
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mNitzLog:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v7

    .line 267
    .local v7, size:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v7, :cond_3

    .line 268
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mNitzLog:Ljava/util/LinkedList;

    invoke-virtual {v8, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;

    .line 269
    .local v3, hist:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;
    if-eqz v3, :cond_1

    .line 270
    iget-object v8, v3, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->nextBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    if-nez v8, :cond_1

    .line 271
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->currentBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    iput-object v8, v3, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->nextBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    .line 267
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 259
    .end local v3           #hist:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;
    .end local v4           #i:I
    .end local v7           #size:I
    :cond_2
    const/4 v6, 0x1

    goto :goto_0

    .line 275
    .restart local v4       #i:I
    .restart local v7       #size:I
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    move v5, v6

    .line 279
    .local v5, isoChanged:Z
    const/4 v1, 0x0

    .line 280
    .local v1, countryIso:Ljava/lang/String;
    if-eqz v6, :cond_6

    .line 282
    const/4 v2, 0x0

    .line 283
    .local v2, currentSid:Ljava/lang/Integer;
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->currentBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    if-eqz v8, :cond_4

    .line 284
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->currentBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    iget v8, v8, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->systemId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 286
    :cond_4
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->currentOperatorMcc:Ljava/lang/String;

    invoke-static {v8, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->findBestMatching(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/telephony/cdma/HtcCdmaCountry;

    move-result-object v0

    .line 287
    .local v0, country:Lcom/android/internal/telephony/cdma/HtcCdmaCountry;
    if-eqz v0, :cond_5

    .line 288
    iget-object v1, v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->countryIso:Ljava/lang/String;

    .line 306
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->lastIsoUsedForNitz:Ljava/lang/String;

    invoke-static {v8, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    const/4 v5, 0x1

    .line 307
    :goto_2
    if-eqz v5, :cond_8

    .line 308
    if-nez v1, :cond_6

    .line 309
    const-string v1, ""

    .line 316
    .end local v0           #country:Lcom/android/internal/telephony/cdma/HtcCdmaCountry;
    .end local v2           #currentSid:Ljava/lang/Integer;
    :cond_6
    :goto_3
    return-object v1

    .line 275
    .end local v1           #countryIso:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #isoChanged:Z
    .end local v7           #size:I
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 306
    .restart local v0       #country:Lcom/android/internal/telephony/cdma/HtcCdmaCountry;
    .restart local v1       #countryIso:Ljava/lang/String;
    .restart local v2       #currentSid:Ljava/lang/Integer;
    .restart local v4       #i:I
    .restart local v5       #isoChanged:Z
    .restart local v7       #size:I
    :cond_7
    const/4 v5, 0x0

    goto :goto_2

    .line 313
    :cond_8
    const/4 v1, 0x0

    goto :goto_3
.end method


# virtual methods
.method public displayNitzHistory(Z)V
    .locals 4
    .parameter "longFormat"

    .prologue
    .line 467
    monitor-enter p0

    .line 468
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mNitzLog:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v2

    .line 469
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 470
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mNitzLog:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;

    .line 471
    .local v0, hist:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;
    if-eqz v0, :cond_0

    .line 472
    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->toLog(Z)V
    invoke-static {v0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->access$100(Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;Z)V

    .line 469
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 475
    .end local v0           #hist:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;
    :cond_1
    monitor-exit p0

    .line 477
    return-void

    .line 475
    .end local v1           #i:I
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->sendEmptyMessage(I)Z

    .line 80
    return-void
.end method

.method public getFakeNitz(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "originalNitzString"
    .parameter "originalNitz"

    .prologue
    .line 1031
    move-object v0, p2

    .line 1161
    .local v0, translatedNitz:[Ljava/lang/String;
    return-object v0
.end method

.method public getFakeNitzSetting()Ljava/lang/String;
    .locals 1

    .prologue
    .line 959
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 498
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 500
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 501
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 502
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 506
    new-instance v1, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$1;-><init>(Lcom/android/internal/telephony/cdma/HtcCdmaNitz;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 519
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 521
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->bootupTimeZoneCacheClear()V

    goto :goto_0

    .line 524
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 525
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 526
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_0

    .line 530
    :pswitch_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->bootupTimeZoneCacheClear()V

    goto :goto_0

    .line 533
    :pswitch_3
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->sendFakeNitz(Ljava/lang/String;)V

    goto :goto_0

    .line 498
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public receiveNitz(Ljava/lang/String;JJLjava/util/Date;)V
    .locals 7
    .parameter "nitzString"
    .parameter "modemReceiveTime"
    .parameter "ssEventTime"
    .parameter "ssEventDate"

    .prologue
    .line 325
    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;-><init>(Ljava/lang/String;JJLjava/util/Date;)V

    .line 326
    .local v0, nitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->currentBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    iput-object v1, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->previousBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    .line 327
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->nextBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    .line 328
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->addNitzHistory(Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;)V

    .line 329
    return-void
.end method

.method public searchSmartTimeZoneForNITZ(Ljava/lang/String;Ljava/lang/Boolean;IJ)Ljava/util/TimeZone;
    .locals 10
    .parameter "enforceCountryIso"
    .parameter "daylightSavingTime"
    .parameter "timeZoneOffset"
    .parameter "timeInNitz"

    .prologue
    const/4 v1, 0x0

    .line 626
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 627
    .local v8, currentElapsedTime:J
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->lastNITZreceivedTime:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->lastNITZreceivedTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, v8, v3

    const-wide/32 v5, 0x2bf20

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    .line 655
    :cond_0
    :goto_0
    return-object v1

    .line 633
    :cond_1
    const/4 v2, 0x0

    .line 634
    .local v2, currentSid:Ljava/lang/Integer;
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->currentBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    if-eqz v0, :cond_2

    .line 635
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->currentBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    iget v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->systemId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_2
    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    .line 655
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->searchSmartTimeZoneForNITZ_Internal(Ljava/util/TimeZone;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;IJ)Ljava/util/TimeZone;

    move-result-object v1

    goto :goto_0
.end method

.method public searchSmartTimeZoneForNITZ(Ljava/util/TimeZone;Ljava/lang/Boolean;IJ)Ljava/util/TimeZone;
    .locals 9
    .parameter "knownTimeZone"
    .parameter "daylightSavingTime"
    .parameter "timeZoneOffset"
    .parameter "timeInNitz"

    .prologue
    .line 668
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->lastNITZreceivedTime:Ljava/lang/Long;

    .line 670
    const/4 v2, 0x0

    .line 671
    .local v2, currentSid:Ljava/lang/Integer;
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->currentBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->currentBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    iget v0, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->systemId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 692
    :cond_0
    const/4 v3, 0x0

    .line 693
    .local v3, givenCountryIso:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->currentOperatorMcc:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->findBestMatching(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/telephony/cdma/HtcCdmaCountry;

    move-result-object v8

    .line 694
    .local v8, matchCountry:Lcom/android/internal/telephony/cdma/HtcCdmaCountry;
    if-eqz v8, :cond_1

    .line 695
    iget-object v3, v8, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->countryIso:Ljava/lang/String;

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    .line 715
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->searchSmartTimeZoneForNITZ_Internal(Ljava/util/TimeZone;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;IJ)Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public sendFakeNitz(Ljava/lang/String;)V
    .locals 0
    .parameter "fakeString"

    .prologue
    .line 1023
    return-void
.end method

.method public setupNitz(IJLjava/lang/String;)V
    .locals 6
    .parameter "type"
    .parameter "newTime"
    .parameter "zone"

    .prologue
    .line 369
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 370
    .local v1, setupCompleteTime:J
    monitor-enter p0

    .line 371
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mNitzLog:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v3

    .line 372
    .local v3, size:I
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mNitzLog:Ljava/util/LinkedList;

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;

    .line 373
    .local v0, hist:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;
    if-eqz v0, :cond_0

    .line 374
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->setupType:Ljava/lang/Integer;

    .line 375
    iput-object p4, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->setupZone:Ljava/lang/String;

    .line 376
    iput-wide v1, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->setupTime:J

    .line 377
    iput-wide p2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->setupSysMsec:J

    .line 379
    :cond_0
    monitor-exit p0

    .line 381
    return-void

    .line 379
    .end local v0           #hist:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;
    .end local v3           #size:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public setupTimeZone(ILjava/lang/String;)V
    .locals 6
    .parameter "type"
    .parameter "zone"

    .prologue
    .line 390
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 391
    .local v1, setupCompleteTime:J
    monitor-enter p0

    .line 392
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mNitzLog:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v3

    .line 393
    .local v3, size:I
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mNitzLog:Ljava/util/LinkedList;

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;

    .line 394
    .local v0, hist:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;
    if-eqz v0, :cond_0

    .line 395
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->setupType:Ljava/lang/Integer;

    .line 396
    iput-object p2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->setupZone:Ljava/lang/String;

    .line 397
    iput-wide v1, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->setupTime:J

    .line 399
    :cond_0
    monitor-exit p0

    .line 401
    return-void

    .line 399
    .end local v0           #hist:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;
    .end local v3           #size:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public updateLocation(Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;)Ljava/lang/String;
    .locals 1
    .parameter "infoBS"

    .prologue
    .line 149
    const/4 v0, 0x2

    iput v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->updateFrom:I

    .line 150
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->updateBaseStation(Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateOperator(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "mcc"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 162
    const/4 v4, 0x0

    .line 163
    .local v4, operatorUpdated:Z
    move-object v3, p1

    .line 179
    .local v3, givenMcc:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->currentOperatorMcc:Ljava/lang/String;

    if-nez v7, :cond_6

    .line 180
    if-eqz v3, :cond_0

    .line 181
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    move v4, v5

    .line 182
    :goto_0
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->currentOperatorMcc:Ljava/lang/String;

    .line 194
    :cond_0
    :goto_1
    const/4 v1, 0x0

    .line 195
    .local v1, countryIso:Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 196
    const/4 v2, 0x0

    .line 197
    .local v2, currentSid:Ljava/lang/Integer;
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->currentBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    if-eqz v7, :cond_1

    .line 198
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->currentBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    iget v7, v7, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->systemId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 200
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->currentOperatorMcc:Ljava/lang/String;

    invoke-static {v7, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->findBestMatching(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/telephony/cdma/HtcCdmaCountry;

    move-result-object v0

    .line 201
    .local v0, country:Lcom/android/internal/telephony/cdma/HtcCdmaCountry;
    if-eqz v0, :cond_2

    .line 202
    iget-object v1, v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->countryIso:Ljava/lang/String;

    .line 220
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->lastIsoUsedForNitz:Ljava/lang/String;

    invoke-static {v7, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    move v4, v5

    .line 221
    :goto_2
    if-eqz v4, :cond_b

    .line 222
    if-nez v1, :cond_3

    .line 223
    const-string v1, ""

    .line 225
    :cond_3
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->currentOperatorIso:Ljava/lang/String;

    .line 231
    .end local v0           #country:Lcom/android/internal/telephony/cdma/HtcCdmaCountry;
    .end local v2           #currentSid:Ljava/lang/Integer;
    :cond_4
    :goto_3
    return-object v1

    .end local v1           #countryIso:Ljava/lang/String;
    :cond_5
    move v4, v6

    .line 181
    goto :goto_0

    .line 186
    :cond_6
    if-eqz v3, :cond_8

    .line 187
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->currentOperatorMcc:Ljava/lang/String;

    invoke-static {v7, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    move v4, v5

    .line 192
    :goto_4
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->currentOperatorMcc:Ljava/lang/String;

    goto :goto_1

    :cond_7
    move v4, v6

    .line 187
    goto :goto_4

    .line 190
    :cond_8
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->currentOperatorMcc:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_9

    move v4, v5

    :goto_5
    goto :goto_4

    :cond_9
    move v4, v6

    goto :goto_5

    .restart local v0       #country:Lcom/android/internal/telephony/cdma/HtcCdmaCountry;
    .restart local v1       #countryIso:Ljava/lang/String;
    .restart local v2       #currentSid:Ljava/lang/Integer;
    :cond_a
    move v4, v6

    .line 220
    goto :goto_2

    .line 228
    :cond_b
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public updateRegState(Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;)Ljava/lang/String;
    .locals 1
    .parameter "infoBS"

    .prologue
    .line 136
    const/4 v0, 0x1

    iput v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->updateFrom:I

    .line 137
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->updateBaseStation(Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
