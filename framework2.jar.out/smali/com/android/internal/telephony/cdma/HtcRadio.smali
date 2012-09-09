.class public Lcom/android/internal/telephony/cdma/HtcRadio;
.super Landroid/os/Handler;
.source "HtcRadio.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/HtcRadio$1;,
        Lcom/android/internal/telephony/cdma/HtcRadio$AlarmIntentReceiver;,
        Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;
    }
.end annotation


# static fields
.field private static final DISABLE_MULTIPLE_FLIGHT_MODE_REQUEST:Z = false

.field public static final ERI_EMPTY_TEXT:Ljava/lang/String; = ""

.field private static final EVENT_3GIND:I = 0x0

.field private static final EVENT_ERI_UPDATE:I = 0x3

.field private static final EVENT_FLIGHT_MODE_PERIOD:I = 0x4

.field private static final EVENT_RADIO_OFF_REQUEST:I = 0x2

.field private static final EVENT_WORKAROUND_PERIOD:I = 0x1

.field private static final FEATURE_SUPPORT_ONLY_WAIT_3GIND_WHEN_CONNECTED:Z = true

.field private static final INTENT_FLIGHT_MODE_ALARM:Ljava/lang/String; = "com.android.internal.telephony.cdma-flight.mode"

.field private static final INTENT_WORKAROUND_ALARM:Ljava/lang/String; = "com.android.internal.telephony.cdma-flight.workaround"

.field private static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field private static SPRINT_CONFIG:Z = false

.field private static final TIMEOUT_FLIGHT_MODE_ALARM_MS:I = 0x7530

.field private static final TIMEOUT_WORKAROUND_ALARM_MS:I = 0xbb8

.field private static VERIZON_CONFIG:Z = false

.field private static final WORKAROUND_MODE:Z = true


# instance fields
.field private alertSoundId:I

.field private bannerStyle:I

.field private callGuard:I

.field private carrierId:I

.field private dataRoamingGuard:I

.field private distinctiveRinger:I

.field private eriText:Ljava/lang/String;

.field private m3gindState:I

.field private mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field private mDataChannelReleased:Ljava/lang/Boolean;

.field private mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

.field private mFlightModeAlarmIntent:Landroid/app/PendingIntent;

.field private mFlightModeTimerId:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPendingFlightModeRequest:Z

.field private mPendingSimPowerRequest:Ljava/lang/Boolean;

.field private mPerformingRadioOff:Z

.field private mRoamingType:I

.field private mWorkaroundAlarmIntent:Landroid/app/PendingIntent;

.field private mWorkaroundTimerId:I

.field private roamingIconIndicator:I

.field private roamingIconMode:I

.field private timeOfThisEri:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 705
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa8

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/cdma/HtcRadio;->VERIZON_CONFIG:Z

    .line 708
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x94

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x3a

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x91

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x40

    if-ne v0, v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    sput-boolean v2, Lcom/android/internal/telephony/cdma/HtcRadio;->SPRINT_CONFIG:Z

    return-void

    :cond_2
    move v0, v2

    .line 705
    goto :goto_0
.end method

.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 5
    .parameter "p"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 85
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 88
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Idle:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    .line 89
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPendingFlightModeRequest:Z

    .line 90
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPendingSimPowerRequest:Ljava/lang/Boolean;

    .line 91
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPerformingRadioOff:Z

    .line 92
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->m3gindState:I

    .line 94
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcRadio;->stopWorkaroundTimer()V

    .line 96
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataChannelReleased:Ljava/lang/Boolean;

    .line 98
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcRadio;->initEriInfo()V

    .line 100
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 101
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.internal.telephony.cdma-flight.mode"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    const-string v1, "com.android.internal.telephony.cdma-flight.workaround"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    new-instance v1, Lcom/android/internal/telephony/cdma/HtcRadio$AlarmIntentReceiver;

    invoke-direct {v1, p0, v3}, Lcom/android/internal/telephony/cdma/HtcRadio$AlarmIntentReceiver;-><init>(Lcom/android/internal/telephony/cdma/HtcRadio;Lcom/android/internal/telephony/cdma/HtcRadio$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 104
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 106
    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerFor3GIndicator(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 107
    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x3

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForERIInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 108
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cdma/HtcRadio;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mFlightModeTimerId:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cdma/HtcRadio;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/HtcRadio;->timeoutFlightModePerioid(IZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/cdma/HtcRadio;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mWorkaroundTimerId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/cdma/HtcRadio;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/HtcRadio;->timeoutWorkaroundPerioid(IZ)V

    return-void
.end method

.method private change3GindState(I)V
    .locals 3
    .parameter "newValue"

    .prologue
    .line 223
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->m3gindState:I

    if-ltz v0, :cond_1

    .line 224
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcRadio] Lower status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->m3gindState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", with state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :goto_0
    iput p1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->m3gindState:I

    .line 231
    if-nez p1, :cond_2

    .line 232
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    sget-object v1, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Disconnected:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    if-ne v0, v1, :cond_0

    .line 233
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->ResourceReleaseWaiting:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    .line 235
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcRadio;->startWorkaroundTimer()V

    .line 242
    :goto_1
    return-void

    .line 227
    :cond_1
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcRadio] Lower status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", with state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 238
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcRadio;->stopWorkaroundTimer()V

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataChannelReleased:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method private clearFlightModeAlarm(Landroid/app/AlarmManager;)V
    .locals 3
    .parameter "aMgr"

    .prologue
    .line 332
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mFlightModeAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    .line 333
    move-object v0, p1

    .line 334
    .local v0, am:Landroid/app/AlarmManager;
    if-nez v0, :cond_0

    .line 335
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #am:Landroid/app/AlarmManager;
    check-cast v0, Landroid/app/AlarmManager;

    .line 337
    .restart local v0       #am:Landroid/app/AlarmManager;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mFlightModeAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 338
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mFlightModeAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 339
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mFlightModeAlarmIntent:Landroid/app/PendingIntent;

    .line 341
    .end local v0           #am:Landroid/app/AlarmManager;
    :cond_1
    return-void
.end method

.method private clearWorkaroundAlarm(Landroid/app/AlarmManager;)V
    .locals 3
    .parameter "aMgr"

    .prologue
    .line 251
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mWorkaroundAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    .line 252
    move-object v0, p1

    .line 253
    .local v0, am:Landroid/app/AlarmManager;
    if-nez v0, :cond_0

    .line 254
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #am:Landroid/app/AlarmManager;
    check-cast v0, Landroid/app/AlarmManager;

    .line 256
    .restart local v0       #am:Landroid/app/AlarmManager;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mWorkaroundAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 257
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mWorkaroundAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 258
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mWorkaroundAlarmIntent:Landroid/app/PendingIntent;

    .line 260
    .end local v0           #am:Landroid/app/AlarmManager;
    :cond_1
    return-void
.end method

.method private eriUpdate(Landroid/os/AsyncResult;)V
    .locals 14
    .parameter "ar"

    .prologue
    .line 715
    iget-object v11, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v11, :cond_0

    .line 716
    const-string v11, "CDMA"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HtcRadio]: ERI exception "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :goto_0
    return-void

    .line 719
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iput-object v11, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->timeOfThisEri:Ljava/lang/Long;

    .line 720
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cdma/CdmaERIInfo;

    .line 721
    .local v2, htcEriUpdate:Lcom/android/internal/telephony/cdma/CdmaERIInfo;
    const/4 v6, 0x0

    .line 722
    .local v6, updateIcon:Z
    const/4 v5, 0x1

    .line 723
    .local v5, showPlmn:Z
    const/4 v1, 0x0

    .line 727
    .local v1, flashPlmn:Z
    iget v11, v2, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->carrier_id:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_1

    iget v11, v2, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->carrier_id:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_1

    iget v11, v2, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->carrier_id:I

    const/4 v12, 0x3

    if-eq v11, v12, :cond_1

    .line 730
    iget v11, v2, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->icon_img_id:I

    packed-switch v11, :pswitch_data_0

    .line 746
    :cond_1
    :goto_1
    iget v11, v2, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->carrier_id:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 747
    iget v11, v2, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->param3:I

    iput v11, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->alertSoundId:I

    .line 749
    iget v11, v2, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->icon_img_id:I

    packed-switch v11, :pswitch_data_1

    .line 761
    :goto_2
    iget v11, v2, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->param1:I

    packed-switch v11, :pswitch_data_2

    .line 771
    :cond_2
    :goto_3
    const/4 v8, -0x1

    .line 772
    .local v8, value_CallGuard:I
    const/4 v10, -0x1

    .line 773
    .local v10, value_DistinctiveRinger:I
    const/4 v9, -0x1

    .line 774
    .local v9, value_DataRoamingGuard:I
    const/4 v7, -0x1

    .line 775
    .local v7, value_BannerStyle:I
    iget v11, v2, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->carrier_id:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_3

    iget v11, v2, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->carrier_id:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_4

    .line 777
    :cond_3
    iget v8, v2, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->param1:I

    .line 778
    iget v10, v2, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->param2:I

    .line 779
    iget v7, v2, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->param3:I

    .line 780
    iget v9, v2, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->param4:I

    .line 782
    iget v11, v2, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->icon_img_id:I

    packed-switch v11, :pswitch_data_3

    .line 797
    :goto_4
    packed-switch v7, :pswitch_data_4

    .line 809
    :cond_4
    :goto_5
    :pswitch_0
    iget v11, v2, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->roaming_type:I

    iput v11, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mRoamingType:I

    .line 810
    iput v8, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->callGuard:I

    .line 811
    const-string v11, "CDMA"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HtcRadio] eriUpdate, mRoamingType="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mRoamingType:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " callGuard="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->callGuard:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    invoke-direct {p0, v10}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriDistinctiveRinger(I)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 817
    :cond_5
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriBannerStyle(I)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 821
    :cond_6
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriDataRoamingGuard(I)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 827
    :cond_7
    iget v11, v2, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->carrier_id:I

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriCarrierId(I)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 828
    sget-boolean v11, Lcom/android/internal/telephony/cdma/HtcRadio;->SPRINT_CONFIG:Z

    if-eqz v11, :cond_8

    .line 830
    new-instance v3, Landroid/content/Intent;

    const-string v11, "com.android.internal.telephony.cdma.EriManager.ERI"

    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 831
    .local v3, intent:Landroid/content/Intent;
    const-string v11, "carrier"

    iget v12, v2, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->carrier_id:I

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 832
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 836
    .end local v3           #intent:Landroid/content/Intent;
    :cond_8
    iget-object v11, v2, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->text:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriText(Ljava/lang/String;)V

    .line 837
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v11, v11, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaOperatorName:Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;

    if-eqz v11, :cond_a

    .line 838
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->eriText:Ljava/lang/String;

    .line 841
    .local v0, bannerFromEri:Ljava/lang/String;
    iget v11, v2, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->carrier_id:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_9

    .line 842
    const/4 v0, 0x0

    .line 844
    :cond_9
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v12, v11, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaOperatorName:Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;

    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    if-eqz v1, :cond_c

    const/4 v11, 0x1

    :goto_6
    invoke-virtual {v12, v13, v0, v11}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->updateFromEri(Ljava/util/Date;Ljava/lang/String;I)V

    .line 848
    .end local v0           #bannerFromEri:Ljava/lang/String;
    :cond_a
    if-eqz v6, :cond_b

    .line 849
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v12, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v12, v12, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v12, v12, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 854
    :cond_b
    iget v11, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->roamingIconIndicator:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_d

    const/4 v4, 0x1

    .line 861
    .local v4, isRoamingIcon:Z
    :goto_7
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v11, v11, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    if-eqz v11, :cond_e

    .line 863
    const-string v11, "CDMA"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HtcRadio] eriUpdate, dataRoamingGuard="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->dataRoamingGuard:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v11, v11, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    iget v12, v2, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->eri_id:I

    iget v13, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->dataRoamingGuard:I

    invoke-virtual {v11, v12, v13, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->haveERIupdate(IIZ)V

    goto/16 :goto_0

    .line 732
    .end local v4           #isRoamingIcon:Z
    .end local v7           #value_BannerStyle:I
    .end local v8           #value_CallGuard:I
    .end local v9           #value_DataRoamingGuard:I
    .end local v10           #value_DistinctiveRinger:I
    :pswitch_1
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIndicator(I)Z

    move-result v6

    .line 733
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIconMode(I)Z

    move-result v11

    or-int/2addr v6, v11

    .line 734
    goto/16 :goto_1

    .line 736
    :pswitch_2
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIndicator(I)Z

    move-result v6

    .line 737
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIconMode(I)Z

    move-result v11

    or-int/2addr v6, v11

    .line 738
    goto/16 :goto_1

    .line 740
    :pswitch_3
    const/4 v11, 0x2

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIndicator(I)Z

    move-result v6

    .line 741
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIconMode(I)Z

    move-result v11

    or-int/2addr v6, v11

    goto/16 :goto_1

    .line 751
    :pswitch_4
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIndicator(I)Z

    move-result v6

    .line 752
    goto/16 :goto_2

    .line 754
    :pswitch_5
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIndicator(I)Z

    move-result v6

    .line 755
    goto/16 :goto_2

    .line 757
    :pswitch_6
    const/4 v11, 0x2

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIndicator(I)Z

    move-result v6

    goto/16 :goto_2

    .line 763
    :pswitch_7
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIconMode(I)Z

    move-result v11

    or-int/2addr v6, v11

    .line 764
    goto/16 :goto_3

    .line 766
    :pswitch_8
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIconMode(I)Z

    move-result v11

    or-int/2addr v6, v11

    goto/16 :goto_3

    .line 784
    .restart local v7       #value_BannerStyle:I
    .restart local v8       #value_CallGuard:I
    .restart local v9       #value_DataRoamingGuard:I
    .restart local v10       #value_DistinctiveRinger:I
    :pswitch_9
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIndicator(I)Z

    move-result v6

    .line 785
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIconMode(I)Z

    move-result v11

    or-int/2addr v6, v11

    .line 786
    goto/16 :goto_4

    .line 788
    :pswitch_a
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIndicator(I)Z

    move-result v6

    .line 789
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIconMode(I)Z

    move-result v11

    or-int/2addr v6, v11

    .line 790
    goto/16 :goto_4

    .line 792
    :pswitch_b
    const/4 v11, 0x2

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIndicator(I)Z

    move-result v6

    .line 793
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIconMode(I)Z

    move-result v11

    or-int/2addr v6, v11

    goto/16 :goto_4

    .line 801
    :pswitch_c
    const/4 v5, 0x1

    .line 802
    goto/16 :goto_5

    .line 804
    :pswitch_d
    const/4 v1, 0x1

    goto/16 :goto_5

    .line 844
    .restart local v0       #bannerFromEri:Ljava/lang/String;
    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_6

    .line 854
    .end local v0           #bannerFromEri:Ljava/lang/String;
    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 868
    .restart local v4       #isRoamingIcon:Z
    :cond_e
    const-string v11, "CDMA"

    const-string v12, "[HtcRadio] Data Roaming guard should be not null "

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 730
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 749
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 761
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 782
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 797
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_c
        :pswitch_0
        :pswitch_d
    .end packed-switch
.end method

.method private flightModeEnabled()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    .line 511
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPerformingRadioOff:Z

    if-nez v1, :cond_1

    .line 512
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcRadio;->stopWorkaroundTimer()V

    .line 513
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcRadio;->stopFlightModeTimer()V

    .line 515
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPerformingRadioOff:Z

    .line 516
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v1}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->getObject(Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/HtcSequentialRadioPower;

    move-result-object v0

    .line 517
    .local v0, seqPower:Lcom/android/internal/telephony/HtcSequentialRadioPower;
    if-eqz v0, :cond_0

    .line 518
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPendingSimPowerRequest:Ljava/lang/Boolean;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcRadio;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->controlRadioPower(ZLjava/lang/Boolean;Landroid/os/Message;)V

    .line 524
    :goto_0
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcRadio] setRadioPower off - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPendingSimPowerRequest:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Idle:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    .line 526
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPendingFlightModeRequest:Z

    .line 527
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPendingSimPowerRequest:Ljava/lang/Boolean;

    .line 533
    .end local v0           #seqPower:Lcom/android/internal/telephony/HtcSequentialRadioPower;
    :goto_1
    return-void

    .line 522
    .restart local v0       #seqPower:Lcom/android/internal/telephony/HtcSequentialRadioPower;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcRadio;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_0

    .line 530
    .end local v0           #seqPower:Lcom/android/internal/telephony/HtcSequentialRadioPower;
    :cond_1
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcRadio] setRadioPower off progressing : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPendingFlightModeRequest:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPendingSimPowerRequest:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private initEriInfo()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 690
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->timeOfThisEri:Ljava/lang/Long;

    .line 692
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->roamingIconIndicator:I

    .line 693
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->roamingIconMode:I

    .line 694
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->eriText:Ljava/lang/String;

    .line 696
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->carrierId:I

    .line 697
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mRoamingType:I

    .line 698
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->alertSoundId:I

    .line 699
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->callGuard:I

    .line 700
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->distinctiveRinger:I

    .line 701
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->bannerStyle:I

    .line 702
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->dataRoamingGuard:I

    .line 703
    return-void
.end method

.method private requestingRadioOffPeriod(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    const/4 v3, 0x0

    .line 395
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 397
    monitor-enter p0

    .line 399
    :try_start_0
    const-string v0, "CDMA"

    const-string v1, "[HtcRadio], setRadioPower off successfully !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPerformingRadioOff:Z

    .line 401
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->haveDataNetworkState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 401
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 410
    :cond_1
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcRadio], setRadioPower, exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPerformingRadioOff:Z

    goto :goto_0
.end method

.method private setCdmaEriBannerStyle(I)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 915
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->bannerStyle:I

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 916
    .local v0, changed:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 917
    iput p1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->bannerStyle:I

    .line 919
    :cond_0
    return v0

    .line 915
    .end local v0           #changed:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCdmaEriCarrierId(I)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 899
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->carrierId:I

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 900
    .local v0, changed:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 901
    iput p1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->carrierId:I

    .line 903
    :cond_0
    return v0

    .line 899
    .end local v0           #changed:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCdmaEriDataRoamingGuard(I)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 923
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->dataRoamingGuard:I

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 924
    .local v0, changed:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 925
    iput p1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->dataRoamingGuard:I

    .line 927
    :cond_0
    return v0

    .line 923
    .end local v0           #changed:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCdmaEriDistinctiveRinger(I)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 907
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->distinctiveRinger:I

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 908
    .local v0, changed:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 909
    iput p1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->distinctiveRinger:I

    .line 911
    :cond_0
    return v0

    .line 907
    .end local v0           #changed:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCdmaEriRoamingIconMode(I)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 885
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->roamingIconMode:I

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 886
    .local v0, changed:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 887
    iput p1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->roamingIconMode:I

    .line 889
    :cond_0
    return v0

    .line 885
    .end local v0           #changed:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCdmaEriRoamingIndicator(I)Z
    .locals 4
    .parameter "id"

    .prologue
    .line 875
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcRadio] setCdmaEriRoamingIndicator:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->roamingIconIndicator:I

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 878
    .local v0, changed:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 879
    iput p1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->roamingIconIndicator:I

    .line 881
    :cond_0
    return v0

    .line 877
    .end local v0           #changed:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCdmaEriText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 894
    if-eqz p1, :cond_0

    .end local p1
    :goto_0
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->eriText:Ljava/lang/String;

    .line 895
    return-void

    .line 894
    .restart local p1
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method private startFlightModeTimer()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x7530

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 355
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/HtcRadio;->removeMessages(I)V

    .line 357
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 358
    .local v1, context:Landroid/content/Context;
    const-string v3, "alarm"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 359
    .local v0, am:Landroid/app/AlarmManager;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcRadio;->clearFlightModeAlarm(Landroid/app/AlarmManager;)V

    .line 361
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mFlightModeTimerId:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mFlightModeTimerId:I

    .line 364
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mFlightModeTimerId:I

    invoke-virtual {p0, v4, v3, v5}, Lcom/android/internal/telephony/cdma/HtcRadio;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3, v6, v7}, Lcom/android/internal/telephony/cdma/HtcRadio;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 367
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.internal.telephony.cdma-flight.mode"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 368
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "timerId"

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mFlightModeTimerId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 369
    invoke-static {v1, v5, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mFlightModeAlarmIntent:Landroid/app/PendingIntent;

    .line 370
    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mFlightModeAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 373
    return-void
.end method

.method private startWorkaroundTimer()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xbb8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 277
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/HtcRadio;->removeMessages(I)V

    .line 279
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 280
    .local v1, context:Landroid/content/Context;
    const-string v3, "alarm"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 281
    .local v0, am:Landroid/app/AlarmManager;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcRadio;->clearWorkaroundAlarm(Landroid/app/AlarmManager;)V

    .line 283
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mWorkaroundTimerId:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mWorkaroundTimerId:I

    .line 286
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mWorkaroundTimerId:I

    invoke-virtual {p0, v4, v3, v5}, Lcom/android/internal/telephony/cdma/HtcRadio;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3, v6, v7}, Lcom/android/internal/telephony/cdma/HtcRadio;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 289
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.internal.telephony.cdma-flight.workaround"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 290
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "timerId"

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mWorkaroundTimerId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 291
    invoke-static {v1, v5, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mWorkaroundAlarmIntent:Landroid/app/PendingIntent;

    .line 292
    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mWorkaroundAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 296
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataChannelReleased:Ljava/lang/Boolean;

    .line 298
    return-void
.end method

.method private stopFlightModeTimer()V
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcRadio;->removeMessages(I)V

    .line 348
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcRadio;->clearFlightModeAlarm(Landroid/app/AlarmManager;)V

    .line 349
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mFlightModeTimerId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mFlightModeTimerId:I

    .line 350
    return-void
.end method

.method private stopWorkaroundTimer()V
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcRadio;->removeMessages(I)V

    .line 268
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcRadio;->clearWorkaroundAlarm(Landroid/app/AlarmManager;)V

    .line 269
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mWorkaroundTimerId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mWorkaroundTimerId:I

    .line 271
    return-void
.end method

.method private timeoutFlightModePerioid(IZ)V
    .locals 3
    .parameter "timerId"
    .parameter "byEvent"

    .prologue
    .line 378
    monitor-enter p0

    .line 379
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mFlightModeTimerId:I

    if-eq v0, p1, :cond_0

    .line 380
    monitor-exit p0

    .line 388
    :goto_0
    return-void

    .line 382
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mFlightModeTimerId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mFlightModeTimerId:I

    .line 383
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcRadio] Timeout turn off radio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ongoing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPerformingRadioOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPendingFlightModeRequest:Z

    if-eqz v0, :cond_1

    .line 385
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcRadio;->flightModeEnabled()V

    .line 387
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private timeoutWorkaroundPerioid(IZ)V
    .locals 3
    .parameter "timerId"
    .parameter "byEvent"

    .prologue
    .line 303
    monitor-enter p0

    .line 305
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mWorkaroundTimerId:I

    if-eq v0, p1, :cond_0

    .line 306
    monitor-exit p0

    .line 323
    :goto_0
    return-void

    .line 308
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mWorkaroundTimerId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mWorkaroundTimerId:I

    .line 309
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataChannelReleased:Ljava/lang/Boolean;

    .line 310
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPendingFlightModeRequest:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    sget-object v1, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->ResourceReleaseWaiting:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    if-eq v0, v1, :cond_2

    .line 311
    :cond_1
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcRadio] Ready to release channel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    monitor-exit p0

    goto :goto_0

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 318
    :cond_2
    :try_start_1
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcRadio] Turn off radio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ongoing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPerformingRadioOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcRadio;->flightModeEnabled()V

    .line 322
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private update3GindState(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    .line 198
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3

    .line 199
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    .line 200
    .local v0, inds:[I
    if-eqz v0, :cond_2

    array-length v2, v0

    if-lez v2, :cond_2

    .line 201
    const/4 v2, 0x0

    aget v1, v0, v2

    .line 202
    .local v1, state:I
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcRadio] 3GIND:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    if-lez v1, :cond_0

    .line 204
    const/4 v1, 0x1

    .line 206
    :cond_0
    monitor-enter p0

    .line 207
    :try_start_0
    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->m3gindState:I

    if-eq v2, v1, :cond_1

    .line 208
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcRadio;->change3GindState(I)V

    .line 210
    :cond_1
    monitor-exit p0

    .line 219
    .end local v0           #inds:[I
    .end local v1           #state:I
    :goto_0
    return-void

    .line 210
    .restart local v0       #inds:[I
    .restart local v1       #state:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 213
    .end local v1           #state:I
    :cond_2
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcRadio] 3GIND skip:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 217
    .end local v0           #inds:[I
    :cond_3
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcRadio] 3GIND exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcRadio;->removeMessages(I)V

    .line 124
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcRadio;->removeMessages(I)V

    .line 125
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcRadio;->removeMessages(I)V

    .line 126
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcRadio;->removeMessages(I)V

    .line 127
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcRadio;->removeMessages(I)V

    .line 129
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 130
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterFor3GIndicator(Landroid/os/Handler;)V

    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForERIInfo(Landroid/os/Handler;)V

    .line 132
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 115
    const-string v0, "CDMA"

    const-string v1, "[HtcRadio] finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method

.method public flightModeRequest(Z)Z
    .locals 1
    .parameter "request"

    .prologue
    .line 428
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/cdma/HtcRadio;->flightModeRequest(ZLjava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public flightModeRequest(ZLjava/lang/Boolean;)Z
    .locals 5
    .parameter "request"
    .parameter "simPower"

    .prologue
    .line 437
    const/4 v1, 0x0

    .line 438
    .local v1, valueReturn:Z
    monitor-enter p0

    .line 439
    :try_start_0
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcRadio] Turn off radio request:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", requesting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPerformingRadioOff:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", released="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataChannelReleased:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPendingFlightModeRequest:Z

    if-eq v2, p1, :cond_0

    .line 445
    if-eqz p1, :cond_3

    .line 446
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcRadio;->startFlightModeTimer()V

    .line 451
    :goto_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPendingFlightModeRequest:Z

    .line 453
    :cond_0
    if-eqz p2, :cond_1

    .line 454
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPendingSimPowerRequest:Ljava/lang/Boolean;

    .line 457
    :cond_1
    if-eqz p1, :cond_4

    .line 461
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataChannelReleased:Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataChannelReleased:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 463
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcRadio;->flightModeEnabled()V

    .line 464
    const/4 v1, 0x1

    .line 494
    :cond_2
    :goto_1
    monitor-exit p0

    .line 495
    return v1

    .line 449
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcRadio;->stopFlightModeTimer()V

    goto :goto_0

    .line 494
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 475
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    sget-object v3, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Connecting:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    sget-object v3, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Connected:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    if-eq v2, v3, :cond_5

    .line 477
    const/4 v1, 0x1

    .line 479
    :cond_5
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPerformingRadioOff:Z

    if-eqz v2, :cond_2

    .line 480
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPerformingRadioOff:Z

    .line 481
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v2}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->getObject(Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/HtcSequentialRadioPower;

    move-result-object v0

    .line 482
    .local v0, seqPower:Lcom/android/internal/telephony/HtcSequentialRadioPower;
    if-eqz v0, :cond_6

    .line 483
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->controlRadioPower(ZLjava/lang/Boolean;Landroid/os/Message;)V

    goto :goto_1

    .line 486
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public getCdmaEriAlertSoundId(Z)I
    .locals 4
    .parameter "inService"

    .prologue
    .line 999
    const/4 v0, -0x1

    .line 1000
    .local v0, soundId:I
    sget-boolean v1, Lcom/android/internal/telephony/cdma/HtcRadio;->VERIZON_CONFIG:Z

    if-eqz v1, :cond_0

    .line 1001
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->alertSoundId:I

    .line 1003
    :cond_0
    :goto_0
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcRadio] getCdmaEriAlertSoundId, soundId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    return v0

    .line 1001
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public getCdmaEriBannerStyle()I
    .locals 1

    .prologue
    .line 1042
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->bannerStyle:I

    return v0
.end method

.method public getCdmaEriCallGuard()I
    .locals 1

    .prologue
    .line 1026
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->callGuard:I

    return v0
.end method

.method public getCdmaEriCarrierId()I
    .locals 1

    .prologue
    .line 991
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->carrierId:I

    return v0
.end method

.method public getCdmaEriDataRoamingGuard()I
    .locals 1

    .prologue
    .line 1050
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->dataRoamingGuard:I

    return v0
.end method

.method public getCdmaEriDistinctiveRinger()I
    .locals 1

    .prologue
    .line 1034
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->distinctiveRinger:I

    return v0
.end method

.method public getCdmaEriRoamingIconMode()I
    .locals 2

    .prologue
    .line 969
    const/4 v0, 0x0

    .line 970
    .local v0, value:I
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->roamingIconMode:I

    if-ltz v1, :cond_0

    .line 971
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->roamingIconMode:I

    .line 973
    :cond_0
    return v0
.end method

.method public getCdmaEriRoamingIndicator()I
    .locals 2

    .prologue
    .line 957
    const/4 v0, 0x1

    .line 958
    .local v0, value:I
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->roamingIconIndicator:I

    if-ltz v1, :cond_0

    .line 959
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->roamingIconIndicator:I

    .line 961
    :cond_0
    return v0
.end method

.method public getCdmaEriRoamingType()I
    .locals 3

    .prologue
    .line 1015
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcRadio] getCdmaEriRoamingType, mRoamingType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mRoamingType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mRoamingType:I

    return v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 982
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcRadio] getCdmaEriText:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->eriText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->eriText:Ljava/lang/String;

    return-object v0
.end method

.method public getDataState()Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;
    .locals 1

    .prologue
    .line 544
    monitor-enter p0

    .line 545
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    monitor-exit p0

    return-object v0

    .line 546
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getEriTimeStamp()Ljava/util/Date;
    .locals 7

    .prologue
    .line 944
    const/4 v2, 0x0

    .line 945
    .local v2, eriTimeStamp:Ljava/util/Date;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->timeOfThisEri:Ljava/lang/Long;

    if-eqz v3, :cond_0

    .line 946
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 947
    .local v0, currentTime:J
    new-instance v2, Ljava/util/Date;

    .end local v2           #eriTimeStamp:Ljava/util/Date;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->timeOfThisEri:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v5, v0, v5

    sub-long/2addr v3, v5

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 949
    .end local v0           #currentTime:J
    :cond_0
    return-object v2
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 147
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDropEvent:Z

    if-eqz v0, :cond_0

    .line 148
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcRadio] drop event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :goto_0
    return-void

    .line 152
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 154
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcRadio;->update3GindState(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 157
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/HtcRadio;->timeoutWorkaroundPerioid(IZ)V

    goto :goto_0

    .line 160
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcRadio;->requestingRadioOffPeriod(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 163
    :pswitch_3
    const-string v0, "CDMA"

    const-string v1, "[HtcRadio], ERIInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcRadio;->eriUpdate(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 167
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/HtcRadio;->timeoutFlightModePerioid(IZ)V

    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public hasFlightModeRequested()Z
    .locals 1

    .prologue
    .line 504
    monitor-enter p0

    .line 505
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPendingFlightModeRequest:Z

    monitor-exit p0

    return v0

    .line 506
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateDataState(Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;)V
    .locals 6
    .parameter "newState"

    .prologue
    .line 556
    move-object v0, p1

    .line 557
    .local v0, reqDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;
    monitor-enter p0

    .line 558
    :try_start_0
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HtcRadio] Data state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", released="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataChannelReleased:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const/4 v1, 0x0

    .line 560
    .local v1, skipStateUpdate:Z
    sget-object v3, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Idle:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    if-ne v0, v3, :cond_0

    .line 561
    sget-object v3, Lcom/android/internal/telephony/cdma/HtcRadio$1;->$SwitchMap$com$android$internal$telephony$cdma$HtcRadio$DataConnectionState:[I

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 582
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 583
    .local v2, turnOffRequired:Z
    sget-object v3, Lcom/android/internal/telephony/cdma/HtcRadio$1;->$SwitchMap$com$android$internal$telephony$cdma$HtcRadio$DataConnectionState:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    .line 653
    :cond_1
    :goto_1
    :pswitch_0
    if-nez v1, :cond_2

    .line 654
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    .line 656
    :cond_2
    if-eqz v2, :cond_3

    .line 661
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HtcRadio] Turn off radio directly, ongoing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPerformingRadioOff:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcRadio;->flightModeEnabled()V

    .line 665
    :cond_3
    monitor-exit p0

    .line 667
    return-void

    .line 566
    .end local v2           #turnOffRequired:Z
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->ResourceReleaseWaiting:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    .line 568
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcRadio;->startWorkaroundTimer()V

    goto :goto_0

    .line 665
    .end local v1           #skipStateUpdate:Z
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 573
    .restart local v1       #skipStateUpdate:Z
    :pswitch_2
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Disconnected:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    .line 574
    goto :goto_0

    .line 578
    :pswitch_3
    const/4 v1, 0x1

    goto :goto_0

    .line 598
    .restart local v2       #turnOffRequired:Z
    :pswitch_4
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->m3gindState:I

    .line 600
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcRadio;->stopWorkaroundTimer()V

    .line 602
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataChannelReleased:Ljava/lang/Boolean;

    goto :goto_1

    .line 605
    :pswitch_5
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    sget-object v4, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Connecting:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    if-ne v3, v4, :cond_4

    .line 606
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->PendingDisconnecting:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    goto :goto_1

    .line 608
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    sget-object v4, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Connected:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    if-eq v3, v4, :cond_1

    .line 612
    const/4 v1, 0x1

    .line 614
    goto :goto_1

    .line 616
    :pswitch_6
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    sget-object v4, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->ResourceReleaseWaiting:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    if-ne v3, v4, :cond_5

    .line 617
    const/4 v1, 0x1

    goto :goto_1

    .line 619
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataChannelReleased:Ljava/lang/Boolean;

    if-eqz v3, :cond_7

    .line 620
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataChannelReleased:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 621
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPendingFlightModeRequest:Z

    .line 622
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Idle:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    goto :goto_1

    .line 625
    :cond_6
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->ResourceReleaseWaiting:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    goto :goto_1

    .line 629
    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    sget-object v4, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->PendingDisconnecting:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    if-ne v3, v4, :cond_8

    .line 633
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcRadio;->startWorkaroundTimer()V

    .line 639
    :goto_2
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->ResourceReleaseWaiting:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    .line 641
    goto :goto_1

    .line 637
    :cond_8
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataChannelReleased:Ljava/lang/Boolean;

    goto :goto_2

    .line 643
    :pswitch_7
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->m3gindState:I

    .line 645
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcRadio;->stopWorkaroundTimer()V

    .line 647
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataChannelReleased:Ljava/lang/Boolean;

    .line 648
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Idle:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    .line 649
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPendingFlightModeRequest:Z

    .line 650
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mPendingSimPowerRequest:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 561
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 583
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method
