.class public final Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;
.super Lcom/android/internal/telephony/DataConnectionTracker;
.source "CdmaDataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;,
        Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;,
        Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$ApnChangeObserver;,
        Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$RecoveryAction;
    }
.end annotation


# static fields
.field static final APN_ID:Ljava/lang/String; = "apn_id"

.field private static final DATA_CONNECTION_ACTIVE_PH_LINK_DOWN:I = 0x1

.field private static final DATA_CONNECTION_ACTIVE_PH_LINK_INACTIVE:I = 0x0

.field private static final DATA_CONNECTION_ACTIVE_PH_LINK_UP:I = 0x2

.field private static final DATA_CONNECTION_POOL_SIZE:I = 0x1

.field private static final INTENT_DATA_STALL_ALARM:Ljava/lang/String; = "com.android.internal.telephony.cdma-data-stall"

.field private static final INTENT_RECONNECT_ALARM:Ljava/lang/String; = "com.android.internal.telephony.cdma-reconnect"

.field private static final INTENT_RECONNECT_ALARM_EXTRA_TYPE:Ljava/lang/String; = "type"

.field static final PREFERAPN_URI:Landroid/net/Uri;

.field static final PREFERRED_DUN_URI:Landroid/net/Uri;

.field private static final TIME_DELAYED_TO_RESTART_RADIO:I

.field private static final mDefaultApnId:I

.field private static final mDefaultApnTypes:[Ljava/lang/String;

.field private static final mSupportedApnTypes:[Ljava/lang/String;


# instance fields
.field private ALLOW_MMS_WHEN_MOBILE_SETTING_IS_OFF:Z

.field private ALLOW_SUPL_WHEN_MOBILE_SETTING_IS_OFF:Z

.field private FirstInitRecover:Z

.field private HTC_CUSTOMIZATION_ALLOW_ADMIN_IN_ROAMING:Z

.field IgnoreRUIMCardReadyInTestVersion:Z

.field protected final LOG_TAG:Ljava/lang/String;

.field private apnFromOtherAC:Lcom/android/internal/telephony/ApnSetting;

.field private canSetPreferApn:Z

.field private canSetPreferDunApn:Z

.field private cdmaPriority:I

.field private cwGatewayAddress:Ljava/lang/String;

.field private cwWag:Ljava/lang/String;

.field private cwWag2:Ljava/lang/String;

.field private mApnObserver:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$ApnChangeObserver;

.field private mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field private mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

.field private mDunApnTypes:[Ljava/lang/String;

.field private mEriIndicator:I

.field mFailNextConnect:Z

.field private mGlobalDataRoaming:Z

.field private mHtcCdmaDataActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

.field private mHtcCdmaDataLinkError:Z

.field private mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

.field protected mHtcRadioAvaliable:Z

.field private mHtcReportedActiveApns:[Z

.field private mHtcRequestedNewApn:Ljava/lang/String;

.field mInterfaceName:Ljava/lang/String;

.field private mIsRuimCardUsed:Z

.field private mIsScreenOn:Z

.field private mPdpResetCount:I

.field private mPendingDataConnection:Lcom/android/internal/telephony/cdma/CdmaDataConnection;

.field private mPendingRestartRadio:Z

.field private mPollNetStat:Ljava/lang/Runnable;

.field private mPreferredDunApn:Lcom/android/internal/telephony/ApnSetting;

.field private mReasonInPendingIntent:Ljava/lang/String;

.field private mRecoveryAction:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$RecoveryAction;

.field private mRemoteConnection:Landroid/content/ServiceConnection;

.field private mRemoteService:Lcom/htc/cw/ICWService;

.field private mReregisterOnReconnectFailure:Z

.field private mResolver:Landroid/content/ContentResolver;

.field private mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

.field private mmsPriority:I

.field private pdpLimitSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 442
    const-string v0, "ro.cdma.timetoradiorestart"

    const v1, 0xea60

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->TIME_DELAYED_TO_RESTART_RADIO:I

    .line 472
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "default"

    aput-object v1, v0, v3

    const-string v1, "mms"

    aput-object v1, v0, v4

    const-string v1, "dun"

    aput-object v1, v0, v5

    const-string v1, "netshare"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "supl"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "fota"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "admin"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "hipri"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "cmail"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "otasp"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSupportedApnTypes:[Ljava/lang/String;

    .line 492
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "default"

    aput-object v1, v0, v3

    const-string v1, "mms"

    aput-object v1, v0, v4

    const-string v1, "hipri"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDefaultApnTypes:[Ljava/lang/String;

    .line 506
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->PREFERAPN_URI:Landroid/net/Uri;

    .line 507
    const-string v0, "content://telephony/carriers/preferdun"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->PREFERRED_DUN_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 14
    .parameter "p"

    .prologue
    const v13, 0x42003

    const/16 v12, 0xe0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 559
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 127
    const-string v6, "CDMA"

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->LOG_TAG:Ljava/lang/String;

    .line 130
    const-string v6, "persist.radio.ignoreRuimReady"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->IgnoreRUIMCardReadyInTestVersion:Z

    .line 132
    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    .line 135
    iput v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPdpResetCount:I

    .line 139
    sget-object v6, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$RecoveryAction;->REREGISTER:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$RecoveryAction;

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRecoveryAction:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$RecoveryAction;

    .line 158
    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mReregisterOnReconnectFailure:Z

    .line 406
    iput-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsScreenOn:Z

    .line 409
    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mFailNextConnect:Z

    .line 412
    iput-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->FirstInitRecover:Z

    .line 433
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v9, 0xa8

    if-ne v6, v9, :cond_5

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->ALLOW_MMS_WHEN_MOBILE_SETTING_IS_OFF:Z

    .line 436
    iput-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->ALLOW_SUPL_WHEN_MOBILE_SETTING_IS_OFF:Z

    .line 439
    iput-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaDataActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 441
    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingRestartRadio:Z

    .line 468
    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mGlobalDataRoaming:Z

    .line 469
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mEriIndicator:I

    .line 497
    new-array v6, v7, [Ljava/lang/String;

    const-string v9, "dun"

    aput-object v9, v6, v8

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDunApnTypes:[Ljava/lang/String;

    .line 503
    iput-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredDunApn:Lcom/android/internal/telephony/ApnSetting;

    .line 504
    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->canSetPreferDunApn:Z

    .line 505
    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->canSetPreferApn:Z

    .line 511
    iput v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->pdpLimitSize:I

    .line 516
    iput-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnFromOtherAC:Lcom/android/internal/telephony/ApnSetting;

    .line 520
    iput-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cwGatewayAddress:Ljava/lang/String;

    .line 521
    iput-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cwWag:Ljava/lang/String;

    .line 522
    iput-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cwWag2:Ljava/lang/String;

    .line 908
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v9, 0x94

    if-ne v6, v9, :cond_6

    move v6, v7

    :goto_1
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HTC_CUSTOMIZATION_ALLOW_ADMIN_IN_ROAMING:Z

    .line 1723
    new-instance v6, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;-><init>(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)V

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPollNetStat:Ljava/lang/Runnable;

    .line 2343
    const/16 v6, 0x12d

    iput v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mmsPriority:I

    .line 2344
    const/16 v6, 0xce4

    iput v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cdmaPriority:I

    .line 5606
    new-instance v6, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;-><init>(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)V

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRemoteConnection:Landroid/content/ServiceConnection;

    .line 560
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 562
    iget-object v6, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v9, 0x42001

    invoke-interface {v6, p0, v9, v11}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 563
    iget-object v6, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v9, 0x42006

    invoke-interface {v6, p0, v9, v11}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 565
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v6, v12, :cond_7

    .line 567
    iget-object v6, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v9, 0x4202d

    invoke-interface {v6, p0, v9, v11}, Lcom/android/internal/telephony/CommandsInterface;->registerForRUIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 574
    :goto_2
    iget-object v6, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v9, 0x42015

    invoke-interface {v6, p0, v9, v11}, Lcom/android/internal/telephony/CommandsInterface;->registerForNVReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 575
    iget-object v6, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v9, 0x42004

    invoke-interface {v6, p0, v9, v11}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 576
    iget-object v6, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    const v9, 0x42008

    invoke-virtual {v6, p0, v9, v11}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 577
    iget-object v6, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    const v9, 0x42007

    invoke-virtual {v6, p0, v9, v11}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 579
    sget v6, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RIL_CAPABILITIES:I

    and-int/lit8 v6, v6, 0x2

    const/4 v9, 0x2

    if-ne v6, v9, :cond_8

    .line 580
    new-instance v6, Lcom/android/internal/telephony/DataServiceStateTracker;

    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v10, v10, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v6, p0, v9, v11, v10}, Lcom/android/internal/telephony/DataServiceStateTracker;-><init>(Lcom/android/internal/telephony/DataConnectionTracker;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    .line 581
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v6, p0, v13, v11}, Lcom/android/internal/telephony/DataServiceStateTracker;->registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 582
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    const v9, 0x42014

    invoke-virtual {v6, p0, v9, v11}, Lcom/android/internal/telephony/DataServiceStateTracker;->registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 583
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    const v9, 0x4200b

    invoke-virtual {v6, p0, v9, v11}, Lcom/android/internal/telephony/DataServiceStateTracker;->registerForDataRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 584
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    const v9, 0x4200c

    invoke-virtual {v6, p0, v9, v11}, Lcom/android/internal/telephony/DataServiceStateTracker;->registerForDataRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 586
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    const v9, 0x4202e

    invoke-virtual {v6, p0, v9, v11}, Lcom/android/internal/telephony/DataServiceStateTracker;->registerForRadioTechnologyChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 598
    :goto_3
    iget-object v6, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v9, 0x42019

    invoke-interface {v6, p0, v9, v11}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 600
    iget-object v6, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v9, 0x42023

    invoke-interface {v6, p0, v9, v11}, Lcom/android/internal/telephony/CommandsInterface;->registerForMIPFailCause(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 604
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VZW_GLOBAL_ROAMING_CONFIG()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 605
    :cond_0
    iget-object v6, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v9, 0x42027

    invoke-interface {v6, p0, v9, v11}, Lcom/android/internal/telephony/CommandsInterface;->registerForERIInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 609
    :cond_1
    iput-object p0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    .line 612
    new-instance v6, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-direct {v6, p0, v9}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;-><init>(Lcom/android/internal/telephony/DataConnectionTracker;Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    .line 616
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->createAllDataConnectionList()V

    .line 617
    const/16 v6, 0x11

    new-array v6, v6, [Z

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcReportedActiveApns:[Z

    .line 622
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v6, v12, :cond_2

    .line 624
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isRuimCardSupported()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    .line 628
    :cond_2
    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v6, :cond_9

    .line 630
    const-string v6, "RUIM CARD Project"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 631
    new-instance v6, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$ApnChangeObserver;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$ApnChangeObserver;-><init>(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)V

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnObserver:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$ApnChangeObserver;

    .line 632
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v9, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnObserver:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$ApnChangeObserver;

    invoke-virtual {v6, v9, v7, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 634
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    .line 635
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->initApnContextsAndDataConnection()V

    .line 637
    new-instance v6, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    invoke-direct {v6, p0, v11}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;-><init>(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;)V

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    .line 638
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->switchOffACs:Ljava/util/ArrayList;

    .line 646
    :goto_4
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isCWDataConnectionSupported()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 648
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    const-string v9, "com.htc.cw.CWService"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRemoteConnection:Landroid/content/ServiceConnection;

    const/4 v10, 0x1

    invoke-virtual {v6, v7, v9, v10}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    .line 649
    .local v3, ret:Z
    if-nez v3, :cond_3

    .line 650
    const-string v6, "CDMA"

    const-string v7, "[HTCCW]fail to bind to CW service for SIP operation"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    .end local v3           #ret:Z
    :cond_3
    :goto_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->broadcastMessenger()V

    .line 660
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 662
    .local v0, c:Landroid/content/Context;
    const/4 v4, 0x0

    .line 666
    .local v4, t:[Ljava/lang/String;
    if-eqz v4, :cond_b

    array-length v6, v4

    if-lez v6, :cond_b

    .line 667
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 668
    .local v5, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6
    array-length v6, v4

    if-ge v2, v6, :cond_a

    .line 669
    const-string v6, "dun"

    aget-object v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 670
    aget-object v6, v4, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .end local v0           #c:Landroid/content/Context;
    .end local v2           #i:I
    .end local v4           #t:[Ljava/lang/String;
    .end local v5           #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    move v6, v8

    .line 433
    goto/16 :goto_0

    :cond_6
    move v6, v8

    .line 908
    goto/16 :goto_1

    .line 571
    :cond_7
    iget-object v6, p1, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    const v9, 0x42002

    invoke-virtual {v6, p0, v9, v11}, Lcom/android/internal/telephony/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 591
    :cond_8
    iget-object v6, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v6, p0, v13, v11}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 592
    iget-object v6, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const v9, 0x42014

    invoke-virtual {v6, p0, v9, v11}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 593
    iget-object v6, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const v9, 0x4200b

    invoke-virtual {v6, p0, v9, v11}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 594
    iget-object v6, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const v9, 0x4200c

    invoke-virtual {v6, p0, v9, v11}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 641
    :cond_9
    const-string v6, "None RUIM Card Project"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 652
    :catch_0
    move-exception v1

    .line 653
    .local v1, e:Ljava/lang/SecurityException;
    const-string v6, "CDMA"

    const-string v7, "[HTCCW]no permission to bind CW service"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 673
    .end local v1           #e:Ljava/lang/SecurityException;
    .restart local v0       #c:Landroid/content/Context;
    .restart local v2       #i:I
    .restart local v4       #t:[Ljava/lang/String;
    .restart local v5       #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a
    const-string v6, "dun"

    invoke-virtual {v5, v8, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 674
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDunApnTypes:[Ljava/lang/String;

    .line 677
    .end local v2           #i:I
    .end local v5           #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_b
    return-void
.end method

.method private HtcAddRouting()V
    .locals 12

    .prologue
    const/16 v11, 0x50

    const/4 v10, 0x0

    .line 2368
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingDataConnection:Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->getDataConnectionId()I

    move-result v3

    .line 2369
    .local v3, id:I
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnectionAc;

    .line 2370
    .local v0, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionAc;->getLinkPropertiesSync()Landroid/net/LinkProperties;

    move-result-object v4

    .line 2371
    .local v4, lp:Landroid/net/LinkProperties;
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mInterfaceName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2377
    .end local v0           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    .end local v3           #id:I
    .end local v4           #lp:Landroid/net/LinkProperties;
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "net."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".gw"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2379
    .local v2, gw:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HtcAddRouting mInterfaceName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", gw:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2380
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaProfileSwitch:Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileSwitch;->getCurrentDataProfile()I

    move-result v5

    .line 2382
    .local v5, profileType:I
    const/4 v6, 0x4

    if-ne v5, v6, :cond_5

    .line 2383
    const/16 v6, 0xc8

    iput v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cdmaPriority:I

    .line 2392
    :goto_1
    const-string v6, "mms"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2393
    const-string v6, "adding mms routing rule"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2394
    const-string v6, "mms"

    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mmsPriority:I

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mInterfaceName:Ljava/lang/String;

    invoke-direct {p0, v6, v7, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setRoutuing(Ljava/lang/String;ILjava/lang/String;)V

    .line 2397
    :cond_0
    const-string v6, "hipri"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2398
    const-string v6, "adding hipri routing table and rule"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2399
    const-string v6, "hipri"

    const/16 v7, 0x6a4

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mInterfaceName:Ljava/lang/String;

    invoke-direct {p0, v6, v7, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setRoutuing(Ljava/lang/String;ILjava/lang/String;)V

    .line 2402
    :cond_1
    const-string v6, "cmail"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2403
    const-string v6, "adding cmail routing table and rule"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2404
    const-string v6, "cmail"

    const/16 v7, 0x320

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mInterfaceName:Ljava/lang/String;

    invoke-direct {p0, v6, v7, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setRoutuing(Ljava/lang/String;ILjava/lang/String;)V

    .line 2407
    :cond_2
    const-string v6, "adding gprs routing rule"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2408
    const-string v6, "gprs"

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v6, v7, v2, v10}, Landroid/net/NetworkUtils;->addRoutingTable_ext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 2409
    const-string v6, "all"

    const-string v7, "all"

    const-string v8, "gprs"

    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cdmaPriority:I

    invoke-static {v6, v7, v8, v9, v10}, Landroid/net/NetworkUtils;->addRoutingRule_ext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    .line 2412
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getActiveCid()I

    move-result v6

    const/16 v7, 0xa0

    if-ne v6, v7, :cond_4

    .line 2413
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adding cw routing rule, cwWag:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cwWag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cwGateWayAddr:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cwGatewayAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2414
    const-string v6, "dhcp.wlan0.gateway"

    const-string v7, "192.168.1.1"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cwGatewayAddress:Ljava/lang/String;

    .line 2415
    const-string v6, "cw"

    const-string v7, "wlan0"

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cwGatewayAddress:Ljava/lang/String;

    invoke-static {v6, v7, v8, v10}, Landroid/net/NetworkUtils;->addRoutingTable_ext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 2416
    const-string v6, "cdma.cw.wag1"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cwWag:Ljava/lang/String;

    .line 2417
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cwWag:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 2418
    const-string v6, "all"

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cwWag:Ljava/lang/String;

    const-string v8, "cw"

    invoke-static {v6, v7, v8, v11, v10}, Landroid/net/NetworkUtils;->addRoutingRule_ext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    .line 2420
    :cond_3
    const-string v6, "cdma.cw.wag2"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cwWag2:Ljava/lang/String;

    .line 2421
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cwWag2:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 2422
    const-string v6, "all"

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cwWag2:Ljava/lang/String;

    const-string v8, "cw"

    invoke-static {v6, v7, v8, v11, v10}, Landroid/net/NetworkUtils;->addRoutingRule_ext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    .line 2426
    :cond_4
    return-void

    .line 2372
    .end local v2           #gw:Ljava/lang/String;
    .end local v5           #profileType:I
    :catch_0
    move-exception v1

    .line 2373
    .local v1, e:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[WARNING] not able to get interface name when trying to add routing due to:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2374
    const-string v6, ""

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mInterfaceName:Ljava/lang/String;

    goto/16 :goto_0

    .line 2388
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #gw:Ljava/lang/String;
    .restart local v5       #profileType:I
    :cond_5
    const/16 v6, 0xce4

    iput v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cdmaPriority:I

    goto/16 :goto_1
.end method

.method private HtcCleanupDC(Lcom/android/internal/telephony/DataConnectionAc;Lcom/android/internal/telephony/ApnContext;)V
    .locals 10
    .parameter "dcac"
    .parameter "pendingAC"

    .prologue
    .line 309
    invoke-virtual {p1}, Lcom/android/internal/telephony/DataConnectionAc;->getApnSettingSync()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v1

    .line 310
    .local v1, apnSetting:Lcom/android/internal/telephony/ApnSetting;
    if-nez v1, :cond_0

    .line 312
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getByReferredAC(Lcom/android/internal/telephony/DataConnectionAc;)Lcom/android/internal/telephony/ApnSetting;

    move-result-object v1

    .line 314
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HtcCleanupDC: got apnsetting="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 315
    if-nez v1, :cond_0

    .line 369
    :goto_0
    return-void

    .line 330
    :cond_0
    iget-object v2, v1, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    .local v2, arr$:[Ljava/lang/String;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v7, v2, v3

    .line 331
    .local v7, type:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/ApnContext;

    .line 332
    .local v6, tmpac:Lcom/android/internal/telephony/ApnContext;
    if-nez v6, :cond_2

    .line 333
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HtcCleanupDC WARNING: got null ac from dcac\'s types[], type="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 330
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 336
    :cond_2
    invoke-virtual {v6}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v8

    if-ne v8, p1, :cond_1

    .line 337
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->switchOffACs:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 341
    .end local v6           #tmpac:Lcom/android/internal/telephony/ApnContext;
    .end local v7           #type:Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    .line 342
    .local v0, ac:Lcom/android/internal/telephony/ApnContext;
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->switchOffACs:Ljava/util/ArrayList;

    if-eqz v8, :cond_4

    .line 344
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->switchOffACs:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #ac:Lcom/android/internal/telephony/ApnContext;
    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 354
    .restart local v0       #ac:Lcom/android/internal/telephony/ApnContext;
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iput-object p2, v8, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->pendingAC:Lcom/android/internal/telephony/ApnContext;

    .line 356
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->dumpSwitchApnRecord()V

    .line 358
    const-string v8, "apnSwitched"

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    .line 360
    iget-object v8, p1, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnection;->resetRefCount()V

    .line 361
    const v8, 0x4200f

    invoke-virtual {p0, v8, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 363
    .local v5, msg:Landroid/os/Message;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v8

    if-nez v8, :cond_5

    .line 364
    const-string v8, "!!! ac.dc is null. It should not happen"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 348
    .end local v5           #msg:Landroid/os/Message;
    :cond_4
    const-string v8, "mSwitchApnRecord.switchOffACs is null. Should not happen"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 366
    .restart local v5       #msg:Landroid/os/Message;
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v5}, Lcom/android/internal/telephony/DataConnection;->tearDown(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0
.end method

.method private HtcDelRouting()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x320

    const/16 v5, 0x50

    const/4 v4, 0x0

    .line 2442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delRouting: mInterfaceName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2443
    const-string v0, "mms"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2444
    const-string v0, "mms"

    const-string v1, "mms"

    const/16 v2, 0x15e

    sget-object v3, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcDelRequestRouteToHost(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/Phone$IPVersion;)V

    .line 2445
    const-string v0, "mms"

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mmsPriority:I

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mInterfaceName:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->removeRoutuing(Ljava/lang/String;ILjava/lang/String;)V

    .line 2448
    :cond_0
    const-string v0, "hipri"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2449
    const-string v0, "hipri"

    const-string v1, "hipri"

    const/16 v2, 0x672

    sget-object v3, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcDelRequestRouteToHost(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/Phone$IPVersion;)V

    .line 2450
    const-string v0, "hipri"

    const/16 v1, 0x6a4

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mInterfaceName:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->removeRoutuing(Ljava/lang/String;ILjava/lang/String;)V

    .line 2453
    :cond_1
    const-string v0, "cmail"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2454
    const-string v0, "cmail"

    const-string v1, "cmail"

    sget-object v2, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, v0, v1, v6, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcDelRequestRouteToHost(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/Phone$IPVersion;)V

    .line 2455
    const-string v0, "cmail"

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mInterfaceName:Ljava/lang/String;

    invoke-direct {p0, v0, v6, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->removeRoutuing(Ljava/lang/String;ILjava/lang/String;)V

    .line 2458
    :cond_2
    const-string v0, "deleting gprs routing rule"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2459
    const-string v0, "all"

    const-string v1, "all"

    const-string v2, "gprs"

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cdmaPriority:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/net/NetworkUtils;->delRoutingRule_ext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    .line 2460
    const-string v0, "gprs"

    invoke-static {v0, v4}, Landroid/net/NetworkUtils;->delRoutingTable_ext(Ljava/lang/String;I)I

    .line 2463
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getActiveCid()I

    move-result v0

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_5

    .line 2464
    const-string v0, "deleting cw routing rule"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2465
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cwWag:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 2466
    const-string v0, "all"

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cwWag:Ljava/lang/String;

    const-string v2, "cw"

    invoke-static {v0, v1, v2, v5, v4}, Landroid/net/NetworkUtils;->delRoutingRule_ext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    .line 2467
    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cwWag:Ljava/lang/String;

    .line 2469
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cwWag2:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 2470
    const-string v0, "all"

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cwWag2:Ljava/lang/String;

    const-string v2, "cw"

    invoke-static {v0, v1, v2, v5, v4}, Landroid/net/NetworkUtils;->delRoutingRule_ext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    .line 2471
    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cwWag2:Ljava/lang/String;

    .line 2473
    :cond_4
    const-string v0, "cw"

    invoke-static {v0, v4}, Landroid/net/NetworkUtils;->delRoutingTable_ext(Ljava/lang/String;I)I

    .line 2476
    :cond_5
    return-void
.end method

.method private HtcPdpLimitRule(ZZLcom/android/internal/telephony/ApnContext;)Z
    .locals 3
    .parameter "cleanup"
    .parameter "setup"
    .parameter "ac"

    .prologue
    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HtcPdpLimitRule("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " used="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->usedNumberOfDC()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->pdpLimitSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDCs.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 273
    const/4 v0, 0x0

    .line 274
    .local v0, goSwitching:Z
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->dumpDCApn()V

    .line 275
    if-eqz p2, :cond_3

    .line 276
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->usedNumberOfDC()I

    move-result v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->pdpLimitSize:I

    if-lt v1, v2, :cond_2

    .line 277
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->ifDCCanHandle(Lcom/android/internal/telephony/ApnContext;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->ifApnDupWithExisted(Lcom/android/internal/telephony/ApnContext;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 278
    const/4 v0, 0x1

    .line 285
    :cond_0
    :goto_0
    return v0

    .line 280
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 282
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 283
    :cond_3
    if-eqz p1, :cond_0

    goto :goto_0
.end method

.method private HtcSwitchApn(ZZLcom/android/internal/telephony/ApnContext;)V
    .locals 9
    .parameter "cleanup"
    .parameter "setup"
    .parameter "ac"

    .prologue
    const/4 v8, 0x1

    .line 372
    const-string v5, "*** HtcSwitchApn"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 373
    if-eqz p2, :cond_5

    .line 374
    const-wide/16 v3, -0x1

    .line 375
    .local v3, latestTime:J
    const/4 v2, 0x0

    .line 376
    .local v2, latestDCAC:Lcom/android/internal/telephony/DataConnectionAc;
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnectionAc;

    .line 377
    .local v0, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    iget-object v5, v0, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    check-cast v5, Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->getCreateTime()J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-ltz v5, :cond_0

    .line 378
    iget v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->pdpLimitSize:I

    if-eq v5, v8, :cond_1

    iget-object v6, v0, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v7, "default"

    invoke-virtual {v5, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/ApnContext;

    invoke-virtual {v5}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v5

    if-eq v6, v5, :cond_1

    .line 380
    iget-object v5, v0, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    check-cast v5, Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->getCreateTime()J

    move-result-wide v3

    .line 381
    move-object v2, v0

    goto :goto_0

    .line 382
    :cond_1
    iget v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->pdpLimitSize:I

    if-ne v5, v8, :cond_0

    .line 383
    iget-object v5, v0, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    check-cast v5, Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->getCreateTime()J

    move-result-wide v3

    .line 384
    move-object v2, v0

    goto :goto_0

    .line 389
    .end local v0           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :cond_2
    if-nez v2, :cond_4

    .line 390
    const-string v5, "HtcSwitchApn WARNING: can not find any DCAC"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 398
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #latestDCAC:Lcom/android/internal/telephony/DataConnectionAc;
    .end local v3           #latestTime:J
    :cond_3
    :goto_1
    return-void

    .line 393
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #latestDCAC:Lcom/android/internal/telephony/DataConnectionAc;
    .restart local v3       #latestTime:J
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Switch this DC : dc.mId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v6}, Lcom/android/internal/telephony/DataConnection;->getDataConnectionId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dc.cid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionAc;->getCidSync()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dc=<<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 395
    invoke-direct {p0, v2, p3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcCleanupDC(Lcom/android/internal/telephony/DataConnectionAc;Lcom/android/internal/telephony/ApnContext;)V

    goto :goto_1

    .line 396
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #latestDCAC:Lcom/android/internal/telephony/DataConnectionAc;
    .end local v3           #latestTime:J
    :cond_5
    if-eqz p1, :cond_3

    goto :goto_1
.end method

.method private HtcTryPendingEnabled(Lcom/android/internal/telephony/ApnContext;)V
    .locals 4
    .parameter "curAc"

    .prologue
    .line 4803
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 4804
    .local v0, ac:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v2

    if-nez v2, :cond_0

    if-eq v0, p1, :cond_0

    .line 4806
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HtcTryPendingEnabled: found enabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " have no dc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4807
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Lcom/android/internal/telephony/ApnContext;)Z

    goto :goto_0

    .line 4810
    .end local v0           #ac:Lcom/android/internal/telephony/ApnContext;
    :cond_1
    return-void
.end method

.method private HtcUpdateConnectedProp()V
    .locals 2

    .prologue
    .line 5357
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5358
    const-string v0, "set net.gprs.data.connected 1"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5359
    const-string v0, "net.gprs.data.connected"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5365
    :goto_0
    return-void

    .line 5361
    :cond_0
    const-string v0, "set net.gprs.data.connected 0"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5362
    const-string v0, "net.gprs.data.connected"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private HtcisAnyTypeEnabled()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 3931
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v4, :cond_2

    .line 3932
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 3933
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3945
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    return v3

    .line 3938
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/16 v4, 0x11

    if-ge v1, v4, :cond_3

    .line 3939
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3938
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3945
    .end local v1           #i:I
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private HtcisDataAllowed(ZZZZ)Z
    .locals 10
    .parameter "alwaysAllowProfile"
    .parameter "alwaysAllowDataRoam"
    .parameter "checkDataRoamGuard"
    .parameter "checkDefaultOnly"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1010
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcGetCDMADataRoamingState()Z

    move-result v5

    .line 1028
    .local v5, roaming:Z
    const/4 v1, 0x1

    .line 1029
    .local v1, allowData:Z
    const/16 v8, 0xa

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v8

    if-nez v8, :cond_4

    const/16 v8, 0xd

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1036
    if-nez p2, :cond_0

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v8

    if-eqz v8, :cond_b

    :cond_0
    if-nez p1, :cond_1

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->profileAllowDataConnection()Z

    move-result v8

    if-eqz v8, :cond_b

    :cond_1
    if-eqz p3, :cond_2

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->blockedByDataRoamGuard()Z

    move-result v8

    if-nez v8, :cond_b

    :cond_2
    move v1, v6

    .line 1074
    :goto_0
    if-eqz v1, :cond_4

    .line 1076
    const/4 v0, 0x0

    .line 1077
    .local v0, allowBySettingOrWhitelist:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    const/16 v8, 0x11

    if-ge v3, v8, :cond_3

    .line 1080
    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v8, :cond_c

    .line 1082
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/ApnContext;

    .line 1083
    .local v2, apnContext:Lcom/android/internal/telephony/ApnContext;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ApnContextEnabled="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1085
    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcGetAnyDataEnabled(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1087
    const/4 v0, 0x1

    .line 1101
    .end local v2           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_3
    :goto_2
    if-eqz v1, :cond_e

    if-eqz v0, :cond_e

    move v1, v6

    .line 1106
    .end local v0           #allowBySettingOrWhitelist:Z
    .end local v3           #i:I
    :cond_4
    :goto_3
    if-nez v1, :cond_a

    .line 1107
    const-string v4, ""

    .line 1108
    .local v4, reason:Ljava/lang/String;
    if-nez p2, :cond_5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v6

    if-nez v6, :cond_5

    .line 1109
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - roam : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1111
    :cond_5
    if-nez p1, :cond_6

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->profileAllowDataConnection()Z

    move-result v6

    if-nez v6, :cond_6

    .line 1112
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - profile : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->profileAllowDataConnection()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1114
    :cond_6
    if-eqz p3, :cond_7

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->blockedByDataRoamGuard()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1115
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - dataroamguard : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->blockedByDataRoamGuard()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1117
    :cond_7
    iget-boolean v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserDataEnabled:Z

    if-eqz v6, :cond_8

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getMobileDataSettingEnabled()Z

    move-result v6

    if-nez v6, :cond_9

    .line 1118
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - master : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserDataEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getMobileDataSettingEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1120
    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HtcisDataAllowed: Data not allowed due to"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1122
    .end local v4           #reason:Ljava/lang/String;
    :cond_a
    return v1

    :cond_b
    move v1, v7

    .line 1036
    goto/16 :goto_0

    .line 1093
    .restart local v0       #allowBySettingOrWhitelist:Z
    .restart local v3       #i:I
    :cond_c
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcGetAnyDataEnabled(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1095
    const/4 v0, 0x1

    .line 1096
    goto/16 :goto_2

    .line 1077
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_e
    move v1, v7

    .line 1101
    goto/16 :goto_3
.end method

.method private IgnoreCDMAReadyState()Z
    .locals 2

    .prologue
    .line 839
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_0

    .line 841
    const/4 v0, 0x1

    .line 844
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private SetupDataCallRUIMCardBase(Lcom/android/internal/telephony/ApnContext;)Z
    .locals 6
    .parameter "apnContext"

    .prologue
    const/4 v1, 0x0

    .line 4183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trySetupData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "(unspecified)"

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isPsRestricted="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsPsRestricted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4187
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/ServiceStateTracker;->getDesiredPowerState()Z

    move-result v0

    .line 4189
    .local v0, desiredPowerState:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v3, v4, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v3, v4, :cond_4

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isDataAllowed(Lcom/android/internal/telephony/ApnContext;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isEmergency()Z

    move-result v3

    if-nez v3, :cond_4

    .line 4192
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v3, v4, :cond_3

    .line 4193
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->buildWaitingApns(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4194
    .local v2, waitingApns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4195
    const-string v3, "trySetupData: No APN found"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4196
    sget-object v3, Lcom/android/internal/telephony/DataConnection$FailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/ApnContext;)V

    .line 4199
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcNotifyAvailability(Ljava/lang/String;)V

    .line 4233
    .end local v2           #waitingApns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    :goto_1
    return v1

    .line 4183
    .end local v0           #desiredPowerState:Z
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 4203
    .restart local v0       #desiredPowerState:Z
    .restart local v2       #waitingApns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/ApnContext;->setWaitingApns(Ljava/util/ArrayList;)V

    .line 4205
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trySetupData: Create from mAllApns : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4211
    .end local v2           #waitingApns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setup watingApns : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4214
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setupData(Lcom/android/internal/telephony/ApnContext;)Z

    move-result v1

    .line 4217
    .local v1, retValue:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcNotifyAvailability(Ljava/lang/String;)V

    goto :goto_1

    .line 4223
    .end local v1           #retValue:Z
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SetupDataCallRUIMCardBase => state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,apnContext.isReady()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4224
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "default"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v3, v4, :cond_5

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v3, v4, :cond_6

    .line 4227
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 4230
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcNotifyAvailability(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput-wide p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$1214(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput-wide p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    return-wide p1
.end method

.method static synthetic access$1402(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput-wide p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput-wide p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    return-wide p1
.end method

.method static synthetic access$1800(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Lcom/android/internal/telephony/DataConnectionTracker$Activity;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaDataActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsScreenOn:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Lcom/android/internal/telephony/DataConnectionTracker$Activity;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    return-wide v0
.end method

.method static synthetic access$2700(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    return-wide v0
.end method

.method static synthetic access$2900(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mTxPkts:J

    return-wide v0
.end method

.method static synthetic access$3008(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 126
    iget v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I

    return v0
.end method

.method static synthetic access$3102(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollPeriod:I

    return p1
.end method

.method static synthetic access$3200(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    return-wide v0
.end method

.method static synthetic access$3302(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollEnabled:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I

    return p1
.end method

.method static synthetic access$3602(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollPeriod:I

    return p1
.end method

.method static synthetic access$3700(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollEnabled:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollPeriod:I

    return v0
.end method

.method static synthetic access$3900(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRxPkts:J

    return-wide v0
.end method

.method static synthetic access$4002(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Lcom/htc/cw/ICWService;)Lcom/htc/cw/ICWService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRemoteService:Lcom/htc/cw/ICWService;

    return-object p1
.end method

.method static synthetic access$4102(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSipInviteOK:Z

    return p1
.end method

.method static synthetic access$4202(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCwRegState:I

    return p1
.end method

.method static synthetic access$4302(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSipInviteOK:Z

    return p1
.end method

.method static synthetic access$4402(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCwRegState:I

    return p1
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput-wide p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mTxPkts:J

    return-wide p1
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput-wide p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRxPkts:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollEnabled:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mTxPkts:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRxPkts:J

    return-wide v0
.end method

.method private addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;
    .locals 2
    .parameter "type"

    .prologue
    .line 5390
    new-instance v0, Lcom/android/internal/telephony/ApnContext;

    const-string v1, "CDMA"

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/ApnContext;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5391
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ApnContext;->setDependencyMet(Z)V

    .line 5392
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5393
    return-object v0
.end method

.method private addDUNApnType([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "types"

    .prologue
    .line 5381
    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 5382
    .local v1, temp:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 5383
    .local v0, i:I
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 5384
    aget-object v2, p1, v0

    aput-object v2, v1, v0

    .line 5383
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5385
    :cond_0
    const-string v2, "dun"

    aput-object v2, v1, v0

    .line 5386
    return-object v1
.end method

.method private addSuplApnType([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "types"

    .prologue
    .line 5369
    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 5370
    .local v1, temp:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 5371
    .local v0, i:I
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 5372
    aget-object v2, p1, v0

    aput-object v2, v1, v0

    .line 5371
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5373
    :cond_0
    const-string v2, "supl"

    aput-object v2, v1, v0

    .line 5374
    return-object v1
.end method

.method private apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/ApnSetting;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 5396
    .local p1, apns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5397
    .local v1, result:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, size:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 5398
    const/16 v3, 0x5b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5397
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5402
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private applyNewState(Lcom/android/internal/telephony/ApnContext;ZZ)V
    .locals 4
    .parameter "apnContext"
    .parameter "enabled"
    .parameter "met"

    .prologue
    .line 4069
    const/4 v0, 0x0

    .line 4070
    .local v0, cleanup:Z
    const/4 v1, 0x0

    .line 4072
    .local v1, trySetup:Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyNewState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getDependencyMet()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "))"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4076
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4077
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 4118
    :cond_0
    :goto_0
    return-void

    .line 4078
    :cond_1
    if-nez p2, :cond_3

    .line 4079
    const-string v2, "dataDisabled"

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    .line 4083
    :goto_1
    const/4 v0, 0x1

    .line 4097
    :cond_2
    :goto_2
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/ApnContext;->setEnabled(Z)V

    .line 4099
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v3

    aput-boolean p2, v2, v3

    .line 4101
    invoke-virtual {p1, p3}, Lcom/android/internal/telephony/ApnContext;->setDependencyMet(Z)V

    .line 4109
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcPdpLimitRule(ZZLcom/android/internal/telephony/ApnContext;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4110
    const-string v2, "HtcPdpLimitRule: return true, do switch"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4111
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcSwitchApn(ZZLcom/android/internal/telephony/ApnContext;)V

    goto :goto_0

    .line 4081
    :cond_3
    const-string v2, "dependencyUnmet"

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    goto :goto_1

    .line 4085
    :cond_4
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 4086
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4087
    const-string v2, "dependencyMet"

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    .line 4091
    :goto_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v2, v3, :cond_5

    .line 4092
    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 4094
    :cond_5
    const/4 v1, 0x1

    goto :goto_2

    .line 4089
    :cond_6
    const-string v2, "dataEnabled"

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    goto :goto_3

    .line 4113
    :cond_7
    const-string v2, "HtcPdpLimitRule: return false, not do switch"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4114
    if-eqz v0, :cond_8

    const/4 v2, 0x1

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnectionByApnContext(ZLcom/android/internal/telephony/ApnContext;)V

    .line 4115
    :cond_8
    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Lcom/android/internal/telephony/ApnContext;)Z

    goto :goto_0
.end method

.method private broadcastDisconnectedForApns(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "apns"
    .parameter "reason"

    .prologue
    .line 3662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastDisconnectedForApns state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$DataState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " types="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3665
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v0, p2, p1, v1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V

    .line 3667
    return-void
.end method

.method private buildWaitingApns(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 26
    .parameter "requestedApnType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/ApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4928
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 4930
    .local v21, apnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    const-string v3, "dun"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4931
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->fetchDunApn()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v22

    .line 4932
    .local v22, dun:Lcom/android/internal/telephony/ApnSetting;
    if-eqz v22, :cond_0

    .line 4933
    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4934
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildWaitingApns: X added APN_TYPE_DUN apnList="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5048
    .end local v22           #dun:Lcom/android/internal/telephony/ApnSetting;
    :goto_0
    return-object v21

    .line 4940
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    check-cast v3, Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/RuimRecords;->getRUIMOperatorNumeric()Ljava/lang/String;

    move-result-object v24

    .line 4943
    .local v24, operator:Ljava/lang/String;
    if-nez v24, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->IgnoreRUIMCardReadyInTestVersion:Z

    if-eqz v3, :cond_1

    .line 4945
    const-string v3, "persist.radio.hardcodemccmnc"

    const-string v4, "46605"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 4946
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hardcode operator numeric to"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4949
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v25

    .line 4951
    .local v25, radioTech:I
    const-string v3, "default"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4952
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->canSetPreferApn:Z

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v3, :cond_4

    .line 4954
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildWaitingApns: Preferred APN:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v4, v4, Lcom/android/internal/telephony/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4957
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v3, v3, Lcom/android/internal/telephony/ApnSetting;->numeric:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4958
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget v3, v3, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget v3, v3, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    move/from16 v0, v25

    if-ne v3, v0, :cond_3

    .line 4959
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4960
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildWaitingApns: X added preferred apnList="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4963
    :cond_3
    const-string v3, "buildWaitingApns: no preferred APN"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4964
    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setPreferredApn(I)V

    .line 4965
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    .line 4976
    :cond_4
    :goto_1
    const-string v3, "dun"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 4978
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->canSetPreferDunApn:Z

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredDunApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v3, :cond_8

    .line 4979
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildWaitingApns: Preferred Dun APN:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredDunApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v4, v4, Lcom/android/internal/telephony/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredDunApn:Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4981
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredDunApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v3, v3, Lcom/android/internal/telephony/ApnSetting;->numeric:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 4982
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredDunApn:Lcom/android/internal/telephony/ApnSetting;

    iget v3, v3, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredDunApn:Lcom/android/internal/telephony/ApnSetting;

    iget v3, v3, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    move/from16 v0, v25

    if-ne v3, v0, :cond_7

    .line 4983
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredDunApn:Lcom/android/internal/telephony/ApnSetting;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4984
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildWaitingApns: X added preferred dun apnList="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4968
    :cond_6
    const-string v3, "buildWaitingApns: no preferred APN"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4969
    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setPreferredApn(I)V

    .line 4970
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    goto/16 :goto_1

    .line 4987
    :cond_7
    const-string v3, "buildWaitingApns: no preferred dun APN"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4998
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    if-eqz v3, :cond_c

    .line 4999
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :cond_9
    :goto_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/telephony/ApnSetting;

    .line 5000
    .local v20, apn:Lcom/android/internal/telephony/ApnSetting;
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 5001
    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    if-eqz v3, :cond_a

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    move/from16 v0, v25

    if-ne v3, v0, :cond_9

    .line 5002
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apn info : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5006
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 4991
    .end local v20           #apn:Lcom/android/internal/telephony/ApnSetting;
    .end local v23           #i$:Ljava/util/Iterator;
    :cond_b
    const-string v3, "buildWaitingApns: no preferred dun APN, no error handling..."

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 5011
    :cond_c
    const-string v3, "mAllApns is empty!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->loge(Ljava/lang/String;)V

    .line 5016
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    if-eqz v3, :cond_f

    const-string v3, "supl"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getDataEnabled()Z

    move-result v3

    if-nez v3, :cond_f

    .line 5018
    const-string v3, "clone a default with supl, add to apnList"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5019
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23       #i$:Ljava/util/Iterator;
    :cond_e
    :goto_4
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/telephony/ApnSetting;

    .line 5020
    .restart local v20       #apn:Lcom/android/internal/telephony/ApnSetting;
    const-string v3, "default"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 5021
    const/4 v3, 0x1

    new-array v15, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "supl"

    aput-object v4, v15, v3

    .line 5022
    .local v15, types:[Ljava/lang/String;
    new-instance v2, Lcom/android/internal/telephony/ApnSetting;

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/internal/telephony/ApnSetting;->id:I

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/internal/telephony/ApnSetting;->numeric:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/internal/telephony/ApnSetting;->carrier:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/android/internal/telephony/ApnSetting;->proxy:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/android/internal/telephony/ApnSetting;->port:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/android/internal/telephony/ApnSetting;->mmsc:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v10, v0, Lcom/android/internal/telephony/ApnSetting;->mmsProxy:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v11, v0, Lcom/android/internal/telephony/ApnSetting;->mmsPort:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v12, v0, Lcom/android/internal/telephony/ApnSetting;->user:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v13, v0, Lcom/android/internal/telephony/ApnSetting;->password:Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/ApnSetting;->protocol:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/ApnSetting;->roamingProtocol:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/internal/telephony/ApnSetting;->carrierEnabled:Z

    move/from16 v18, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    move/from16 v19, v0

    invoke-direct/range {v2 .. v19}, Lcom/android/internal/telephony/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 5026
    .local v2, tmpApn:Lcom/android/internal/telephony/ApnSetting;
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 5032
    .end local v2           #tmpApn:Lcom/android/internal/telephony/ApnSetting;
    .end local v15           #types:[Ljava/lang/String;
    .end local v20           #apn:Lcom/android/internal/telephony/ApnSetting;
    .end local v23           #i$:Ljava/util/Iterator;
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    if-eqz v3, :cond_11

    const-string v3, "dun"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getDataEnabled()Z

    move-result v3

    if-nez v3, :cond_11

    .line 5034
    const-string v3, "clone a default with dun, add to apnList"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5035
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23       #i$:Ljava/util/Iterator;
    :cond_10
    :goto_5
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/telephony/ApnSetting;

    .line 5036
    .restart local v20       #apn:Lcom/android/internal/telephony/ApnSetting;
    const-string v3, "default"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 5037
    const/4 v3, 0x1

    new-array v15, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "dun"

    aput-object v4, v15, v3

    .line 5038
    .restart local v15       #types:[Ljava/lang/String;
    new-instance v2, Lcom/android/internal/telephony/ApnSetting;

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/internal/telephony/ApnSetting;->id:I

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/internal/telephony/ApnSetting;->numeric:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/internal/telephony/ApnSetting;->carrier:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/android/internal/telephony/ApnSetting;->proxy:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/android/internal/telephony/ApnSetting;->port:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/android/internal/telephony/ApnSetting;->mmsc:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v10, v0, Lcom/android/internal/telephony/ApnSetting;->mmsProxy:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v11, v0, Lcom/android/internal/telephony/ApnSetting;->mmsPort:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v12, v0, Lcom/android/internal/telephony/ApnSetting;->user:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v13, v0, Lcom/android/internal/telephony/ApnSetting;->password:Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/ApnSetting;->protocol:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/ApnSetting;->roamingProtocol:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/internal/telephony/ApnSetting;->carrierEnabled:Z

    move/from16 v18, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    move/from16 v19, v0

    invoke-direct/range {v2 .. v19}, Lcom/android/internal/telephony/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 5042
    .restart local v2       #tmpApn:Lcom/android/internal/telephony/ApnSetting;
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 5047
    .end local v2           #tmpApn:Lcom/android/internal/telephony/ApnSetting;
    .end local v15           #types:[Ljava/lang/String;
    .end local v20           #apn:Lcom/android/internal/telephony/ApnSetting;
    .end local v23           #i$:Ljava/util/Iterator;
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildWaitingApns: X apnList="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private cancelReconnectAlarm(Lcom/android/internal/telephony/DataConnectionAc;)V
    .locals 4
    .parameter "dcac"

    .prologue
    .line 5097
    if-nez p1, :cond_1

    .line 5107
    :cond_0
    :goto_0
    return-void

    .line 5099
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/DataConnectionAc;->getReconnectIntentSync()Landroid/app/PendingIntent;

    move-result-object v1

    .line 5101
    .local v1, intent:Landroid/app/PendingIntent;
    if-eqz v1, :cond_0

    .line 5102
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 5104
    .local v0, am:Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 5105
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/DataConnectionAc;->setReconnectIntentSync(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private checkForConnectionForApnContext(Lcom/android/internal/telephony/ApnContext;)Lcom/android/internal/telephony/DataConnection;
    .locals 7
    .parameter "apnContext"

    .prologue
    .line 5053
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    .line 5054
    .local v1, apnType:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/ApnContext;

    .line 5055
    .local v2, c:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v3

    .line 5056
    .local v3, conn:Lcom/android/internal/telephony/DataConnection;
    if-eqz v3, :cond_0

    .line 5057
    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getApnSetting()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v0

    .line 5058
    .local v0, apnSetting:Lcom/android/internal/telephony/ApnSetting;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5060
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkForConnectionForApnContext: apnContext="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " found conn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5064
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnFromOtherAC:Lcom/android/internal/telephony/ApnSetting;

    .line 5071
    .end local v0           #apnSetting:Lcom/android/internal/telephony/ApnSetting;
    .end local v2           #c:Lcom/android/internal/telephony/ApnContext;
    .end local v3           #conn:Lcom/android/internal/telephony/DataConnection;
    :goto_0
    return-object v3

    .line 5070
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkForConnectionForApnContext: apnContext="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " NO conn"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5071
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private cleanUpConnection(ZLjava/lang/String;Z)V
    .locals 11
    .parameter "tearDown"
    .parameter "reason"
    .parameter "doAll"

    .prologue
    .line 1385
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cleanUpConnection: reason: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1388
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    if-eqz v8, :cond_0

    .line 1389
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "alarm"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1391
    .local v0, am:Landroid/app/AlarmManager;
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1392
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    .line 1395
    .end local v0           #am:Landroid/app/AlarmManager;
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcNotifyAvailability(Ljava/lang/String;)V

    .line 1397
    const/4 v7, 0x0

    .line 1398
    .local v7, notificationDeferred:Z
    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v8, :cond_8

    .line 1399
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ApnContext;

    .line 1400
    .local v1, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    .line 1401
    if-nez v1, :cond_2

    .line 1402
    const-string v8, "cleanUpConnection: apn context is null"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1523
    .end local v1           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :goto_1
    return-void

    .line 1407
    .restart local v1       #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cleanUpConnection: tearDown="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " reason="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1410
    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v4

    .line 1411
    .local v4, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    if-eqz p1, :cond_6

    .line 1412
    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->isDisconnected()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1415
    sget-object v8, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1416
    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v8

    if-nez v8, :cond_3

    .line 1417
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 1418
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    .line 1440
    :cond_3
    :goto_2
    const/4 v7, 0x1

    .line 1450
    :goto_3
    if-eqz v4, :cond_1

    .line 1451
    invoke-virtual {v4}, Lcom/android/internal/telephony/DataConnectionAc;->getApnListSync()Ljava/util/Collection;

    move-result-object v2

    .line 1452
    .local v2, apnList:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/ApnContext;>;"
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1453
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cancelReconnectAlarm(Lcom/android/internal/telephony/DataConnectionAc;)V

    goto :goto_0

    .line 1422
    .end local v2           #apnList:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/ApnContext;>;"
    :cond_4
    if-eqz v4, :cond_5

    .line 1423
    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v8, v9, :cond_3

    .line 1424
    const-string v8, "cleanUpConnection: tearing down"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1425
    const v8, 0x4200f

    invoke-virtual {p0, v8, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 1426
    .local v6, msg:Landroid/os/Message;
    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v6}, Lcom/android/internal/telephony/DataConnection;->tearDown(Ljava/lang/String;Landroid/os/Message;)V

    .line 1428
    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v8, v9, :cond_3

    .line 1430
    sget-object v8, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    goto :goto_2

    .line 1435
    .end local v6           #msg:Landroid/os/Message;
    :cond_5
    sget-object v8, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1436
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1443
    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/android/internal/telephony/DataConnectionAc;->resetSync()V

    .line 1444
    :cond_7
    sget-object v8, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1445
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 1447
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    .line 1448
    const/4 v7, 0x0

    goto :goto_3

    .line 1458
    .end local v1           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v4           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_8
    sget-object v8, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1460
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_9
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/DataConnection;

    .line 1461
    .local v3, conn:Lcom/android/internal/telephony/DataConnection;
    if-eqz v3, :cond_9

    .line 1462
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnection;->getDataConnectionId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/DataConnectionAc;

    .line 1464
    .restart local v4       #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    if-eqz p1, :cond_c

    .line 1468
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    sget-object v9, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Disconnecting:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/cdma/HtcRadio;->updateDataState(Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;)V

    .line 1469
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->getCurrentProfile()I

    move-result v8

    const/16 v9, 0x3e8

    if-eq v8, v9, :cond_a

    .line 1471
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    sget-object v9, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->haveDataNetworkState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1473
    :cond_a
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    .line 1475
    if-eqz p3, :cond_b

    .line 1476
    const-string v8, "cleanUpConnection: teardown, conn.tearDownAll"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1477
    const v8, 0x4200f

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnection;->getDataConnectionId()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {p0, v8, v9, v10, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v3, p2, v8}, Lcom/android/internal/telephony/DataConnection;->tearDownAll(Ljava/lang/String;Landroid/os/Message;)V

    .line 1484
    :goto_5
    const/4 v7, 0x1

    goto :goto_4

    .line 1480
    :cond_b
    const-string v8, "cleanUpConnection: teardown, conn.tearDown"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1481
    const v8, 0x4200f

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnection;->getDataConnectionId()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {p0, v8, v9, v10, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v3, p2, v8}, Lcom/android/internal/telephony/DataConnection;->tearDown(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_5

    .line 1486
    :cond_c
    const-string v8, "cleanUpConnection: !tearDown, call conn.resetSynchronously"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1487
    if-eqz v4, :cond_d

    .line 1488
    invoke-virtual {v4}, Lcom/android/internal/telephony/DataConnectionAc;->resetSync()V

    .line 1490
    :cond_d
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 1498
    .end local v3           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v4           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :cond_e
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isCWDataConnectionSupported()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 1499
    const-string v8, "[HTCCW]reset sip invite retry timer"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1500
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSipInviteRetryTimes:I

    .line 1501
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getSipFlag()Z

    move-result v8

    if-eqz v8, :cond_f

    iget v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCwRegState:I

    const/16 v9, 0x65

    if-eq v8, v9, :cond_f

    .line 1502
    const-string v8, "[HTCCW]no need to send command to cw_ril anymore"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1503
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setSipFlag(Z)V

    .line 1509
    :cond_f
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->stopNetStatPoll()V

    .line 1511
    if-nez v7, :cond_10

    .line 1512
    const-string v8, "cleanupConnection: !notificationDeferred"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1513
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V

    .line 1514
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1518
    :cond_10
    monitor-enter p0

    .line 1519
    const/4 v8, 0x0

    :try_start_0
    iput-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaDataActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 1520
    monitor-exit p0

    goto/16 :goto_1

    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method private cleanUpConnectionByApnContext(ZLcom/android/internal/telephony/ApnContext;)V
    .locals 7
    .parameter "tearDown"
    .parameter "apnContext"

    .prologue
    const/4 v6, 0x0

    .line 3733
    if-nez p2, :cond_1

    .line 3734
    const-string v3, "cleanUpConnection: apn context is null"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3788
    :cond_0
    :goto_0
    return-void

    .line 3739
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cleanUpConnection: tearDown="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3741
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v1

    .line 3742
    .local v1, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    if-eqz p1, :cond_5

    .line 3743
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->isDisconnected()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3746
    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 3747
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3748
    invoke-virtual {p2, v6}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 3749
    invoke-virtual {p2, v6}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    .line 3777
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcUpdateConnectedProp()V

    .line 3782
    if-eqz v1, :cond_0

    .line 3783
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionAc;->getApnListSync()Ljava/util/Collection;

    move-result-object v0

    .line 3784
    .local v0, apnList:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/ApnContext;>;"
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3785
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cancelReconnectAlarm(Lcom/android/internal/telephony/DataConnectionAc;)V

    goto :goto_0

    .line 3753
    .end local v0           #apnList:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/ApnContext;>;"
    :cond_3
    if-eqz v1, :cond_4

    .line 3754
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v3, v4, :cond_2

    .line 3755
    const-string v3, "cleanUpConnection: tearing down"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3756
    const v3, 0x4200f

    invoke-virtual {p0, v3, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3757
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/internal/telephony/DataConnection;->tearDown(Ljava/lang/String;Landroid/os/Message;)V

    .line 3758
    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    goto :goto_1

    .line 3763
    .end local v2           #msg:Landroid/os/Message;
    :cond_4
    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 3764
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3770
    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionAc;->resetSync()V

    .line 3771
    :cond_6
    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 3772
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 3773
    invoke-virtual {p2, v6}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 3774
    invoke-virtual {p2, v6}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    goto :goto_1
.end method

.method private configureRetry(Lcom/android/internal/telephony/DataConnection;Z)V
    .locals 3
    .parameter "dc"
    .parameter "forDefault"

    .prologue
    .line 5075
    if-nez p1, :cond_1

    .line 5094
    :cond_0
    :goto_0
    return-void

    .line 5077
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getReryConfig(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/DataConnection;->configureRetry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5078
    if-eqz p2, :cond_2

    .line 5079
    const-string v0, "default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/DataConnection;->configureRetry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5081
    const-string v0, "configureRetry: Could not configure using DEFAULT_DATA_RETRY_CONFIG=default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->loge(Ljava/lang/String;)V

    .line 5083
    const/16 v0, 0x14

    const/16 v1, 0x7d0

    const/16 v2, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/telephony/DataConnection;->configureRetry(III)Z

    goto :goto_0

    .line 5086
    :cond_2
    const-string v0, "max_retries=3, 5000, 5000, 5000"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/DataConnection;->configureRetry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5088
    const-string v0, "configureRetry: Could note configure using SECONDARY_DATA_RETRY_CONFIG=max_retries=3, 5000, 5000, 5000"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->loge(Ljava/lang/String;)V

    .line 5090
    const-string v0, "max_retries=3, 333, 333, 333"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/DataConnection;->configureRetry(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private copyApnSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/ApnSetting;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/ApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5346
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    if-nez p1, :cond_1

    const/4 v1, 0x0

    .line 5351
    :cond_0
    return-object v1

    .line 5347
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5348
    .local v1, newList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 5349
    new-instance v3, Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/ApnSetting;

    invoke-direct {v3, v2}, Lcom/android/internal/telephony/ApnSetting;-><init>(Lcom/android/internal/telephony/ApnSetting;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5348
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private createAllApnList()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 5152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    .line 5168
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    check-cast v0, Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->getRUIMOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    .line 5170
    .local v7, operator:Ljava/lang/String;
    if-nez v7, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->IgnoreRUIMCardReadyInTestVersion:Z

    if-eqz v0, :cond_0

    .line 5172
    const-string v0, "persist.radio.hardcodemccmnc"

    const-string v1, "46605"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 5173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hardcode operator numeric to"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5176
    :cond_0
    if-eqz v7, :cond_4

    .line 5177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5180
    .local v3, selection:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and carrier_enabled = 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5190
    const/4 v4, 0x0

    .line 5192
    .local v4, selectionArgs:[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getMVNOOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND operator = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5195
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .end local v4           #selectionArgs:[Ljava/lang/String;
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getMVNOOperatorName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 5198
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createAllApnList: selection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5199
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5204
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 5205
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 5206
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->createApnList(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    .line 5208
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5214
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createAllApnList: No APN found for carrier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5216
    iput-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    .line 5240
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcApnHandling()V

    .line 5242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createAllApnList: X mAllApns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5243
    return-void

    .line 5211
    :cond_4
    const-string v0, "operator is null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5220
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getPreferredApn()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    .line 5222
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getPreferredDunApn()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPreferredDunApn:Lcom/android/internal/telephony/ApnSetting;

    .line 5224
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v0, v0, Lcom/android/internal/telephony/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 5225
    iput-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    .line 5226
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setPreferredApn(I)V

    .line 5237
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createAllApnList: mPreferredApn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private createAllDataConnectionList()V
    .locals 10

    .prologue
    .line 2922
    const-string v7, "ro.cdma.data_retry_config"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2923
    .local v4, retryConfig:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v7, 0x1

    if-ge v2, v7, :cond_2

    .line 2924
    new-instance v5, Lcom/android/internal/telephony/RetryManager;

    invoke-direct {v5}, Lcom/android/internal/telephony/RetryManager;-><init>()V

    .line 2925
    .local v5, rm:Lcom/android/internal/telephony/RetryManager;
    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2926
    const-string v7, "default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2928
    const-string v7, "Could not configure using DEFAULT_DATA_RETRY_CONFIG=default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2930
    const/16 v7, 0x14

    const/16 v8, 0x7d0

    const/16 v9, 0x3e8

    invoke-virtual {v5, v7, v8, v9}, Lcom/android/internal/telephony/RetryManager;->configure(III)Z

    .line 2934
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    .line 2935
    .local v3, id:I
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-static {v7, v3, v5, p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->makeDataConnection(Lcom/android/internal/telephony/cdma/CDMAPhone;ILcom/android/internal/telephony/RetryManager;Lcom/android/internal/telephony/DataConnectionTracker;)Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    move-result-object v0

    .line 2936
    .local v0, dataConn:Lcom/android/internal/telephony/cdma/CdmaDataConnection;
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2937
    new-instance v1, Lcom/android/internal/telephony/DataConnectionAc;

    const-string v7, "CDMA"

    invoke-direct {v1, v0, v7}, Lcom/android/internal/telephony/DataConnectionAc;-><init>(Lcom/android/internal/telephony/DataConnection;Ljava/lang/String;)V

    .line 2938
    .local v1, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v1, v7, p0, v8}, Lcom/android/internal/telephony/DataConnectionAc;->fullyConnectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)I

    move-result v6

    .line 2939
    .local v6, status:I
    if-nez v6, :cond_1

    .line 2940
    const-string v7, "Fully connected"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2941
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    iget-object v8, v1, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnection;->getDataConnectionId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2923
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2943
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not connect to dcac.dataConnection="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " status="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2948
    .end local v0           #dataConn:Lcom/android/internal/telephony/cdma/CdmaDataConnection;
    .end local v1           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    .end local v3           #id:I
    .end local v5           #rm:Lcom/android/internal/telephony/RetryManager;
    .end local v6           #status:I
    :cond_2
    return-void
.end method

.method private createApnList(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 21
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/ApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5119
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 5120
    .local v20, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5122
    :cond_0
    const-string v3, "type"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->parseTypes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 5124
    .local v15, types:[Ljava/lang/String;
    new-instance v2, Lcom/android/internal/telephony/ApnSetting;

    const-string v3, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "numeric"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "name"

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "apn"

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "proxy"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "port"

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "mmsc"

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "mmsproxy"

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "mmsport"

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "user"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "password"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "authtype"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const-string v16, "protocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, "roaming_protocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string v18, "carrier_enabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    const/16 v18, 0x1

    :goto_0
    const-string v19, "bearer"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-direct/range {v2 .. v19}, Lcom/android/internal/telephony/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 5144
    .local v2, apn:Lcom/android/internal/telephony/ApnSetting;
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5145
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5147
    .end local v2           #apn:Lcom/android/internal/telephony/ApnSetting;
    .end local v15           #types:[Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createApnList: X result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5148
    return-object v20

    .line 5124
    .restart local v15       #types:[Ljava/lang/String;
    :cond_2
    const/16 v18, 0x0

    goto :goto_0
.end method

.method private createDataConnection()Lcom/android/internal/telephony/cdma/CdmaDataConnection;
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 4435
    const-string v6, "createDataConnection E"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4437
    new-instance v4, Lcom/android/internal/telephony/RetryManager;

    invoke-direct {v4}, Lcom/android/internal/telephony/RetryManager;-><init>()V

    .line 4438
    .local v4, rm:Lcom/android/internal/telephony/RetryManager;
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    .line 4441
    .local v3, id:I
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->usedNumberOfDC()I

    move-result v6

    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->pdpLimitSize:I

    if-lt v6, v8, :cond_0

    .line 4442
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createDataConnection() X used="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->usedNumberOfDC()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " pdpLimitSize="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->pdpLimitSize:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " no free pdp"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    move-object v0, v7

    .line 4470
    :goto_0
    return-object v0

    .line 4447
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/DataConnection;->get_mCount_cdma()I

    move-result v6

    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->pdpLimitSize:I

    if-lt v6, v8, :cond_1

    .line 4448
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createDataConnection() X over limit return, used="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->usedNumberOfDC()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " pdpLimitSize="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->pdpLimitSize:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " mCnt="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/internal/telephony/DataConnection;->get_mCount_cdma()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    move-object v0, v7

    .line 4450
    goto :goto_0

    .line 4453
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v6, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-static {v6, v3, v4, p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->makeDataConnection(Lcom/android/internal/telephony/cdma/CDMAPhone;ILcom/android/internal/telephony/RetryManager;Lcom/android/internal/telephony/DataConnectionTracker;)Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    move-result-object v0

    .line 4454
    .local v0, conn:Lcom/android/internal/telephony/cdma/CdmaDataConnection;
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4455
    new-instance v1, Lcom/android/internal/telephony/DataConnectionAc;

    const-string v6, "CDMA"

    invoke-direct {v1, v0, v6}, Lcom/android/internal/telephony/DataConnectionAc;-><init>(Lcom/android/internal/telephony/DataConnection;Ljava/lang/String;)V

    .line 4456
    .local v1, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v1, v6, p0, v8}, Lcom/android/internal/telephony/DataConnectionAc;->fullyConnectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)I

    move-result v5

    .line 4457
    .local v5, status:I
    if-nez v5, :cond_2

    .line 4458
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    iget-object v8, v1, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnection;->getDataConnectionId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4465
    :goto_1
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 4466
    .local v2, filter:Landroid/content/IntentFilter;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "com.android.internal.telephony.cdma-reconnect."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4467
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6, v8, v2, v7, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 4469
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createDataConnection() X id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4460
    .end local v2           #filter:Landroid/content/IntentFilter;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createDataConnection: Could not connect to dcac.mDc="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v1, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " status="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private dataConnectionNotInUse(Lcom/android/internal/telephony/DataConnectionAc;)Z
    .locals 4
    .parameter "dcac"

    .prologue
    const/4 v2, 0x1

    .line 4350
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-nez v3, :cond_1

    .line 4364
    :cond_0
    :goto_0
    return v2

    .line 4353
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 4358
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v3

    if-ne v3, p1, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnChangeFlag()Z

    move-result v3

    if-nez v3, :cond_2

    .line 4361
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private destroyAllDataConnectionList()V
    .locals 3

    .prologue
    .line 2951
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    .line 2953
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnection;

    .line 2954
    .local v0, dc:Lcom/android/internal/telephony/DataConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->quit()V

    goto :goto_0

    .line 2956
    .end local v0           #dc:Lcom/android/internal/telephony/DataConnection;
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->ReInitialDataConnectionCounter()V

    .line 2958
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 2960
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private doRecovery()V
    .locals 6

    .prologue
    const v5, 0xc3b6

    .line 5636
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getOverallState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v2, v3, :cond_3

    .line 5637
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "pdp_watchdog_max_pdp_reset_fail_count"

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 5640
    .local v0, maxPdpReset:I
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPdpResetCount:I

    if-ge v2, v0, :cond_1

    .line 5641
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPdpResetCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPdpResetCount:I

    .line 5642
    iget-wide v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    invoke-static {v5, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 5643
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doRecovery() cleanup all connections mPdpResetCount= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPdpResetCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", maxPdpReset= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5646
    const-string v2, "persist.radio.ramdumpmode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5647
    .local v1, mode:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ramdumpmode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5648
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5650
    const-string v2, "persist.radio.ramdump"

    const-string v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5651
    const-string v2, "property set!"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5654
    :cond_0
    const/4 v2, 0x1

    const-string v3, "pdpReset"

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpAllConnections(ZLjava/lang/String;)V

    .line 5700
    .end local v0           #maxPdpReset:I
    .end local v1           #mode:Ljava/lang/String;
    :goto_0
    return-void

    .line 5656
    .restart local v0       #maxPdpReset:I
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPdpResetCount:I

    .line 5657
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->$SwitchMap$com$android$internal$telephony$cdma$CdmaDataConnectionTracker$RecoveryAction:[I

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRecoveryAction:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$RecoveryAction;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$RecoveryAction;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 5693
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doRecovery: Invalid mRecoveryAction "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRecoveryAction:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$RecoveryAction;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5659
    :pswitch_0
    const v2, 0xc3b8

    iget-wide v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    invoke-static {v2, v3, v4}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 5660
    const-string v2, "doRecovery() re-register getting preferred network type"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5661
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->reRegisterNetwork(Landroid/os/Message;)V

    .line 5663
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v2, :cond_2

    .line 5664
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$RecoveryAction;->REREGISTER:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$RecoveryAction;

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRecoveryAction:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$RecoveryAction;

    goto :goto_0

    .line 5666
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$RecoveryAction;->RADIO_RESTART:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$RecoveryAction;

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRecoveryAction:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$RecoveryAction;

    goto :goto_0

    .line 5671
    :pswitch_1
    iget-wide v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    invoke-static {v5, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 5672
    const-string v2, "restarting radio"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5673
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$RecoveryAction;->RADIO_RESET:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$RecoveryAction;

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRecoveryAction:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$RecoveryAction;

    .line 5674
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->restartRadio()V

    goto :goto_0

    .line 5683
    :pswitch_2
    const/4 v2, -0x1

    invoke-static {v5, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 5684
    const-string v2, "restarting radio with reset indication"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5685
    const-string v2, "gsm.radioreset"

    const-string v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5688
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5690
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->restartRadio()V

    goto :goto_0

    .line 5698
    .end local v0           #maxPdpReset:I
    :cond_3
    const-string v2, "doRecovery(): ignore, we\'re not connected"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5689
    .restart local v0       #maxPdpReset:I
    :catch_0
    move-exception v2

    goto :goto_1

    .line 5657
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private dumpDCApn()V
    .locals 4

    .prologue
    .line 262
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnectionAc;

    .line 263
    .local v0, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpDCApn dc.mId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnection;->getDataConnectionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dc.cid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionAc;->getCidSync()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dc=<<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 266
    .end local v0           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :cond_0
    return-void
.end method

.method private dumpSwitchRecord()V
    .locals 5

    .prologue
    .line 289
    const-string v1, ""

    .line 291
    .local v1, dump:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->switchOffACs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 292
    .local v0, ac:Lcom/android/internal/telephony/ApnContext;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 294
    .end local v0           #ac:Lcom/android/internal/telephony/ApnContext;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dumpSwitchRecord: pending=<<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->pendingAC:Lcom/android/internal/telephony/ApnContext;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">> switchoff=<<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method private eriUpdate(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "ar"

    .prologue
    .line 2237
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 2238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERI exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2266
    :cond_0
    :goto_0
    return-void

    .line 2242
    :cond_1
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaERIInfo;

    .line 2244
    .local v0, htcEriUpdate:Lcom/android/internal/telephony/cdma/CdmaERIInfo;
    if-eqz v0, :cond_2

    .line 2245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EriUpdate.eri_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->eri_id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mEriIndicator="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mEriIndicator:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",icon_img_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->icon_img_id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2248
    iget v1, v0, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->icon_img_id:I

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->IsIconImageRoaming(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIconImageRoaming:Z

    .line 2252
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mEriIndicator:I

    iget v2, v0, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->eri_id:I

    if-eq v1, v2, :cond_0

    .line 2253
    iget v1, v0, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->eri_id:I

    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mEriIndicator:I

    .line 2257
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VZW_GLOBAL_ROAMING_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataRoaming:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mEriIndicator:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isHomeNetwork(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2258
    const-string v1, "Eri Indicator change. Check the Global Roaming Option"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2259
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onRoamingOn()V

    goto :goto_0

    .line 2264
    :cond_2
    const-string v1, "CdmaERIInfo result is null"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private findApnContextToClean(Ljava/util/Collection;)Ljava/util/List;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/telephony/DataConnectionAc;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/ApnContext;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3285
    .local p1, dcacs:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/DataConnectionAc;>;"
    if-nez p1, :cond_1

    const/4 v5, 0x0

    .line 3312
    :cond_0
    return-object v5

    .line 3287
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3288
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnContext;>;"
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 3289
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v6, v7, :cond_2

    .line 3290
    const/4 v2, 0x0

    .line 3291
    .local v2, found:Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnectionAc;

    .line 3292
    .local v1, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v6

    if-ne v1, v6, :cond_3

    .line 3294
    const/4 v2, 0x1

    .line 3298
    .end local v1           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :cond_4
    if-nez v2, :cond_2

    .line 3302
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onDataStateChanged(ar): Connected apn not found in the list ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3304
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 3305
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/DataConnectionAc;->getApnListSync()Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 3307
    :cond_5
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private findDCFromDupApn(Lcom/android/internal/telephony/ApnSetting;)Lcom/android/internal/telephony/cdma/CdmaDataConnection;
    .locals 6
    .parameter "reqApn"

    .prologue
    .line 4418
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ApnContext;

    .line 4419
    .local v1, c:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v2

    .line 4420
    .local v2, conn:Lcom/android/internal/telephony/DataConnection;
    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->getApnChangeFlag()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4421
    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->getApnSetting()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v0

    .line 4422
    .local v0, apnSetting:Lcom/android/internal/telephony/ApnSetting;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4424
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findDCFromDupApn: from apnContext="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ; found dupApn conn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4426
    check-cast v2, Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    .line 4431
    .end local v0           #apnSetting:Lcom/android/internal/telephony/ApnSetting;
    .end local v1           #c:Lcom/android/internal/telephony/ApnContext;
    .end local v2           #conn:Lcom/android/internal/telephony/DataConnection;
    :goto_0
    return-object v2

    .line 4430
    :cond_1
    const-string v4, "findDCFromDupApn: No conn"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4431
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private findDataConnectionAcByCid(I)Lcom/android/internal/telephony/DataConnectionAc;
    .locals 4
    .parameter "cid"

    .prologue
    const/4 v2, 0x0

    .line 3248
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    move-object v0, v2

    .line 3256
    :goto_0
    return-object v0

    .line 3251
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnectionAc;

    .line 3252
    .local v0, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionAc;->getCidSync()I

    move-result v3

    if-ne v3, p1, :cond_1

    goto :goto_0

    .end local v0           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :cond_2
    move-object v0, v2

    .line 3256
    goto :goto_0
.end method

.method private findFreeDataConnection()Lcom/android/internal/telephony/cdma/CdmaDataConnection;
    .locals 3

    .prologue
    .line 1526
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnectionAc;

    .line 1527
    .local v0, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionAc;->isInactiveSync()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->dataConnectionNotInUse(Lcom/android/internal/telephony/DataConnectionAc;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1528
    const-string v2, "found free CdmaDataConnection"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1529
    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    check-cast v2, Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    .line 1533
    .end local v0           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :goto_0
    return-object v2

    .line 1532
    :cond_1
    const-string v2, "NO free CdmaDataConnection"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1533
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private forceAlwaysRetryDelay()I
    .locals 1

    .prologue
    .line 3592
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isSprintRelease()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3596
    const/4 v0, 0x0

    .line 3598
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getByReferredAC(Lcom/android/internal/telephony/DataConnectionAc;)Lcom/android/internal/telephony/ApnSetting;
    .locals 3
    .parameter "dcac"

    .prologue
    .line 298
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 299
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 300
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnSetting()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v2

    .line 303
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getMVNOOperatorName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5111
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mvno_operator"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 5114
    :goto_0
    return-object v1

    .line 5113
    :catch_0
    move-exception v0

    .line 5114
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPreferredApn()Lcom/android/internal/telephony/ApnSetting;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 5247
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5283
    :cond_0
    :goto_0
    return-object v3

    .line 5251
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v10

    const-string v4, "name"

    aput-object v4, v2, v11

    const/4 v4, 0x2

    const-string v5, "apn"

    aput-object v5, v2, v4

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5255
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 5256
    iput-boolean v11, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->canSetPreferApn:Z

    .line 5258
    const-string v0, "cansetPreferApn = true, cursor is not null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5267
    :goto_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->canSetPreferApn:Z

    if-eqz v0, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 5269
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5270
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 5271
    .local v9, pos:I
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/ApnSetting;

    .line 5272
    .local v8, p:Lcom/android/internal/telephony/ApnSetting;
    iget v0, v8, Lcom/android/internal/telephony/ApnSetting;->id:I

    if-ne v0, v9, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5273
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v3, v8

    .line 5274
    goto :goto_0

    .line 5261
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #p:Lcom/android/internal/telephony/ApnSetting;
    .end local v9           #pos:I
    :cond_3
    iput-boolean v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->canSetPreferApn:Z

    .line 5263
    const-string v0, "cansetPreferApn = false, cursor is  null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 5279
    :cond_4
    if-eqz v6, :cond_0

    .line 5280
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private getPreferredDunApn()Lcom/android/internal/telephony/ApnSetting;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 5287
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5318
    :cond_0
    :goto_0
    return-object v3

    .line 5291
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->PREFERRED_DUN_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v10

    const-string v4, "name"

    aput-object v4, v2, v11

    const/4 v4, 0x2

    const-string v5, "apn"

    aput-object v5, v2, v4

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5295
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 5296
    iput-boolean v11, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->canSetPreferDunApn:Z

    .line 5301
    :goto_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->canSetPreferDunApn:Z

    if-eqz v0, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 5303
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5304
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 5305
    .local v9, pos:I
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/ApnSetting;

    .line 5307
    .local v8, p:Lcom/android/internal/telephony/ApnSetting;
    iget v0, v8, Lcom/android/internal/telephony/ApnSetting;->id:I

    if-ne v0, v9, :cond_2

    const-string v0, "dun"

    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5308
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v3, v8

    .line 5309
    goto :goto_0

    .line 5298
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #p:Lcom/android/internal/telephony/ApnSetting;
    .end local v9           #pos:I
    :cond_3
    iput-boolean v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->canSetPreferDunApn:Z

    goto :goto_1

    .line 5314
    :cond_4
    if-eqz v6, :cond_0

    .line 5315
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private getSipFlag()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 5482
    const-string v1, "cdma.wifi.on"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5484
    .local v0, enable:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCCW]sip flag=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_1

    const-string v1, "null"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5486
    if-eqz v0, :cond_0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move v1, v2

    .line 5492
    :goto_1
    return v1

    :cond_1
    move-object v1, v0

    .line 5484
    goto :goto_0

    .line 5488
    :cond_2
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5489
    const/4 v1, 0x1

    goto :goto_1

    .line 5491
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCCW]cdma.wifi.on has unexpected value:\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    move v1, v2

    .line 5492
    goto :goto_1
.end method

.method private htcDBG_OnDCS(Ljava/util/HashMap;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/DataCallState;",
            "Lcom/android/internal/telephony/DataConnectionAc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3261
    .local p1, dcacHM:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/internal/telephony/DataCallState;Lcom/android/internal/telephony/DataConnectionAc;>;"
    const-string v6, "DCT\'s dcac list"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3262
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnectionAc;

    .line 3263
    .local v2, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionAc;->getCidSync()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " lp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionAc;->getLinkPropertiesSync()Landroid/net/LinkProperties;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3264
    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionAc;->getApnListSync()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 3265
    .local v0, ac:Lcom/android/internal/telephony/ApnContext;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    AC="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3269
    .end local v0           #ac:Lcom/android/internal/telephony/ApnContext;
    .end local v2           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_1
    const-string v6, "DCS\'s dcac list"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3270
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/DataConnectionAc;

    .line 3271
    .local v3, dcac2:Lcom/android/internal/telephony/DataConnectionAc;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnectionAc;->getCidSync()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnectionAc;->getLinkPropertiesSync()Landroid/net/LinkProperties;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3272
    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnectionAc;->getApnListSync()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ApnContext;

    .line 3273
    .local v1, ac2:Lcom/android/internal/telephony/ApnContext;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    AC="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 3276
    .end local v1           #ac2:Lcom/android/internal/telephony/ApnContext;
    .end local v3           #dcac2:Lcom/android/internal/telephony/DataConnectionAc;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method private htcExtendStringArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "originalArray"
    .parameter "appendString"

    .prologue
    .line 3541
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 3542
    .local v1, arrIdx:I
    :goto_0
    add-int/lit8 v2, v1, 0x1

    new-array v0, v2, [Ljava/lang/String;

    .line 3543
    .local v0, appendResult:[Ljava/lang/String;
    aput-object p2, v0, v1

    .line 3544
    :goto_1
    if-lez v1, :cond_1

    .line 3545
    add-int/lit8 v1, v1, -0x1

    .line 3546
    aget-object v2, p1, v1

    aput-object v2, v0, v1

    goto :goto_1

    .line 3541
    .end local v0           #appendResult:[Ljava/lang/String;
    .end local v1           #arrIdx:I
    :cond_0
    array-length v1, p1

    goto :goto_0

    .line 3548
    .restart local v0       #appendResult:[Ljava/lang/String;
    .restart local v1       #arrIdx:I
    :cond_1
    return-object v0
.end method

.method private htcGetCDMADataConnectionState()I
    .locals 2

    .prologue
    .line 884
    sget v0, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RIL_CAPABILITIES:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 886
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataServiceStateTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 890
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v0

    goto :goto_0
.end method

.method private htcGetCDMADataRoamingState()Z
    .locals 2

    .prologue
    .line 896
    sget v0, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RIL_CAPABILITIES:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 898
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataServiceStateTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    .line 902
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    goto :goto_0
.end method

.method private htcReconnectAfterFail(Lcom/android/internal/telephony/DataConnection$FailCause;Ljava/lang/String;)Z
    .locals 6
    .parameter "lastFailCauseCode"
    .parameter "reason"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1901
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/HtcRadio;->hasFlightModeRequested()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRadioAvaliable:Z

    if-nez v2, :cond_2

    .line 1902
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data Connection activate failed. "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRadioAvaliable:Z

    if-eqz v2, :cond_1

    const-string v2, "Airplane mode requesting."

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1904
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    .line 1905
    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1906
    const-string v2, "apnFailed"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    move v2, v3

    .line 1968
    :goto_1
    return v2

    .line 1902
    :cond_1
    const-string v2, "Airplane mode."

    goto :goto_0

    .line 1920
    :cond_2
    invoke-direct {p0, v3, v4, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcisDataAllowed(ZZZZ)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1922
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data Connection activate failed. Disabled by user:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getMobileDataSettingEnabled()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserDataEnabled:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", by conns:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->logEnabledApnStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", allow="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->profileAllowDataConnection()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1926
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    .line 1927
    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1928
    const-string v2, "apnFailed"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    move v2, v3

    .line 1929
    goto :goto_1

    .line 1940
    :cond_3
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mReasonInPendingIntent:Ljava/lang/String;

    .line 1950
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnection;->getRetryTimer()I

    move-result v1

    .line 1952
    .local v1, nextReconnectDelay:I
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->forceAlwaysRetryDelay()I

    move-result v0

    .line 1953
    .local v0, alwaysRetryDelay:I
    if-ltz v0, :cond_4

    .line 1954
    move v1, v0

    .line 1957
    :cond_4
    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startAlarmForReconnect(ILjava/lang/String;)V

    .line 1958
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnection;->increaseRetryCount()V

    .line 1960
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->shouldPostNotification(Lcom/android/internal/telephony/DataConnection$FailCause;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1961
    const-string v2, "NOT Posting Data Connection Unavailable notification -- likely transient error"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    :goto_2
    move v2, v4

    .line 1968
    goto/16 :goto_1

    .line 1964
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;)V

    goto :goto_2
.end method

.method private ifApnDupWithExisted(Lcom/android/internal/telephony/ApnContext;)Z
    .locals 14
    .parameter "ac"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 209
    iget-object v12, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v8

    .line 210
    .local v8, radioTech:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v1, apnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    iget-object v12, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    if-eqz v12, :cond_2

    .line 214
    iget-object v12, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnSetting;

    .line 215
    .local v0, apn:Lcom/android/internal/telephony/ApnSetting;
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 216
    iget v12, v0, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    if-eqz v12, :cond_1

    iget v12, v0, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    if-ne v12, v8, :cond_0

    .line 217
    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "dumpReqApn "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 223
    .end local v0           #apn:Lcom/android/internal/telephony/ApnSetting;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_2
    const-string v10, "ifApnDupWithExisted: mAllApns is empty!"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->loge(Ljava/lang/String;)V

    move v10, v11

    .line 258
    :goto_1
    return v10

    .line 229
    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_3
    const/4 v7, 0x0

    .line 231
    .local v7, isDupApn:Z
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v5           #i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/ApnSetting;

    .line 232
    .local v9, reqApn:Lcom/android/internal/telephony/ApnSetting;
    if-eqz v9, :cond_6

    iget-object v12, v9, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    if-eqz v12, :cond_6

    .line 233
    iget-object v12, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v12}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/ApnContext;

    .line 234
    .local v2, c:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v3

    .line 235
    .local v3, conn:Lcom/android/internal/telephony/DataConnection;
    if-eqz v3, :cond_5

    .line 236
    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getApnSetting()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v4

    .line 237
    .local v4, existedApn:Lcom/android/internal/telephony/ApnSetting;
    if-eqz v4, :cond_5

    iget-object v12, v4, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    if-eqz v12, :cond_5

    .line 240
    iget-object v12, v9, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    iget-object v13, v4, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 241
    const/4 v7, 0x1

    .line 242
    const-string v11, "ifApnDupWithExisted: apn is duplicate"

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 248
    .end local v2           #c:Lcom/android/internal/telephony/ApnContext;
    .end local v3           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v4           #existedApn:Lcom/android/internal/telephony/ApnSetting;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "found abnormal apn in ReqApn="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 252
    .end local v9           #reqApn:Lcom/android/internal/telephony/ApnSetting;
    :cond_7
    if-nez v7, :cond_8

    .line 253
    const-string v10, "ifApnDupWithExisted: none is duplicate"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    move v10, v11

    .line 254
    goto :goto_1

    .line 257
    :cond_8
    const-string v11, "ifApnDupWithExisted: all is duplicate"

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private ifDCCanHandle(Lcom/android/internal/telephony/ApnContext;)Z
    .locals 4
    .parameter "ac"

    .prologue
    .line 199
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnectionAc;

    .line 200
    .local v1, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionAc;->getApnSettingSync()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v0

    .line 201
    .local v0, apnSetting:Lcom/android/internal/telephony/ApnSetting;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 202
    const/4 v3, 0x1

    .line 204
    .end local v0           #apnSetting:Lcom/android/internal/telephony/ApnSetting;
    .end local v1           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isDataAllowed(Lcom/android/internal/telephony/ApnContext;)Z
    .locals 1
    .parameter "apnContext"

    .prologue
    .line 4296
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isDataAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isExtendedNetwork(I)Z
    .locals 1
    .parameter "eri_id"

    .prologue
    .line 2271
    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    const/16 v0, 0x43

    if-eq p1, v0, :cond_0

    const/16 v0, 0x45

    if-eq p1, v0, :cond_0

    const/16 v0, 0x47

    if-eq p1, v0, :cond_0

    const/16 v0, 0x48

    if-eq p1, v0, :cond_0

    const/16 v0, 0x4a

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHomeNetwork(I)Z
    .locals 2
    .parameter "eri_id"

    .prologue
    const/4 v0, 0x1

    .line 2277
    if-eq p1, v0, :cond_0

    const/16 v1, 0x40

    if-eq p1, v1, :cond_0

    const/16 v1, 0x41

    if-eq p1, v1, :cond_0

    const/16 v1, 0x4c

    if-lt p1, v1, :cond_1

    const/16 v1, 0x53

    if-gt p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRuimCardSupported()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 152
    const-string v1, "persist.radio.enableruim"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isCWDataConnectionSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isSprintRelease()Z
    .locals 1

    .prologue
    .line 533
    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_CONFIG:Z

    if-eqz v0, :cond_0

    .line 534
    const/4 v0, 0x1

    .line 536
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSwitchOff(Lcom/android/internal/telephony/ApnContext;)Z
    .locals 3
    .parameter "ac"

    .prologue
    .line 177
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->switchOffACs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ApnContext;

    .line 178
    .local v1, switched:Lcom/android/internal/telephony/ApnContext;
    if-ne v1, p1, :cond_0

    .line 179
    const/4 v2, 0x1

    .line 182
    .end local v1           #switched:Lcom/android/internal/telephony/ApnContext;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private logReportedApnStatus()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x11

    .line 3678
    new-array v1, v3, [B

    .line 3679
    .local v1, status:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 3680
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcReportedActiveApns:[Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcReportedActiveApns:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    const/16 v2, 0x31

    :goto_1
    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 3679
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3680
    :cond_0
    const/16 v2, 0x30

    goto :goto_1

    .line 3683
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method private notifyDefaultData(Lcom/android/internal/telephony/ApnContext;)V
    .locals 3
    .parameter "apnContext"

    .prologue
    .line 4674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDefaultData: type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4678
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    const-string v1, "admin"

    if-eq v0, v1, :cond_0

    .line 4679
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->haveDataNetworkState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 4682
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 4685
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcUpdateConnectedProp()V

    .line 4687
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 4688
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startNetStatPoll()V

    .line 4690
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    .line 4691
    return-void
.end method

.method private notifyDefaultData(Ljava/lang/String;)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 1626
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Connected:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cdma/HtcRadio;->updateDataState(Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;)V

    .line 1627
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->getCurrentProfile()I

    move-result v0

    .line 1628
    .local v0, profileType:I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 1629
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->haveDataNetworkState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1660
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1661
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 1662
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startNetStatPoll()V

    .line 1663
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    .line 1664
    return-void
.end method

.method private notifyFirewallDataSetupComplete()V
    .locals 8
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .local v1, current:Lcom/android/internal/telephony/DataConnectionAc;
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    .local v0, apn:Lcom/android/internal/telephony/ApnSetting;
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnectionAc;

    .local v2, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionAc;->getApnSettingSync()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/ApnSetting;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v2

    .end local v2           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-static {}, Lmiui/net/FirewallManager;->getInstance()Lmiui/net/FirewallManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v0}, Lmiui/net/FirewallManager;->encodeApnSetting(Lcom/android/internal/telephony/ApnSetting;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionAc;->getLinkPropertiesSync()Landroid/net/LinkProperties;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lmiui/net/FirewallManager;->onDataConnected(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;)V
    .locals 1
    .parameter "lastFailCauseCode"

    .prologue
    .line 1991
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1994
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcNotifyAvailability(Ljava/lang/String;)V

    .line 1996
    return-void
.end method

.method private notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/ApnContext;)V
    .locals 3
    .parameter "lastFailCauseCode"
    .parameter "apnContext"

    .prologue
    .line 4259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyNoData: type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4260
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 4262
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcUpdateConnectedProp()V

    .line 4264
    invoke-virtual {p1}, Lcom/android/internal/telephony/DataConnection$FailCause;->isPermanentFail()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4266
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 4268
    :cond_0
    return-void
.end method

.method private onApnChanged()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 4300
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getOverallState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    .line 4301
    .local v3, overallState:Lcom/android/internal/telephony/DataConnectionTracker$State;
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v3, v5, :cond_0

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v3, v5, :cond_4

    :cond_0
    move v2, v7

    .line 4303
    .local v2, isDisconnected:Z
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v5, v5, Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v5, :cond_1

    .line 4305
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v5, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateCurrentCarrierInProvider()Z

    .line 4309
    :cond_1
    const/4 v4, -0x1

    .line 4310
    .local v4, previousPreferredApnId:I
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v5, :cond_2

    .line 4311
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget v4, v5, Lcom/android/internal/telephony/ApnSetting;->id:I

    .line 4317
    :cond_2
    const-string v5, "onApnChanged: createAllApnList and cleanUpAllConnections"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4318
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->createAllApnList()V

    .line 4321
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mOldAllApns:Ljava/util/ArrayList;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mOldAllApns:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget v5, v5, Lcom/android/internal/telephony/ApnSetting;->id:I

    if-ne v5, v4, :cond_5

    .line 4324
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onApnChanged: ApnSetting not changed, return ,  mPreferredApn.id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget v6, v6, Lcom/android/internal/telephony/ApnSetting;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4348
    :cond_3
    :goto_1
    return-void

    .end local v2           #isDisconnected:Z
    .end local v4           #previousPreferredApnId:I
    :cond_4
    move v2, v6

    .line 4301
    goto :goto_0

    .line 4329
    .restart local v2       #isDisconnected:Z
    .restart local v4       #previousPreferredApnId:I
    :cond_5
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->copyApnSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mOldAllApns:Ljava/util/ArrayList;

    .line 4331
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mOldAllApns:Ljava/util/ArrayList;

    if-eqz v5, :cond_6

    .line 4332
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "after copy, mOldAllApns:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mOldAllApns:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4339
    :goto_2
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 4340
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ApnContext;->setApnChangeFlag(Z)V

    goto :goto_3

    .line 4334
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_6
    const-string v5, "after copy,mOldAllApns is null"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 4344
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_7
    if-nez v2, :cond_8

    :goto_4
    const-string v5, "apnChanged"

    invoke-virtual {p0, v7, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpAllConnections(ZLjava/lang/String;)V

    .line 4345
    if-eqz v2, :cond_3

    .line 4346
    const-string v5, "apnChanged"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setupDataOnReadyApns(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    move v7, v6

    .line 4344
    goto :goto_4
.end method

.method private onCdmaDataDetached()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2963
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2964
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startNetStatPoll()V

    .line 2965
    const-string v1, "cdmaDataDetached"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 2978
    :goto_0
    return-void

    .line 2967
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v1, v2, :cond_1

    .line 2968
    const-string v1, "cdmaDataDetached"

    invoke-direct {p0, v4, v1, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;Z)V

    .line 2969
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    .line 2971
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    move-object v0, v1

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 2972
    .local v0, loc:Landroid/telephony/cdma/CdmaCellLocation;
    const v2, 0xc3be

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v1

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2976
    .end local v0           #loc:Landroid/telephony/cdma/CdmaCellLocation;
    :cond_1
    const-string v1, "cdmaDataDetached"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    goto :goto_0

    .line 2972
    .restart local v0       #loc:Landroid/telephony/cdma/CdmaCellLocation;
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private onCdmaOtaProvision(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    const/4 v3, 0x0

    .line 2981
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 2982
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 2983
    .local v0, otaPrivision:[I
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 2984
    aget v1, v0, v3

    packed-switch v1, :pswitch_data_0

    .line 2994
    .end local v0           #otaPrivision:[I
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2987
    .restart local v0       #otaPrivision:[I
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    goto :goto_0

    .line 2984
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onDataStateChangedForRuimCard(Landroid/os/AsyncResult;)V
    .locals 14
    .parameter "ar"

    .prologue
    .line 3167
    const-string v11, "onDataStateChangedForRuimCard(ar): E"

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3168
    iget-object v11, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, Ljava/util/ArrayList;

    move-object v6, v11

    check-cast v6, Ljava/util/ArrayList;

    .line 3170
    .local v6, dataCallStates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataCallState;>;"
    iget-object v11, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v11, :cond_0

    .line 3174
    const-string v11, "onDataStateChangedForRuimCard(ar): exception; likely radio not available, ignore"

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3240
    :goto_0
    return-void

    .line 3177
    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onDataStateChangedForRuimCard(ar): DataCallState size="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3181
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 3182
    .local v5, dataCallStateToDcac:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/internal/telephony/DataCallState;Lcom/android/internal/telephony/DataConnectionAc;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/DataCallState;

    .line 3183
    .local v4, dataCallState:Lcom/android/internal/telephony/DataCallState;
    iget v11, v4, Lcom/android/internal/telephony/DataCallState;->cid:I

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->findDataConnectionAcByCid(I)Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v7

    .line 3185
    .local v7, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    if-eqz v7, :cond_1

    invoke-virtual {v5, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3189
    .end local v4           #dataCallState:Lcom/android/internal/telephony/DataCallState;
    .end local v7           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :cond_2
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcDBG_OnDCS(Ljava/util/HashMap;)V

    .line 3193
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->findApnContextToClean(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    .line 3196
    .local v2, apnsToCleanup:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/ApnContext;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v8           #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/DataCallState;

    .line 3197
    .local v10, newState:Lcom/android/internal/telephony/DataCallState;
    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/DataConnectionAc;

    .line 3199
    .restart local v7       #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    if-nez v7, :cond_3

    .line 3200
    const-string v11, "onDataStateChangedForRuimCard(ar): No associated DataConnection ignore"

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 3205
    :cond_3
    invoke-virtual {v7}, Lcom/android/internal/telephony/DataConnectionAc;->getApnListSync()Ljava/util/Collection;

    move-result-object v1

    .line 3208
    .local v1, apns:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/ApnContext;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3209
    .local v3, connectedApns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnContext;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 3210
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v11, v12, :cond_5

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v11, v12, :cond_5

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/DataConnectionTracker$State;->INITING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v11, v12, :cond_4

    .line 3213
    :cond_5
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 3216
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_7

    .line 3217
    const-string v11, "onDataStateChangedForRuimCard(ar): no connected apns"

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 3221
    :cond_7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onDataStateChangedForRuimCard(ar): Found ConnId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v10, Lcom/android/internal/telephony/DataCallState;->cid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " newState="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v10}, Lcom/android/internal/telephony/DataCallState;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3223
    iget v11, v10, Lcom/android/internal/telephony/DataCallState;->active:I

    if-nez v11, :cond_8

    .line 3225
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onDataStateChangedForRuimCard(ar): inactive, cleanup apns="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3227
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 3229
    :cond_8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onDataStateChangedForRuimCard(ar): active, newState="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3235
    .end local v1           #apns:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/ApnContext;>;"
    .end local v3           #connectedApns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnContext;>;"
    .end local v7           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #newState:Lcom/android/internal/telephony/DataCallState;
    :cond_9
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 3236
    .restart local v0       #apnContext:Lcom/android/internal/telephony/ApnContext;
    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {p0, v11, v12, v13}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;Z)V

    goto :goto_4

    .line 3239
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_a
    const-string v11, "onDataStateChangedForRuimCard(ar): X"

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private onRestartRadio()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2997
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingRestartRadio:Z

    if-eqz v0, :cond_0

    .line 2998
    const-string v0, "************TURN OFF RADIO**************"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2999
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 3007
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingRestartRadio:Z

    .line 3009
    :cond_0
    return-void
.end method

.method private parseTypes(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "types"

    .prologue
    .line 4867
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4868
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 4869
    .local v0, result:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "*"

    aput-object v2, v0, v1

    .line 4873
    :goto_0
    return-object v0

    .line 4871
    .end local v0           #result:[Ljava/lang/String;
    :cond_1
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0       #result:[Ljava/lang/String;
    goto :goto_0
.end method

.method private profileDecisionByEnabledPriority(Ljava/lang/String;)I
    .locals 4
    .parameter "requestApnType"

    .prologue
    .line 1173
    const/4 v2, 0x4

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 1176
    .local v1, proirityList:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1178
    aget v2, v1, v0

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    aget v2, v1, v0

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcGetAnyDataEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "profileDecisionByEnabledPriority(1): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v1, v0

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is enabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1181
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    aget v3, v1, v0

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->ApnIDToProfileID(I)I

    move-result v2

    .line 1203
    :goto_1
    return v2

    .line 1176
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1186
    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcGetAnyDataEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "profileDecisionByEnabledPriority: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is requested"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1189
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->ApnIDToProfileID(I)I

    move-result v2

    goto :goto_1

    .line 1193
    :cond_2
    const/4 v0, 0x0

    :goto_2
    const/16 v2, 0x11

    if-ge v0, v2, :cond_4

    .line 1195
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcGetAnyDataEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "profileDecisionByEnabledPriority(2): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is enabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1198
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->ApnIDToProfileID(I)I

    move-result v2

    goto :goto_1

    .line 1193
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1203
    :cond_4
    const/16 v2, 0xa

    goto :goto_1

    .line 1173
    nop

    :array_0
    .array-data 0x4
        0xdt 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private reconnectAfterFail(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/ApnContext;I)V
    .locals 4
    .parameter "lastFailCauseCode"
    .parameter "apnContext"
    .parameter "retryOverride"

    .prologue
    .line 4695
    if-nez p2, :cond_1

    .line 4696
    const-string v1, "reconnectAfterFail: apnContext == null, impossible"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->loge(Ljava/lang/String;)V

    .line 4743
    :cond_0
    :goto_0
    return-void

    .line 4700
    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4701
    const-string v1, "reconnectAfterFail: apnContext is not Ready, stop this try"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4705
    :cond_2
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v1, v2, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4707
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->isRetryNeeded()Z

    move-result v1

    if-nez v1, :cond_4

    .line 4708
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 4709
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v2, "apnFailed"

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4712
    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mReregisterOnReconnectFailure:Z

    if-eqz v1, :cond_6

    .line 4714
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->retryForeverUsingLastTimeout()V

    .line 4727
    :cond_4
    move v0, p3

    .line 4728
    .local v0, nextReconnectDelay:I
    if-gez v0, :cond_5

    .line 4729
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->getRetryTimer()I

    move-result v0

    .line 4730
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->increaseRetryCount()V

    .line 4732
    :cond_5
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startAlarmForReconnect(ILcom/android/internal/telephony/ApnContext;)V

    .line 4734
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->shouldPostNotification(Lcom/android/internal/telephony/DataConnection$FailCause;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 4736
    const-string v1, "reconnectAfterFail: NOT Posting GPRS Unavailable notification -- likely transient error"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4717
    .end local v0           #nextReconnectDelay:I
    :cond_6
    const-string v1, "reconnectAfterFail: activate failed, Reregistering to network"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4718
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mReregisterOnReconnectFailure:Z

    .line 4719
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->reRegisterNetwork(Landroid/os/Message;)V

    .line 4720
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    goto/16 :goto_0

    .line 4740
    .restart local v0       #nextReconnectDelay:I
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/ApnContext;)V

    goto/16 :goto_0
.end method

.method private reconnectAfterFail(Lcom/android/internal/telephony/DataConnection$FailCause;Ljava/lang/String;I)V
    .locals 2
    .parameter "lastFailCauseCode"
    .parameter "reason"
    .parameter "retryOverride"

    .prologue
    .line 1873
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_0

    .line 1889
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcReconnectAfterFail(Lcom/android/internal/telephony/DataConnection$FailCause;Ljava/lang/String;)Z

    .line 1891
    :cond_0
    return-void
.end method

.method private removeRoutuing(Ljava/lang/String;ILjava/lang/String;)V
    .locals 9
    .parameter "rtbName"
    .parameter "priorityLevel"
    .parameter "interfaceName"

    .prologue
    const/4 v8, 0x0

    .line 2429
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "net."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".gw"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2430
    .local v2, gw:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "net."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".dns1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2431
    .local v0, dns1:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "net."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".dns2"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2433
    .local v1, dns2:Ljava/lang/String;
    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeRoutingTable, rtbName=  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  interface="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " gateway="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2436
    const-string v5, "all"

    add-int/lit8 v6, p2, 0xa

    invoke-static {v5, v0, p1, v6, v8}, Landroid/net/NetworkUtils;->delRoutingRule_ext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v3

    .line 2437
    .local v3, ret1:I
    const-string v5, "all"

    add-int/lit8 v6, p2, 0x14

    invoke-static {v5, v1, p1, v6, v8}, Landroid/net/NetworkUtils;->delRoutingRule_ext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v4

    .line 2438
    .local v4, ret2:I
    invoke-static {p1, v8}, Landroid/net/NetworkUtils;->delRoutingTable_ext(Ljava/lang/String;I)I

    .line 2439
    return-void
.end method

.method private resetPollStats()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 1667
    iput-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mTxPkts:J

    .line 1668
    iput-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRxPkts:J

    .line 1669
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    .line 1670
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollPeriod:I

    .line 1671
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I

    .line 1672
    return-void
.end method

.method private retryAfterDisconnected(Ljava/lang/String;)Z
    .locals 2
    .parameter "reason"

    .prologue
    .line 1860
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->forceAlwaysRetryDelay()I

    move-result v1

    if-ltz v1, :cond_1

    .line 1861
    const/4 v0, 0x1

    .line 1869
    :cond_0
    :goto_0
    return v0

    .line 1864
    :cond_1
    const/4 v0, 0x1

    .line 1866
    .local v0, retry:Z
    const-string v1, "radioTurnedOff"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1867
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setPreferredApn(I)V
    .locals 4
    .parameter "pos"

    .prologue
    const/4 v3, 0x0

    .line 4905
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->canSetPreferApn:Z

    if-nez v2, :cond_1

    .line 4918
    :cond_0
    :goto_0
    return-void

    .line 4909
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4910
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4912
    if-ltz p1, :cond_0

    .line 4913
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4914
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "apn_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4915
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 4916
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setpreferred apn pos: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setRoutuing(Ljava/lang/String;ILjava/lang/String;)V
    .locals 9
    .parameter "rtbName"
    .parameter "priorityLevel"
    .parameter "interfaceName"

    .prologue
    const/4 v8, 0x0

    .line 2347
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "net."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".gw"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2348
    .local v2, gw:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "net."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".dns1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2349
    .local v0, dns1:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "net."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".dns2"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2352
    .local v1, dns2:Ljava/lang/String;
    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addRoutingTable, rtbName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " interface="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " gateway="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2354
    invoke-static {p1, p3, v2, v8}, Landroid/net/NetworkUtils;->addRoutingTable_ext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 2357
    const-string v5, "all"

    add-int/lit8 v6, p2, 0xa

    invoke-static {v5, v0, p1, v6, v8}, Landroid/net/NetworkUtils;->addRoutingRule_ext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v3

    .line 2358
    .local v3, ret1:I
    const-string v5, "all"

    add-int/lit8 v6, p2, 0x14

    invoke-static {v5, v1, p1, v6, v8}, Landroid/net/NetworkUtils;->addRoutingRule_ext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v4

    .line 2360
    .local v4, ret2:I
    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setRouting ret1="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ret2="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2361
    return-void
.end method

.method private setSipFlag(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 5473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[HTCCW]set sip flag to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5474
    if-eqz p1, :cond_0

    .line 5475
    const-string v0, "cdma.wifi.on"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5479
    :goto_0
    return-void

    .line 5477
    :cond_0
    const-string v0, "cdma.wifi.on"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupData(Lcom/android/internal/telephony/ApnContext;)Z
    .locals 13
    .parameter "apnContext"

    .prologue
    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 4474
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setupData: apnContext="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4480
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isCWDataConnectionSupported()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 4481
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCCW]setupData(), mCwRegState="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCwRegState:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",mSipInviteOK="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSipInviteOK:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4482
    iget v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCwRegState:I

    const/16 v11, 0x65

    if-ne v10, v11, :cond_1

    .line 4484
    iget-boolean v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSipInviteOK:Z

    if-nez v10, :cond_1

    .line 4485
    iget v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSipInviteRetryTimes:I

    if-lt v10, v9, :cond_0

    .line 4486
    const-string v9, "[HTCCW]sip invite retry too many times."

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4488
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    const-string v10, "cwFeatureChange"

    invoke-direct {p0, v9, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->broadcastDisconnectedForApns(Ljava/lang/String;Ljava/lang/String;)V

    .line 4605
    :goto_0
    return v8

    .line 4491
    :cond_0
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onCwSip(I)V

    move v8, v9

    .line 4492
    goto :goto_0

    .line 4500
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getApnProfileID(Ljava/lang/String;)I

    move-result v5

    .line 4501
    .local v5, profileId:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getNextWaitingApn()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v0

    .line 4502
    .local v0, apn:Lcom/android/internal/telephony/ApnSetting;
    if-nez v0, :cond_2

    .line 4503
    const-string v9, "setupData: return for no apn found!"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4507
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnChangeFlag()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 4508
    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/ApnContext;->setApnChangeFlag(Z)V

    .line 4510
    invoke-virtual {p1, v12}, Lcom/android/internal/telephony/ApnContext;->setApnSetting(Lcom/android/internal/telephony/ApnSetting;)V

    .line 4511
    invoke-virtual {p1, v12}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 4512
    invoke-virtual {p1, v12}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    .line 4517
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    .line 4519
    .local v1, dc:Lcom/android/internal/telephony/cdma/CdmaDataConnection;
    if-nez v1, :cond_b

    .line 4521
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->checkForConnectionForApnContext(Lcom/android/internal/telephony/ApnContext;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    .end local v1           #dc:Lcom/android/internal/telephony/cdma/CdmaDataConnection;
    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    .line 4523
    .restart local v1       #dc:Lcom/android/internal/telephony/cdma/CdmaDataConnection;
    if-eqz v1, :cond_4

    .line 4524
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnFromOtherAC:Lcom/android/internal/telephony/ApnSetting;

    .line 4525
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "overwrite apn from other AC, ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4529
    :cond_4
    if-nez v1, :cond_5

    .line 4530
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->findDCFromDupApn(Lcom/android/internal/telephony/ApnSetting;)Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    move-result-object v1

    .line 4534
    :cond_5
    if-nez v1, :cond_6

    .line 4535
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->findReadyDataConnection(Lcom/android/internal/telephony/ApnSetting;)Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    move-result-object v1

    .line 4538
    :cond_6
    if-nez v1, :cond_7

    .line 4539
    const-string v10, "setupData: No ready CdmaDataConnection found!"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4542
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->findFreeDataConnection()Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    move-result-object v1

    .line 4545
    :cond_7
    if-nez v1, :cond_8

    .line 4546
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->createDataConnection()Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    move-result-object v1

    .line 4549
    :cond_8
    if-nez v1, :cond_9

    .line 4550
    const-string v9, "setupData: No free CdmaDataConnection found!"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4554
    :cond_9
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingDataConnection:Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    .line 4556
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->getDataConnectionId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnectionAc;

    .line 4557
    .local v2, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->setProfileId(I)V

    .line 4558
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->setActiveApnType(Ljava/lang/String;)V

    .line 4559
    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionAc;->getRefCountSync()I

    move-result v6

    .line 4560
    .local v6, refCount:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setupData: init dc and apnContext refCount="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4563
    if-nez v6, :cond_a

    .line 4564
    const-string v8, "default"

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v8

    invoke-direct {p0, v1, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->configureRetry(Lcom/android/internal/telephony/DataConnection;Z)V

    .line 4566
    :cond_a
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    .line 4567
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 4570
    .end local v2           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    .end local v6           #refCount:I
    :cond_b
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/ApnContext;->setApnSetting(Lcom/android/internal/telephony/ApnSetting;)V

    .line 4571
    sget-object v8, Lcom/android/internal/telephony/DataConnectionTracker$State;->INITING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 4572
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 4575
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnectionAc;->getReconnectIntentSync()Landroid/app/PendingIntent;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 4576
    const-string v8, "setupData: data reconnection pending"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4577
    sget-object v8, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 4578
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v9

    .line 4579
    goto/16 :goto_0

    .line 4583
    :cond_c
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->dumpSwitchApnRecord()V

    .line 4584
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->pendingAC:Lcom/android/internal/telephony/ApnContext;

    if-ne p1, v8, :cond_e

    .line 4585
    const-string v8, "clean SwitchApnRecord"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4586
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iput-object v12, v8, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->pendingAC:Lcom/android/internal/telephony/ApnContext;

    .line 4587
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->switchOffACs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/ApnContext;

    .line 4588
    .local v7, tmp:Lcom/android/internal/telephony/ApnContext;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "switchOffACs="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 4590
    .end local v7           #tmp:Lcom/android/internal/telephony/ApnContext;
    :cond_d
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->switchOffACs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 4591
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->switchOffACs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/ApnContext;

    .line 4592
    .restart local v7       #tmp:Lcom/android/internal/telephony/ApnContext;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "switchOffACs="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 4599
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v7           #tmp:Lcom/android/internal/telephony/ApnContext;
    :cond_e
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 4600
    .local v4, msg:Landroid/os/Message;
    const v8, 0x42000

    iput v8, v4, Landroid/os/Message;->what:I

    .line 4601
    iput-object p1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4602
    invoke-virtual {v1, v4, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->bringUp(Landroid/os/Message;Lcom/android/internal/telephony/ApnSetting;)V

    .line 4604
    const-string v8, "setupData: initing!"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    move v8, v9

    .line 4605
    goto/16 :goto_0
.end method

.method private setupData(Ljava/lang/String;)Z
    .locals 7
    .parameter "reason"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1540
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isCWDataConnectionSupported()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1541
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCCW]setupData(), mCwRegState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCwRegState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1542
    iget v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCwRegState:I

    const/16 v6, 0x65

    if-ne v5, v6, :cond_1

    .line 1544
    iget-boolean v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSipInviteOK:Z

    if-nez v5, :cond_1

    .line 1545
    iget v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSipInviteRetryTimes:I

    if-lt v5, v4, :cond_0

    .line 1546
    const-string v4, "[HTCCW]sip invite retry too many times."

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1548
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    const-string v5, "cwFeatureChange"

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->broadcastDisconnectedForApns(Ljava/lang/String;Ljava/lang/String;)V

    .line 1611
    :goto_0
    return v3

    .line 1551
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onCwSip(I)V

    move v3, v4

    .line 1552
    goto :goto_0

    .line 1560
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->findFreeDataConnection()Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    move-result-object v0

    .line 1562
    .local v0, conn:Lcom/android/internal/telephony/cdma/CdmaDataConnection;
    if-nez v0, :cond_2

    .line 1563
    const-string v4, "setupData: No free CdmaDataConnection found!"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1568
    :cond_2
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingDataConnection:Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    .line 1575
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    sget-object v6, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Connecting:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/cdma/HtcRadio;->updateDataState(Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;)V

    .line 1577
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->getCurrentProfile()I

    move-result v2

    .line 1578
    .local v2, profileType:I
    const/16 v5, 0x3e8

    if-eq v2, v5, :cond_3

    .line 1579
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->haveDataNetworkState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1582
    :cond_3
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaDataLinkError:Z

    .line 1600
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->makeApnSettingByProfileID(I)Lcom/android/internal/telephony/ApnSetting;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    .line 1602
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call conn.bringUp mActiveApn="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1604
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1605
    .local v1, msg:Landroid/os/Message;
    const v3, 0x42000

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1606
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1607
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->bringUp(Landroid/os/Message;Lcom/android/internal/telephony/ApnSetting;)V

    .line 1609
    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->INITING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1610
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    move v3, v4

    .line 1611
    goto :goto_0
.end method

.method private setupDataOnReadyApns(Ljava/lang/String;)V
    .locals 8
    .parameter "reason"

    .prologue
    .line 4611
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setupDataOnReadyApns  reason ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4612
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnectionAc;

    .line 4613
    .local v2, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionAc;->getReconnectIntentSync()Landroid/app/PendingIntent;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 4614
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cancelReconnectAlarm(Lcom/android/internal/telephony/DataConnectionAc;)V

    .line 4618
    :cond_1
    iget-object v6, v2, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    if-eqz v6, :cond_0

    .line 4619
    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionAc;->getApnListSync()Ljava/util/Collection;

    move-result-object v1

    .line 4621
    .local v1, apns:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/ApnContext;>;"
    const/4 v3, 0x0

    .line 4622
    .local v3, hasDefault:Z
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 4623
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "default"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4624
    const/4 v3, 0x1

    .line 4628
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_3
    iget-object v6, v2, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-direct {p0, v6, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->configureRetry(Lcom/android/internal/telephony/DataConnection;Z)V

    goto :goto_0

    .line 4633
    .end local v1           #apns:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/ApnContext;>;"
    .end local v2           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    .end local v3           #hasDefault:Z
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_4
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 4634
    .restart local v0       #apnContext:Lcom/android/internal/telephony/ApnContext;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " ApnContext apntype ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,state ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", enable="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4635
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v6, v7, :cond_6

    .line 4640
    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 4642
    :cond_6
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 4645
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v6, v7, :cond_7

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v6, v7, :cond_5

    .line 4647
    :cond_7
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    .line 4648
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Lcom/android/internal/telephony/ApnContext;)Z

    goto :goto_1

    .line 4652
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_8
    return-void
.end method

.method private shouldPostNotification(Lcom/android/internal/telephony/DataConnection$FailCause;)Z
    .locals 1
    .parameter "cause"

    .prologue
    .line 1843
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startAlarmForReconnect(ILcom/android/internal/telephony/ApnContext;)V
    .locals 9
    .parameter "delay"
    .parameter "apnContext"

    .prologue
    const/4 v6, 0x0

    .line 4748
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Schedule alarm for reconnect "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": activate failed. Scheduling next attempt for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit16 v5, p1, 0x3e8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4752
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v2

    .line 4754
    .local v2, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    if-eqz v2, :cond_0

    iget-object v4, v2, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    if-nez v4, :cond_1

    .line 4756
    :cond_0
    const-string v4, "null dcac or dc."

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->loge(Ljava/lang/String;)V

    .line 4780
    :goto_0
    return-void

    .line 4760
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 4767
    .local v1, am:Landroid/app/AlarmManager;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.internal.telephony.cdma-reconnect"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4770
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "reason"

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4771
    const-string v4, "type"

    iget-object v5, v2, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v5}, Lcom/android/internal/telephony/DataConnection;->getDataConnectionId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4774
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 4776
    .local v0, alarmIntent:Landroid/app/PendingIntent;
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/DataConnectionAc;->setReconnectIntentSync(Landroid/app/PendingIntent;)V

    .line 4777
    const/4 v4, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    int-to-long v7, p1

    add-long/2addr v5, v7

    invoke-virtual {v1, v4, v5, v6, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private startAlarmForReconnect(ILjava/lang/String;)V
    .locals 7
    .parameter "delay"
    .parameter "reason"

    .prologue
    const/4 v4, 0x0

    .line 1974
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data Connection activate failed. Scheduling next attempt for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-int/lit16 v3, p1, 0x3e8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1977
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1979
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.telephony.cdma-reconnect"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1980
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "reason"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1981
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    .line 1983
    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    int-to-long v5, p1

    add-long/2addr v3, v5

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1986
    return-void
.end method

.method private startDelayedRetry(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/ApnContext;I)V
    .locals 0
    .parameter "cause"
    .parameter "apnContext"
    .parameter "retryOverride"

    .prologue
    .line 4814
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/ApnContext;)V

    .line 4815
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->reconnectAfterFail(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/ApnContext;I)V

    .line 4816
    return-void
.end method

.method private startDelayedRetry(Lcom/android/internal/telephony/DataConnection$FailCause;Ljava/lang/String;I)Z
    .locals 1
    .parameter "cause"
    .parameter "reason"
    .parameter "retryOverride"

    .prologue
    .line 3324
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;)V

    .line 3332
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcReconnectAfterFail(Lcom/android/internal/telephony/DataConnection$FailCause;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private trySetupData(Lcom/android/internal/telephony/ApnContext;)Z
    .locals 1
    .parameter "apnContext"

    .prologue
    .line 3923
    if-nez p1, :cond_0

    .line 3924
    const/4 v0, 0x0

    .line 3927
    :goto_0
    return v0

    .line 3926
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    .line 3927
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private trySetupData(Ljava/lang/String;)Z
    .locals 1
    .parameter "reason"

    .prologue
    .line 1210
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private trySetupData(Ljava/lang/String;Z)Z
    .locals 12
    .parameter "reason"
    .parameter "isTimeoutRetry"

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 1223
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    if-nez v8, :cond_1

    .line 1224
    :cond_0
    const-string v8, "the  pointer is null, return"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1374
    :goto_0
    return v6

    .line 1229
    :cond_1
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/HtcRadio;->hasFlightModeRequested()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1230
    const-string v8, "***trySetupData not enabled for Airplane mode"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1235
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcNotifyAvailability(Ljava/lang/String;)V

    .line 1237
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "***trySetupData due to "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez p1, :cond_5

    const-string v8, "(unspecified)"

    :goto_1
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1239
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 1243
    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v8, :cond_6

    .line 1244
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    if-nez v8, :cond_3

    .line 1245
    const-string v8, "default"

    iput-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    .line 1248
    :cond_3
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ApnContext;

    .line 1250
    .local v1, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-nez v1, :cond_4

    .line 1251
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "trySetupData new apn context for type:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1252
    new-instance v1, Lcom/android/internal/telephony/ApnContext;

    .end local v1           #apnContext:Lcom/android/internal/telephony/ApnContext;
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    const-string v10, "CDMA"

    invoke-direct {v1, v8, v10}, Lcom/android/internal/telephony/ApnContext;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    .restart local v1       #apnContext:Lcom/android/internal/telephony/ApnContext;
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    invoke-virtual {v8, v10, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1255
    :cond_4
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    .line 1256
    sget-object v8, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1262
    .end local v1           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 1263
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 1265
    const-string v8, "(fix?) We\'re on the simulator; assuming data is connected"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    move v6, v9

    .line 1266
    goto/16 :goto_0

    :cond_5
    move-object v8, p1

    .line 1237
    goto :goto_1

    .line 1258
    :cond_6
    sget-object v8, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    goto :goto_2

    .line 1270
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcGetCDMADataConnectionState()I

    move-result v5

    .line 1271
    .local v5, psState:I
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcGetCDMADataRoamingState()Z

    move-result v7

    .line 1273
    .local v7, roaming:Z
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getDesiredPowerState()Z

    move-result v4

    .line 1277
    .local v4, desiredPowerState:Z
    const/16 v3, 0xa

    .line 1280
    .local v3, cdmaProfileType:I
    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v8, :cond_e

    .line 1281
    const-string v8, "ruim card project, no profile switch needed"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1327
    :cond_8
    :goto_3
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    .line 1329
    .local v0, alwaysAllowProfile:Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mHtcRadioAvaliable(true): "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRadioAvaliable:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " retry cnt(0): "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnection;->getRetryCount()I

    move-result v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " isTimeoutRetry: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " allowTimeoutRetry: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->allowTimeoutRetryActivity()Z

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1331
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v10, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v8, v10, :cond_9

    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v10, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v8, v10, :cond_9

    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v8, :cond_14

    :cond_9
    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRadioAvaliable:Z

    if-nez v8, :cond_a

    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->IgnoreRUIMCardReadyInTestVersion:Z

    if-eqz v8, :cond_14

    :cond_a
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnection;->getRetryCount()I

    move-result v8

    if-eqz v8, :cond_b

    if-eqz p2, :cond_14

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->allowTimeoutRetryActivity()Z

    move-result v8

    if-eqz v8, :cond_14

    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isDataAllowed()Z

    move-result v8

    if-eqz v8, :cond_14

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcGetAnyDataEnabled(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isEmergency()Z

    move-result v8

    if-nez v8, :cond_14

    invoke-direct {p0, v0, v6, v9, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcisDataAllowed(ZZZZ)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 1346
    const/4 v6, 0x0

    .line 1347
    .local v6, retValue:Z
    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v8, :cond_13

    .line 1348
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    if-nez v8, :cond_c

    .line 1349
    const-string v8, "default"

    iput-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    .line 1352
    :cond_c
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ApnContext;

    .line 1354
    .restart local v1       #apnContext:Lcom/android/internal/telephony/ApnContext;
    if-nez v1, :cond_d

    .line 1355
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "trySetupData new apn context for type:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1356
    new-instance v1, Lcom/android/internal/telephony/ApnContext;

    .end local v1           #apnContext:Lcom/android/internal/telephony/ApnContext;
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    const-string v9, "CDMA"

    invoke-direct {v1, v8, v9}, Lcom/android/internal/telephony/ApnContext;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    .restart local v1       #apnContext:Lcom/android/internal/telephony/ApnContext;
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    invoke-virtual {v8, v9, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1359
    :cond_d
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    .line 1360
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->SetupDataCallRUIMCardBase(Lcom/android/internal/telephony/ApnContext;)Z

    move-result v6

    .line 1361
    goto/16 :goto_0

    .line 1285
    .end local v0           #alwaysAllowProfile:Z
    .end local v1           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v6           #retValue:Z
    :cond_e
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->profileDecisionByEnabledPriority(Ljava/lang/String;)I

    move-result v3

    .line 1288
    const/16 v8, 0xa

    if-ne v3, v8, :cond_f

    .line 1290
    const-string v8, "trySetupData: invalid profile"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1295
    :cond_f
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    invoke-virtual {v8, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->makeApnSettingByProfileID(I)Lcom/android/internal/telephony/ApnSetting;

    move-result-object v2

    .line 1297
    .local v2, apnSetting:Lcom/android/internal/telephony/ApnSetting;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "try cdmaProfileType="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", current profile="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->getCurrentProfile()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", mHtcRequestedNewApn="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1300
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    if-eqz v8, :cond_10

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_10

    .line 1302
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    const-string v10, "psRestrictDisabled"

    invoke-direct {p0, v8, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->broadcastDisconnectedForApns(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    .line 1307
    :cond_10
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->getCurrentProfile()I

    move-result v8

    if-eq v8, v3, :cond_12

    .line 1309
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v10, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v8, v10, :cond_11

    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v10, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v8, v10, :cond_11

    .line 1311
    const-string v8, "apnSwitched"

    invoke-direct {p0, v9, v8, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;Z)V

    move v6, v9

    .line 1312
    goto/16 :goto_0

    .line 1314
    :cond_11
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    goto/16 :goto_3

    .line 1317
    :cond_12
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v10, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v8, v10, :cond_8

    .line 1319
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "trySetupData: already active profile="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1320
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 1321
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    move v6, v9

    .line 1322
    goto/16 :goto_0

    .line 1364
    .end local v2           #apnSetting:Lcom/android/internal/telephony/ApnSetting;
    .restart local v0       #alwaysAllowProfile:Z
    .restart local v6       #retValue:Z
    :cond_13
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    invoke-virtual {v8, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->setCurrentProfile(I)V

    .line 1366
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setupData(Ljava/lang/String;)Z

    move-result v6

    goto/16 :goto_0

    .line 1371
    .end local v6           #retValue:Z
    :cond_14
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mState"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mHtcRadioAvaliable"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRadioAvaliable:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mDataConnections.get(0).getRetryCount()"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnection;->getRetryCount()I

    move-result v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private updateApnProxyInfo(Lcom/android/internal/telephony/ApnContext;)V
    .locals 10
    .parameter "apnContext"

    .prologue
    const/4 v9, 0x0

    .line 3689
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v2

    .line 3690
    .local v2, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    if-nez v2, :cond_0

    .line 3691
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "onDataSetupCompete: No dcac"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3693
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    .line 3696
    .local v1, dc:Lcom/android/internal/telephony/DataConnection;
    const-string v7, "onDataSetupComplete: success apn=%s"

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/ApnSetting;

    iget-object v6, v6, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3699
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnSetting()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v0

    .line 3700
    .local v0, apn:Lcom/android/internal/telephony/ApnSetting;
    iget-object v6, v0, Lcom/android/internal/telephony/ApnSetting;->proxy:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/android/internal/telephony/ApnSetting;->proxy:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_2

    .line 3702
    :try_start_0
    iget-object v4, v0, Lcom/android/internal/telephony/ApnSetting;->port:Ljava/lang/String;

    .line 3703
    .local v4, port:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v4, "8080"

    .line 3704
    :cond_1
    new-instance v5, Landroid/net/ProxyProperties;

    iget-object v6, v0, Lcom/android/internal/telephony/ApnSetting;->proxy:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 3706
    .local v5, proxy:Landroid/net/ProxyProperties;
    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/DataConnectionAc;->setLinkPropertiesHttpProxySync(Landroid/net/ProxyProperties;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3712
    .end local v4           #port:Ljava/lang/String;
    .end local v5           #proxy:Landroid/net/ProxyProperties;
    :cond_2
    :goto_0
    return-void

    .line 3707
    :catch_0
    move-exception v3

    .line 3708
    .local v3, e:Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onDataSetupComplete: NumberFormatException making ProxyProperties ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/internal/telephony/ApnSetting;->port:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updatePreferredApn(Lcom/android/internal/telephony/ApnContext;)V
    .locals 2
    .parameter "apnContext"

    .prologue
    .line 3715
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3716
    const-string v0, "gsm.defaultpdpcontext.active"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3717
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->canSetPreferApn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    if-nez v0, :cond_0

    .line 3718
    const-string v0, "onDataSetupComplete: PREFERED APN is null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3719
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnSetting()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    .line 3720
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v0, :cond_0

    .line 3721
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget v0, v0, Lcom/android/internal/telephony/ApnSetting;->id:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setPreferredApn(I)V

    .line 3728
    :cond_0
    :goto_0
    return-void

    .line 3725
    :cond_1
    const-string v0, "gsm.defaultpdpcontext.active"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private usedNumberOfDC()I
    .locals 4

    .prologue
    .line 187
    const/4 v2, 0x0

    .line 188
    .local v2, usedCount:I
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnectionAc;

    .line 189
    .local v0, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionAc;->isInactiveSync()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->dataConnectionNotInUse(Lcom/android/internal/telephony/DataConnectionAc;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 192
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 194
    .end local v0           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :cond_2
    return v2
.end method

.method private writeEventLogCdmaDataDrop()V
    .locals 5

    .prologue
    .line 3012
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    move-object v0, v1

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 3013
    .local v0, loc:Landroid/telephony/cdma/CdmaCellLocation;
    const v2, 0xc3bf

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3016
    return-void

    .line 3013
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method HtcApnHandling()V
    .locals 4

    .prologue
    .line 4880
    const-string v2, "dun"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnTypeAvailable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 4882
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v2, :cond_1

    .line 4883
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HtcApnHandling: add dun into prefer(id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget v3, v3, Lcom/android/internal/telephony/ApnSetting;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4884
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v3, v3, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->addDUNApnType([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    .line 4901
    :cond_0
    :goto_0
    const-string v2, "gsm.allapns.created"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4902
    return-void

    .line 4886
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnSetting;

    .line 4887
    .local v0, apn:Lcom/android/internal/telephony/ApnSetting;
    const-string v2, "default"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4888
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HtcApnHandling: add dun into default(id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/telephony/ApnSetting;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4889
    iget-object v2, v0, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->addDUNApnType([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    goto :goto_1

    .line 4895
    .end local v0           #apn:Lcom/android/internal/telephony/ApnSetting;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    const-string v3, "dun"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public HtcGetAnyDataEnabled(Ljava/lang/String;)Z
    .locals 5
    .parameter "apntype"

    .prologue
    const/4 v1, 0x1

    .line 1135
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1140
    const/4 v0, 0x0

    .line 1141
    .local v0, isWhite:Z
    if-nez p1, :cond_2

    move v0, v1

    .line 1143
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mInternalDataEnabled:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserDataEnabled:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_3

    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sPolicyDataEnabled:Z

    if-eqz v2, :cond_3

    .line 1144
    .local v1, result:Z
    :goto_1
    if-nez v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HtcGetAnyDataEnabled: result="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " apntype="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " mInternalDataEnabled="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mInternalDataEnabled:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " isWhite="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " mUserDataEnabled="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserDataEnabled:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " sPolicyDataEnabled="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sPolicyDataEnabled:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1151
    :cond_1
    monitor-exit v3

    return v1

    .line 1141
    .end local v1           #result:Z
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->whiteList_Check(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 1143
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 1152
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected HtcOnCleanUpAllConnections(Ljava/lang/String;)V
    .locals 3
    .parameter "cause"

    .prologue
    const/4 v1, 0x0

    .line 1130
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onCleanUpConnection(ZILjava/lang/String;)V

    .line 1131
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V

    .line 1132
    return-void
.end method

.method public _getActiveApnTypesRUIM()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 4169
    const-string v3, "get all active apn types"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4170
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4172
    .local v2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 4173
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4174
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4178
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_1
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method protected allowTimeoutRetryActivity()Z
    .locals 1

    .prologue
    .line 541
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isSprintRelease()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaDataLinkError:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected cleanUpAllConnections(ZLjava/lang/String;)V
    .locals 4
    .parameter "tearDown"
    .parameter "reason"

    .prologue
    .line 4655
    const-string v2, "cdmaDCT: cleanUpAllConnections"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4656
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v2, :cond_1

    .line 4657
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cleanUpAllConnections: tearDown="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4659
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 4660
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    .line 4661
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnectionByApnContext(ZLcom/android/internal/telephony/ApnContext;)V

    goto :goto_0

    .line 4664
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->stopNetStatPoll()V

    .line 4666
    const-string v2, "default"

    iput-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    .line 4670
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_1
    return-void

    .line 4668
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;Z)V

    goto :goto_1
.end method

.method public controlDataFromRoamGuard(ZZ)V
    .locals 3
    .parameter "enable"
    .parameter "userChange"

    .prologue
    const/4 v2, 0x0

    .line 3620
    if-eqz p1, :cond_1

    .line 3621
    if-eqz p2, :cond_0

    .line 3622
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    .line 3623
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getOverallState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_0

    .line 3624
    const/4 v0, 0x0

    invoke-direct {p0, v2, v0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;Z)V

    .line 3627
    :cond_0
    const v0, 0x42003

    const-string v1, "roamGuardEnabled"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 3635
    :goto_0
    return-void

    .line 3631
    :cond_1
    const/4 v0, 0x1

    const-string v1, "roamGuardDisabled"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;Z)V

    goto :goto_0
.end method

.method public declared-synchronized disableApnType(Ljava/lang/String;)I
    .locals 5
    .parameter "type"

    .prologue
    const/4 v3, 0x3

    .line 3881
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v2, :cond_3

    .line 3884
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v1

    .line 3885
    .local v1, id:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 3886
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid apnType id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 3914
    .end local v1           #id:I
    :goto_0
    monitor-exit p0

    return v2

    .line 3891
    .restart local v1       #id:I
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableApnType:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", PhoneType="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneType()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", uiCount="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserIntentionOfApn:[Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;->count:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " uiLast="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserIntentionOfApn:[Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;->lastIntention:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3895
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 3897
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v0, :cond_2

    .line 3898
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setEnabled(IZ)V

    .line 3899
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v2, v3, :cond_1

    .line 3900
    const-string v2, "diableApnType: return APN_REQUEST_STARTED"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3901
    const/4 v2, 0x1

    goto :goto_0

    .line 3903
    :cond_1
    const-string v2, "disableApnType: return APN_ALREADY_INACTIVE"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3904
    const/4 v2, 0x4

    goto :goto_0

    .line 3909
    :cond_2
    const-string v2, "disableApnType: no apn context was found, return APN_REQUEST_FAILED"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    move v2, v3

    .line 3911
    goto :goto_0

    .line 3914
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v1           #id:I
    :cond_3
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->disableApnType(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    goto/16 :goto_0

    .line 3881
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 681
    invoke-direct {p0, v0, v2, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;Z)V

    .line 683
    invoke-super {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->dispose()V

    .line 686
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 687
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 689
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_2

    .line 691
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRUIMReady(Landroid/os/Handler;)V

    .line 697
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNVReady(Landroid/os/Handler;)V

    .line 698
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDataStateChanged(Landroid/os/Handler;)V

    .line 699
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 700
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 703
    sget v0, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RIL_CAPABILITIES:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 704
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->unregisterForDataConnectionAttached(Landroid/os/Handler;)V

    .line 705
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->unregisterForDataConnectionDetached(Landroid/os/Handler;)V

    .line 706
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->unregisterForDataRoamingOn(Landroid/os/Handler;)V

    .line 707
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->unregisterForDataRoamingOff(Landroid/os/Handler;)V

    .line 709
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->unRegisterForRadioTechnologyChanged(Landroid/os/Handler;)V

    .line 722
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    .line 725
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForMIPFailCause(Landroid/os/Handler;)V

    .line 743
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    .line 746
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    .line 749
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 751
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mApnObserver:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$ApnChangeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 755
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->destroyAllDataConnectionList()V

    .line 758
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isCWDataConnectionSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 759
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRemoteConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 763
    :cond_1
    return-void

    .line 695
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 715
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForDataConnectionAttached(Landroid/os/Handler;)V

    .line 716
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForDataConnectionDetached(Landroid/os/Handler;)V

    .line 717
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForRoamingOn(Landroid/os/Handler;)V

    .line 718
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForRoamingOff(Landroid/os/Handler;)V

    goto :goto_1
.end method

.method public declared-synchronized enableApnType(Ljava/lang/String;)I
    .locals 5
    .parameter "apnType"

    .prologue
    const/4 v3, 0x1

    .line 3833
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v2, :cond_4

    .line 3834
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 3835
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnTypeAvailable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3836
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableApnType: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " is type not available"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3838
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v4, "default"

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eq v0, v2, :cond_1

    .line 3840
    const/4 v2, 0x2

    .line 3875
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :goto_0
    monitor-exit p0

    return v2

    .line 3844
    .restart local v0       #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableApnType: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " mState("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "), PhoneType="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneType()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3852
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v1

    .line 3853
    .local v1, id:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 3854
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid apnType id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3855
    const/4 v2, 0x3

    goto :goto_0

    .line 3858
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableApnType: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " mState("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", PhoneType="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneType()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", uiCount="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserIntentionOfApn:[Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;->count:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " uiLast="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserIntentionOfApn:[Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;->lastIntention:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3863
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserIntentionOfApn:[Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;->isPendingDisabling()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3864
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableApnType: return APN_ALREADY_ACTIVE, PHoneType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneType()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3865
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 3867
    :cond_3
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setEnabled(IZ)V

    .line 3869
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableApnType: new apn request for type "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " return APN_REQUEST_STARTED, PhoneType="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneType()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    move v2, v3

    .line 3872
    goto/16 :goto_0

    .line 3875
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v1           #id:I
    :cond_4
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->enableApnType(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    goto/16 :goto_0

    .line 3833
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 767
    const-string v0, "CdmaDataConnectionTracker finalized"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 768
    return-void
.end method

.method protected findReadyDataConnection(Lcom/android/internal/telephony/ApnSetting;)Lcom/android/internal/telephony/cdma/CdmaDataConnection;
    .locals 6
    .parameter "apn"

    .prologue
    const/4 v4, 0x0

    .line 4399
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findReadyDataConnection: apn string <"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ">"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4401
    if-nez p1, :cond_1

    move-object v3, v4

    .line 4414
    :goto_1
    return-object v3

    .line 4399
    :cond_0
    const-string v3, "null"

    goto :goto_0

    .line 4404
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnectionAc;

    .line 4405
    .local v1, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionAc;->getApnSettingSync()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v0

    .line 4407
    .local v0, apnSetting:Lcom/android/internal/telephony/ApnSetting;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findReadyDataConnection: dc apn string <"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ">"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4410
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4411
    iget-object v3, v1, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    check-cast v3, Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    goto :goto_1

    .line 4407
    :cond_3
    const-string v3, "null"

    goto :goto_2

    .end local v0           #apnSetting:Lcom/android/internal/telephony/ApnSetting;
    .end local v1           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :cond_4
    move-object v3, v4

    .line 4414
    goto :goto_1
.end method

.method protected getActionIntentDataStallAlarm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 777
    const-string v0, "com.android.internal.telephony.cdma-data-stall"

    return-object v0
.end method

.method protected getActionIntentReconnectAlarm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 772
    const-string v0, "com.android.internal.telephony.cdma-reconnect"

    return-object v0
.end method

.method public getActiveApnCarrier(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "apnType"

    .prologue
    .line 4138
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v2, :cond_1

    .line 4139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get active apn string for type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4140
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 4141
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v0, :cond_0

    .line 4142
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnSetting()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v1

    .line 4143
    .local v1, apnSetting:Lcom/android/internal/telephony/ApnSetting;
    if-eqz v1, :cond_0

    .line 4144
    iget-object v2, v1, Lcom/android/internal/telephony/ApnSetting;->carrier:Ljava/lang/String;

    .line 4149
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v1           #apnSetting:Lcom/android/internal/telephony/ApnSetting;
    :goto_0
    return-object v2

    .line 4147
    .restart local v0       #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 4149
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->getActiveApnCarrier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getActiveApnString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 4129
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v0, :cond_0

    .line 4130
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getActiveApnStringRUIM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4132
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->getActiveApnString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getActiveApnStringRUIM(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "apnType"

    .prologue
    .line 4157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get active apn string for type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4158
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 4159
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v0, :cond_0

    .line 4160
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnSetting()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v1

    .line 4161
    .local v1, apnSetting:Lcom/android/internal/telephony/ApnSetting;
    if-eqz v1, :cond_0

    .line 4162
    iget-object v2, v1, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    .line 4165
    .end local v1           #apnSetting:Lcom/android/internal/telephony/ApnSetting;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 4120
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v0, :cond_0

    .line 4121
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->_getActiveApnTypesRUIM()[Ljava/lang/String;

    move-result-object v0

    .line 4123
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getApnProfileID(Ljava/lang/String;)I
    .locals 1
    .parameter "apnType"

    .prologue
    .line 4386
    const-string v0, "ims"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4387
    const/4 v0, 0x2

    .line 4393
    :goto_0
    return v0

    .line 4388
    :cond_0
    const-string v0, "fota"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4389
    const/4 v0, 0x3

    goto :goto_0

    .line 4390
    :cond_1
    const-string v0, "cbs"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4391
    const/4 v0, 0x4

    goto :goto_0

    .line 4393
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCWRegistrationState()I
    .locals 1

    .prologue
    .line 5470
    const/4 v0, 0x0

    return v0
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;
    .locals 3

    .prologue
    .line 3481
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 3483
    .local v0, ret:Lcom/android/internal/telephony/Phone$DataState;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    if-nez v1, :cond_0

    .line 3484
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 3517
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDataConnectionState  ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3518
    return-object v0

    .line 3485
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcGetCDMADataConnectionState()I

    move-result v1

    if-eqz v1, :cond_1

    .line 3486
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 3488
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$State:[I

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 3497
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->htcIsRingingButHaventReported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3498
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 3491
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 3492
    goto :goto_0

    .line 3501
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3503
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 3505
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 3507
    goto :goto_0

    .line 3512
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 3488
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getDataConnectionStateTime(Ljava/lang/String;)J
    .locals 5
    .parameter "apnType"

    .prologue
    const-wide/16 v2, -0x1

    .line 3559
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v0

    .line 3560
    .local v0, apnTypeId:I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 3574
    :cond_0
    :goto_0
    return-wide v2

    .line 3565
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v1

    .line 3566
    .local v1, dataState:Lcom/android/internal/telephony/Phone$DataState;
    sget-object v4, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-eq v1, v4, :cond_2

    sget-object v4, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v1, v4, :cond_0

    .line 3571
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingDataConnection:Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    if-eqz v4, :cond_0

    .line 3572
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingDataConnection:Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->getConnectionTime()J

    move-result-wide v2

    goto :goto_0
.end method

.method public declared-synchronized getDataEnabled()Z
    .locals 3

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 156
    .local v0, defaultAC:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 155
    .end local v0           #defaultAC:Lcom/android/internal/telephony/ApnContext;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getDataOnRoamingEnabled()Z
    .locals 2

    .prologue
    .line 3639
    const/4 v0, 0x0

    .line 3642
    .local v0, allow:Z
    sget-boolean v1, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG:Z

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3644
    const-string v1, "VZW ADMIN type, disable data roaming"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3645
    const/4 v0, 0x0

    .line 3649
    :goto_0
    return v0

    .line 3647
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public getDataServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 5705
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    if-eqz v0, :cond_0

    .line 5706
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataServiceStateTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 5709
    :goto_0
    return-object v0

    .line 5708
    :cond_0
    const-string v0, "getDataServiceState: mDsst is null, return null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5709
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;
    .locals 4
    .parameter "apnType"

    .prologue
    .line 3796
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v2, :cond_1

    .line 3797
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 3798
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v0, :cond_0

    .line 3799
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v1

    .line 3800
    .local v1, dataConnectionAc:Lcom/android/internal/telephony/DataConnectionAc;
    if-eqz v1, :cond_0

    .line 3801
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get active pdp is not null, return link Capabilities for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3802
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionAc;->getLinkCapabilitiesSync()Landroid/net/LinkCapabilities;

    move-result-object v2

    .line 3808
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v1           #dataConnectionAc:Lcom/android/internal/telephony/DataConnectionAc;
    :goto_0
    return-object v2

    .line 3805
    .restart local v0       #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_0
    const-string v2, "return new LinkCapabilities"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3806
    new-instance v2, Landroid/net/LinkCapabilities;

    invoke-direct {v2}, Landroid/net/LinkCapabilities;-><init>()V

    goto :goto_0

    .line 3808
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;

    move-result-object v2

    goto :goto_0
.end method

.method protected getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 4
    .parameter "apnType"

    .prologue
    .line 3815
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v2, :cond_1

    .line 3816
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 3817
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v0, :cond_0

    .line 3818
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v1

    .line 3819
    .local v1, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    if-eqz v1, :cond_0

    .line 3820
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "return link properites for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3821
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionAc;->getLinkPropertiesSync()Landroid/net/LinkProperties;

    move-result-object v2

    .line 3827
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v1           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :goto_0
    return-object v2

    .line 3824
    .restart local v0       #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_0
    const-string v2, "return new LinkProperties"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3825
    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    goto :goto_0

    .line 3827
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v2

    goto :goto_0
.end method

.method public getOverallState()Lcom/android/internal/telephony/DataConnectionTracker$State;
    .locals 7

    .prologue
    .line 4820
    const/4 v3, 0x0

    .line 4821
    .local v3, isConnecting:Z
    const/4 v4, 0x1

    .line 4822
    .local v4, isFailed:Z
    const/4 v2, 0x0

    .line 4823
    .local v2, isAnyEnabled:Z
    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-nez v5, :cond_0

    .line 4824
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    .line 4860
    :goto_0
    return-object v5

    .line 4826
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 4827
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4828
    const/4 v2, 0x1

    .line 4829
    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/DataConnectionTracker$State;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 4832
    :pswitch_1
    const-string v5, "overall state is CONNECTED"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4833
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    goto :goto_0

    .line 4836
    :pswitch_2
    const/4 v3, 0x1

    .line 4837
    const/4 v4, 0x0

    .line 4838
    goto :goto_1

    .line 4841
    :pswitch_3
    const/4 v4, 0x0

    goto :goto_1

    .line 4847
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_2
    if-nez v2, :cond_3

    .line 4848
    const-string v5, "overall state is IDLE"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4849
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    goto :goto_0

    .line 4852
    :cond_3
    if-eqz v3, :cond_4

    .line 4853
    const-string v5, "overall state is CONNECTING"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4854
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    goto :goto_0

    .line 4855
    :cond_4
    if-nez v4, :cond_5

    .line 4856
    const-string v5, "overall state is IDLE"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4857
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    goto :goto_0

    .line 4859
    :cond_5
    const-string v5, "overall state is FAILED"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4860
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    goto :goto_0

    .line 4829
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public declared-synchronized getState(Ljava/lang/String;)Lcom/android/internal/telephony/DataConnectionTracker$State;
    .locals 2
    .parameter "apnType"

    .prologue
    .line 795
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v1, :cond_3

    .line 797
    const-string v1, "*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 798
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 799
    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 811
    :goto_0
    monitor-exit p0

    return-object v1

    .line 801
    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    goto :goto_0

    .line 805
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 806
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v0, :cond_2

    .line 807
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v1

    goto :goto_0

    .line 809
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    goto :goto_0

    .line 811
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 795
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 1999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gotoIdleAndNotifyDataConnection: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2000
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 2001
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 2002
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    .line 2003
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 3339
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CdmaDCT handleMessage msg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3341
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-boolean v6, v6, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsDisposed:Z

    if-eqz v6, :cond_2

    .line 3342
    :cond_0
    const-string v5, "Ignore CDMA msgs since CDMA phone is inactive"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3460
    :cond_1
    :goto_0
    return-void

    .line 3346
    :cond_2
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 3457
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 3349
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onRecordsLoaded()V

    goto :goto_0

    .line 3353
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onNVReady()V

    goto :goto_0

    .line 3357
    :sswitch_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onCdmaDataDetached()V

    goto :goto_0

    .line 3361
    :sswitch_3
    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v5, :cond_3

    .line 3362
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onDataStateChangedForRuimCard(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 3364
    :cond_3
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onDataStateChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 3369
    :sswitch_4
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onCdmaOtaProvision(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 3373
    :sswitch_5
    const-string v5, "EVENT_RESTART_RADIO"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3374
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onRestartRadio()V

    goto :goto_0

    .line 3377
    :sswitch_6
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaDataLinkError:Z

    goto :goto_0

    .line 3383
    :sswitch_7
    const/4 v4, 0x0

    .line 3384
    .local v4, retryReason:Ljava/lang/String;
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 3385
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v4           #retryReason:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 3387
    .restart local v4       #retryReason:Ljava/lang/String;
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cdma retry setup data call for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3389
    invoke-direct {p0, v4, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->allowTimeoutRetryActivity()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3390
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v5}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    goto :goto_0

    .line 3396
    .end local v4           #retryReason:Ljava/lang/String;
    :sswitch_8
    const-string v5, "EVENT_ERI_UPDATE"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3397
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->eriUpdate(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3402
    :sswitch_9
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onApnChanged()V

    goto/16 :goto_0

    .line 3405
    :sswitch_a
    const/4 v3, 0x0

    .line 3406
    .local v3, reason:Ljava/lang/String;
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v5, v5, Lcom/android/internal/telephony/ApnContext;

    if-eqz v5, :cond_5

    .line 3407
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/ApnContext;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onTrySetupData(Lcom/android/internal/telephony/ApnContext;)Z

    goto/16 :goto_0

    .line 3409
    :cond_5
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 3410
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v3           #reason:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 3412
    .restart local v3       #reason:Ljava/lang/String;
    :cond_6
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onTrySetupData(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3419
    .end local v3           #reason:Ljava/lang/String;
    :sswitch_b
    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v5, :cond_1

    .line 3421
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->doRecovery()V

    goto/16 :goto_0

    .line 3429
    :sswitch_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCCW]EVENT_CW_REG_STATE_CHANGED, arg1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3430
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onCWRegStateChanged(I)V

    goto/16 :goto_0

    .line 3433
    :sswitch_d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCCW]EVENT_CW_WIFI_STATE_CHANGED, arg1="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3434
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v2, :cond_7

    .line 3435
    .local v2, htccwWifi:Z
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onCWWifiStateChanged(Z)V

    goto/16 :goto_0

    .end local v2           #htccwWifi:Z
    :cond_7
    move v2, v5

    .line 3434
    goto :goto_1

    .line 3438
    :sswitch_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCCW]EVENT_CW_SIP, arg1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3439
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onCwSip(I)V

    goto/16 :goto_0

    .line 3442
    :sswitch_f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCCW]EVENT_HTCCW_ENABLE, arg1="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3443
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v2, :cond_8

    move v0, v2

    .line 3444
    .local v0, htccwEnabled:Z
    :goto_2
    iget v6, p1, Landroid/os/Message;->arg2:I

    if-ne v6, v2, :cond_9

    move v1, v2

    .line 3445
    .local v1, htccwInvite:Z
    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onSetHtcCWDataEnabled(ZZ)V

    goto/16 :goto_0

    .end local v0           #htccwEnabled:Z
    .end local v1           #htccwInvite:Z
    :cond_8
    move v0, v5

    .line 3443
    goto :goto_2

    .restart local v0       #htccwEnabled:Z
    :cond_9
    move v1, v5

    .line 3444
    goto :goto_3

    .line 3451
    .end local v0           #htccwEnabled:Z
    :sswitch_10
    const-string v5, "CDMA EVENT_RADIO_TECH_CHANGED"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3452
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onRadioTechChanged()V

    goto/16 :goto_0

    .line 3346
    nop

    :sswitch_data_0
    .sparse-switch
        0x42002 -> :sswitch_0
        0x42003 -> :sswitch_a
        0x42004 -> :sswitch_3
        0x42012 -> :sswitch_b
        0x42013 -> :sswitch_9
        0x42014 -> :sswitch_2
        0x42015 -> :sswitch_1
        0x42019 -> :sswitch_4
        0x4201a -> :sswitch_5
        0x42023 -> :sswitch_6
        0x42026 -> :sswitch_7
        0x42027 -> :sswitch_8
        0x42028 -> :sswitch_c
        0x42029 -> :sswitch_d
        0x4202a -> :sswitch_f
        0x4202b -> :sswitch_e
        0x4202d -> :sswitch_0
        0x4202e -> :sswitch_10
    .end sparse-switch
.end method

.method protected htcConnectionRequest()V
    .locals 1

    .prologue
    .line 2038
    const v0, 0x42003

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 2039
    return-void
.end method

.method protected htcRequireDisconnect_disablingApn(I)Z
    .locals 6
    .parameter "apnId"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2076
    const/4 v1, 0x1

    .line 2078
    .local v1, needscleanup:Z
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v4, :cond_1

    .line 2104
    :cond_0
    :goto_0
    return v2

    .line 2081
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    if-nez v4, :cond_2

    move v2, v3

    .line 2082
    goto :goto_0

    .line 2084
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v4, 0x11

    if-ge v0, v4, :cond_4

    .line 2087
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcGetAnyDataEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2089
    const/4 v1, 0x0

    .line 2084
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2094
    :cond_4
    if-nez v1, :cond_5

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaProfileTracker:Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/HtcCdmaProfileTracker;->getCurrentProfile()I

    move-result v4

    if-ne v4, v2, :cond_5

    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2097
    const/4 v1, 0x1

    .line 2099
    :cond_5
    if-nez v1, :cond_0

    .line 2101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCleanUpConnection not accepted:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->logEnabledApnStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    move v2, v3

    .line 2102
    goto :goto_0
.end method

.method protected initApnContextsAndDataConnection()V
    .locals 11

    .prologue
    .line 3989
    const-string v9, "net.def_data_on_boot"

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 3997
    .local v3, defaultEnabled:Z
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1070033

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 4000
    .local v8, networkConfigStrings:[Ljava/lang/String;
    move-object v1, v8

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v7, v1, v4

    .line 4001
    .local v7, networkConfigString:Ljava/lang/String;
    new-instance v6, Landroid/net/NetworkConfig;

    invoke-direct {v6, v7}, Landroid/net/NetworkConfig;-><init>(Ljava/lang/String;)V

    .line 4002
    .local v6, networkConfig:Landroid/net/NetworkConfig;
    const/4 v0, 0x0

    .line 4004
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    iget v9, v6, Landroid/net/NetworkConfig;->type:I

    packed-switch v9, :pswitch_data_0

    .line 4000
    :cond_0
    :goto_1
    :pswitch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4006
    :pswitch_1
    const-string v9, "default"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 4007
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ApnContext;->setEnabled(Z)V

    .line 4008
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ConnectivityManager.TYPE_MOBILE + apncontext:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4058
    :goto_2
    if-eqz v0, :cond_1

    .line 4060
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v9

    iget-boolean v10, v6, Landroid/net/NetworkConfig;->dependencyMet:Z

    invoke-virtual {p0, v9, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onSetDependencyMet(Ljava/lang/String;Z)V

    .line 4061
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "type"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "networkConfig.dependencyMet"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, v6, Landroid/net/NetworkConfig;->dependencyMet:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 4011
    :pswitch_2
    const-string v9, "mms"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 4012
    goto :goto_2

    .line 4014
    :pswitch_3
    const-string v9, "supl"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 4015
    goto :goto_2

    .line 4017
    :pswitch_4
    const-string v9, "dun"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 4018
    goto :goto_2

    .line 4021
    :pswitch_5
    const-string v9, "admin"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 4022
    goto :goto_2

    .line 4024
    :pswitch_6
    const-string v9, "internet"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 4025
    goto :goto_2

    .line 4028
    :pswitch_7
    const-string v9, "hipri"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 4029
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v10, "default"

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/ApnContext;

    .line 4030
    .local v2, defaultContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v2, :cond_0

    .line 4031
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v9

    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getDependencyMet()Z

    move-result v10

    invoke-direct {p0, v0, v9, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->applyNewState(Lcom/android/internal/telephony/ApnContext;ZZ)V

    goto/16 :goto_1

    .line 4038
    .end local v2           #defaultContext:Lcom/android/internal/telephony/ApnContext;
    :pswitch_8
    const-string v9, "fota"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 4039
    goto :goto_2

    .line 4041
    :pswitch_9
    const-string v9, "ims"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 4042
    goto/16 :goto_2

    .line 4044
    :pswitch_a
    const-string v9, "cbs"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 4045
    goto/16 :goto_2

    .line 4047
    :pswitch_b
    const-string v9, "httpproxy"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 4048
    goto/16 :goto_2

    .line 4051
    :pswitch_c
    const-string v9, "cmmail"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 4052
    goto/16 :goto_2

    .line 4063
    :cond_1
    const-string v9, "apnContext is null"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4066
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v6           #networkConfig:Landroid/net/NetworkConfig;
    .end local v7           #networkConfigString:Ljava/lang/String;
    :cond_2
    return-void

    .line 4004
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_c
    .end packed-switch
.end method

.method public isApnTypeActive(Ljava/lang/String;)Z
    .locals 3
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 825
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v2, :cond_2

    .line 826
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 827
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-nez v0, :cond_1

    .line 830
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_0
    :goto_0
    return v1

    .line 828
    .restart local v0       #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 830
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_2
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method protected isApnTypeAvailable(Ljava/lang/String;)Z
    .locals 8
    .parameter "type"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 4272
    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v7, :cond_4

    .line 4273
    const-string v7, "dun"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->fetchDunApn()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 4291
    :cond_0
    :goto_0
    return v5

    .line 4277
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    if-eqz v7, :cond_3

    .line 4278
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnSetting;

    .line 4279
    .local v0, apn:Lcom/android/internal/telephony/ApnSetting;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    .end local v0           #apn:Lcom/android/internal/telephony/ApnSetting;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_3
    move v5, v6

    .line 4284
    goto :goto_0

    .line 4286
    :cond_4
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSupportedApnTypes:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_5

    aget-object v4, v1, v2

    .line 4287
    .local v4, s:Ljava/lang/String;
    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 4286
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v4           #s:Ljava/lang/String;
    :cond_5
    move v5, v6

    .line 4291
    goto :goto_0
.end method

.method public isApnTypeEnabled(Ljava/lang/String;)Z
    .locals 3
    .parameter "apnType"

    .prologue
    const/4 v1, 0x0

    .line 3969
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v2, :cond_2

    .line 3971
    const-string v2, "*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3972
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcisAnyTypeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3973
    const/4 v1, 0x1

    .line 3984
    :cond_0
    :goto_0
    return v1

    .line 3977
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 3978
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v0, :cond_0

    .line 3981
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v1

    goto :goto_0

    .line 3984
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_2
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeEnabled(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method protected isConnected()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5329
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v4, :cond_3

    .line 5330
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 5331
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v4, v5, :cond_0

    .line 5339
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    return v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    move v2, v3

    .line 5337
    goto :goto_0

    .line 5339
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v4, v5, :cond_1

    move v2, v3

    goto :goto_0
.end method

.method protected isDataAllowed()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 916
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v8

    .line 917
    :try_start_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mInternalDataEnabled:Z

    .line 918
    .local v2, internalDataEnabled:Z
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 921
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcGetCDMADataConnectionState()I

    move-result v3

    .line 924
    .local v3, psState:I
    const/4 v5, 0x0

    .line 925
    .local v5, roaming:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VZW_GLOBAL_ROAMING_CONFIG()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 926
    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mGlobalDataRoaming:Z

    .line 932
    :goto_0
    if-eqz v5, :cond_10

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v8

    if-nez v8, :cond_10

    move v5, v6

    .line 937
    :goto_1
    const/16 v8, 0xa

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HTC_CUSTOMIZATION_ALLOW_ADMIN_IN_ROAMING:Z

    if-eqz v8, :cond_0

    .line 938
    const/4 v5, 0x0

    .line 940
    :cond_0
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getDesiredPowerState()Z

    move-result v1

    .line 942
    .local v1, desiredPowerState:Z
    if-eqz v3, :cond_1

    iget-boolean v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAutoAttachOnCreation:Z

    if-eqz v8, :cond_11

    :cond_1
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v8, v8, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v8}, Lcom/android/internal/telephony/CommandsInterface;->getNvState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isNVReady()Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v8, v8, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v8}, Lcom/android/internal/telephony/IccRecords;->getRecordsLoaded()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->IgnoreCDMAReadyState()Z

    move-result v8

    if-nez v8, :cond_2

    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->IgnoreRUIMCardReadyInTestVersion:Z

    if-eqz v8, :cond_11

    :cond_2
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v8, v9, :cond_11

    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v8

    if-nez v8, :cond_4

    if-nez v5, :cond_11

    :cond_4
    if-eqz v2, :cond_11

    if-eqz v1, :cond_11

    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingRestartRadio:Z

    if-nez v8, :cond_11

    move v0, v6

    .line 971
    .local v0, allowed:Z
    :goto_2
    if-nez v0, :cond_e

    .line 972
    const-string v4, ""

    .line 973
    .local v4, reason:Ljava/lang/String;
    if-eqz v3, :cond_5

    iget-boolean v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAutoAttachOnCreation:Z

    if-nez v6, :cond_5

    .line 974
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - psState= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 976
    :cond_5
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v6, v6, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6}, Lcom/android/internal/telephony/CommandsInterface;->getNvState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isNVReady()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v6}, Lcom/android/internal/telephony/IccRecords;->getRecordsLoaded()Z

    move-result v6

    if-nez v6, :cond_6

    .line 978
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - radioState= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v7, v7, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7}, Lcom/android/internal/telephony/CommandsInterface;->getNvState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - RUIM not loaded"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 980
    :cond_6
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v6, v7, :cond_7

    .line 982
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - concurrentVoiceAndData not allowed and state= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 986
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v6

    if-nez v6, :cond_8

    if-eqz v5, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - Roaming"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 988
    :cond_8
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VZW_GLOBAL_ROAMING_CONFIG()Z

    move-result v6

    if-eqz v6, :cond_9

    if-eqz v5, :cond_9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - VZW global roaming"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 989
    :cond_9
    if-nez v2, :cond_a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - mInternalDataEnabled= false"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 990
    :cond_a
    if-nez v1, :cond_b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - desiredPowerState= false"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 991
    :cond_b
    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingRestartRadio:Z

    if-eqz v6, :cond_c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - mPendingRestartRadio= true"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 992
    :cond_c
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/CDMAPhone;->needsOtaServiceProvisioning()Z

    move-result v6

    if-eqz v6, :cond_d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - needs Provisioning"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 993
    :cond_d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Data not allowed due to"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 995
    .end local v4           #reason:Ljava/lang/String;
    :cond_e
    return v0

    .line 918
    .end local v0           #allowed:Z
    .end local v1           #desiredPowerState:Z
    .end local v2           #internalDataEnabled:Z
    .end local v3           #psState:I
    .end local v5           #roaming:Z
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 929
    .restart local v2       #internalDataEnabled:Z
    .restart local v3       #psState:I
    .restart local v5       #roaming:Z
    :cond_f
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcGetCDMADataRoamingState()Z

    move-result v5

    goto/16 :goto_0

    :cond_10
    move v5, v7

    .line 932
    goto/16 :goto_1

    .restart local v1       #desiredPowerState:Z
    :cond_11
    move v0, v7

    .line 942
    goto/16 :goto_2
.end method

.method public isDataConnectionAsDesired()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 861
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcGetCDMADataRoamingState()Z

    move-result v0

    .line 863
    .local v0, roaming:Z
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v2, :cond_1

    .line 878
    :cond_0
    :goto_0
    return v1

    .line 865
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isNVReady()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccRecords;->getRecordsLoaded()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->IgnoreCDMAReadyState()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcGetCDMADataConnectionState()I

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    iget-boolean v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z

    if-nez v2, :cond_0

    .line 876
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v2, v3, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isDataPossible(Ljava/lang/String;)Z
    .locals 3
    .parameter "apnType"

    .prologue
    .line 1162
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isDataAllowed()Z

    move-result v0

    .line 1164
    .local v0, possible:Z
    if-nez v0, :cond_0

    .line 1165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data not possible.  No coverage: dataState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1167
    :cond_0
    return v0
.end method

.method public isDisconnected()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3464
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v4, :cond_3

    .line 3465
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 3466
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isDisconnected()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3474
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    return v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    move v2, v3

    .line 3472
    goto :goto_0

    .line 3474
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v4, v5, :cond_1

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 3553
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaDCT] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3554
    return-void
.end method

.method protected logEnabledApnStatus()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x11

    .line 3670
    new-array v1, v3, [B

    .line 3671
    .local v1, status:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 3672
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x31

    :goto_1
    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 3671
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3672
    :cond_0
    const/16 v2, 0x30

    goto :goto_1

    .line 3674
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 5410
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaDataConnectionTracker] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5411
    return-void
.end method

.method protected needToDeferUserIntention()Z
    .locals 1

    .prologue
    .line 5630
    const/4 v0, 0x1

    return v0
.end method

.method protected notifyOffApnsOfAvailability(Ljava/lang/String;)V
    .locals 6
    .parameter "reason"

    .prologue
    .line 4238
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v2, :cond_2

    .line 4239
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 4240
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyOffApnOfAvailability type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4242
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz p1, :cond_0

    move-object v2, p1

    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 4247
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyOffApnsOfAvailability skipped apn due to isReady==false: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4253
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 4255
    :cond_3
    return-void
.end method

.method protected onCWRegStateChanged(I)V
    .locals 6
    .parameter "status"

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x65

    const/4 v3, 0x0

    .line 5415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCCW]cw reg status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5417
    iget v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCwRegState:I

    if-ne v1, v4, :cond_2

    if-eq p1, v4, :cond_0

    const/16 v1, 0x69

    if-ne p1, v1, :cond_2

    .line 5421
    :cond_0
    const-string v1, "[HTCCW]already receive REGISTER_SUCC, ignore REGISTER_SUCC and REGISTERING."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5447
    :cond_1
    :goto_0
    return-void

    .line 5425
    :cond_2
    iput p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCwRegState:I

    .line 5429
    iput-boolean v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSipInviteOK:Z

    .line 5431
    iget v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCwRegState:I

    if-ne v1, v4, :cond_3

    .line 5432
    const-string v1, "[HTCCW]device is registered to cw server, triggering htc c+w datacall"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5433
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setSipFlag(Z)V

    .line 5435
    const-string v1, "[HTCCW]reset sip invite retry timer"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5436
    iput v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSipInviteRetryTimes:I

    .line 5438
    const v1, 0x4202a

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5439
    .local v0, msg:Landroid/os/Message;
    iput v5, v0, Landroid/os/Message;->arg1:I

    .line 5440
    iput v3, v0, Landroid/os/Message;->arg2:I

    .line 5441
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 5442
    .end local v0           #msg:Landroid/os/Message;
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getSipFlag()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5443
    const-string v1, "[HTCCW]deivce is not registered to cw server, deactivate htc c+w datacall"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5444
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onSetHtcCWDataEnabled(Z)V

    goto :goto_0
.end method

.method protected onCWWifiStateChanged(Z)V
    .locals 2
    .parameter "connected"

    .prologue
    const/4 v1, 0x0

    .line 5451
    if-eqz p1, :cond_0

    .line 5452
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsCwSsidConnected:Z

    .line 5467
    :goto_0
    return-void

    .line 5458
    :cond_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSipInviteOK:Z

    .line 5459
    const/16 v0, 0x66

    iput v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCwRegState:I

    .line 5461
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getSipFlag()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5462
    const-string v0, "[HTCCW]c+w SSID is disconnected, deactivate htc c+w datacall"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5463
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onSetHtcCWDataEnabled(Z)V

    .line 5466
    :cond_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsCwSsidConnected:Z

    goto :goto_0
.end method

.method protected onCleanUpAllConnections(Ljava/lang/String;)V
    .locals 2
    .parameter "cause"

    .prologue
    .line 2916
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;Z)V

    .line 2917
    return-void
.end method

.method protected onCleanUpConnection(ZILjava/lang/String;)V
    .locals 3
    .parameter "tearDown"
    .parameter "apnId"
    .parameter "reason"

    .prologue
    .line 2893
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v1, :cond_1

    .line 2894
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 2895
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v0, :cond_0

    .line 2896
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    .line 2897
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnectionByApnContext(ZLcom/android/internal/telephony/ApnContext;)V

    .line 2910
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_0
    :goto_0
    return-void

    .line 2900
    :cond_1
    if-eqz p3, :cond_2

    const-string v1, "radioTurnedOff"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2902
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcRequireDisconnect_disablingApn(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2904
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCleanUpConnection not accepted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->logEnabledApnStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2908
    :cond_3
    const/4 v1, 0x3

    if-ne p2, v1, :cond_4

    const/4 v1, 0x1

    :goto_1
    invoke-direct {p0, p1, p3, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;Z)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected onCwSip(I)V
    .locals 7
    .parameter "type"

    .prologue
    const/4 v5, 0x1

    .line 5546
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCCW]onCwSip(), type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5548
    iget v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCwRegState:I

    const/16 v4, 0x65

    if-eq v3, v4, :cond_1

    .line 5549
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCCW]CW server is not connected, drop sip request:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5602
    :cond_0
    :goto_0
    return-void

    .line 5553
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRemoteService:Lcom/htc/cw/ICWService;

    if-nez v3, :cond_3

    .line 5554
    const-string v3, "[HTCCW]mRemoteService == null"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5556
    if-ne p1, v5, :cond_2

    .line 5557
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.ACTION_CW_SIP_INVITE_RESULT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5558
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "cw_sip_invite_result"

    const/16 v4, 0xca

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5559
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 5563
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.htc.cw.CWService"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRemoteConnection:Landroid/content/ServiceConnection;

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    .line 5564
    .local v2, ret:Z
    if-nez v2, :cond_0

    .line 5565
    const-string v3, "CDMA"

    const-string v4, "[HTCCW]fail to bind to CW service for SIP operation"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5567
    .end local v2           #ret:Z
    :catch_0
    move-exception v0

    .line 5568
    .local v0, e:Ljava/lang/SecurityException;
    const-string v3, "CDMA"

    const-string v4, "[HTCCW]no permission to bind CW service"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5574
    .end local v0           #e:Ljava/lang/SecurityException;
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 5599
    const-string v3, "[HTCCW]unknow SIP request type"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5576
    :pswitch_0
    const-string v3, "[HTCCW]calling SIP invite"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5578
    :try_start_1
    iget v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSipInviteRetryTimes:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSipInviteRetryTimes:I

    .line 5579
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRemoteService:Lcom/htc/cw/ICWService;

    invoke-interface {v3}, Lcom/htc/cw/ICWService;->invite()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 5580
    :catch_1
    move-exception v0

    .line 5581
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "[HTCCW]exception raised when calling SIP invite"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5582
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 5587
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSipInviteOK:Z

    .line 5589
    const-string v3, "[HTCCW]calling SIP bye"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5591
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRemoteService:Lcom/htc/cw/ICWService;

    invoke-interface {v3}, Lcom/htc/cw/ICWService;->bye()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 5592
    :catch_2
    move-exception v0

    .line 5593
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v3, "[HTCCW]exception raised when calling SIP bye"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5594
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 5574
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDataSetupComplete(Landroid/os/AsyncResult;)V
    .locals 13
    .parameter "ar"

    .prologue
    const/4 v12, 0x0

    const v9, 0x7fffffff

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2484
    const/4 v5, 0x0

    .line 2486
    .local v5, reason:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2488
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mCdmaPhone.mHtcRadio.hasFlightModeRequested():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/HtcRadio;->hasFlightModeRequested()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2489
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/HtcRadio;->hasFlightModeRequested()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2490
    const-string v7, "hasFlightModeRequested, do not update the data state"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2653
    :cond_0
    :goto_0
    return-void

    .line 2494
    :cond_1
    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v7, :cond_5

    .line 2495
    iget-object v7, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v7, v7, Lcom/android/internal/telephony/ApnContext;

    if-eqz v7, :cond_4

    .line 2496
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 2507
    .restart local v0       #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isDataSetupCompleteOk(Landroid/os/AsyncResult;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcAddRouting()V

    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v7, :cond_6

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->updateApnProxyInfo(Lcom/android/internal/telephony/ApnContext;)V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->updatePreferredApn(Lcom/android/internal/telephony/ApnContext;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyFirewallDataSetupComplete()V
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDefaultData(Lcom/android/internal/telephony/ApnContext;)V

    :goto_2
    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->UpdateDataRoamingSound(Z)V

    :goto_3
    iget-boolean v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mdeferCWDataCall:Z

    if-ne v7, v11, :cond_0

    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isCWDataConnectionSupported()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2641
    iput-boolean v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mdeferCWDataCall:Z

    .line 2643
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/DataConnectionAc;

    invoke-virtual {v7}, Lcom/android/internal/telephony/DataConnectionAc;->getCidSync()I

    move-result v4

    .line 2644
    .local v4, mcid:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCCW] current cid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2645
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v7, v8, :cond_0

    const/16 v7, 0xa0

    if-ne v4, v7, :cond_3

    iget-boolean v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDeferCWIntention:Z

    if-nez v7, :cond_0

    .line 2649
    :cond_3
    const-string v7, "cwFeatureChange"

    invoke-direct {p0, v11, v7, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;Z)V

    goto :goto_0

    .line 2498
    .end local v4           #mcid:I
    :cond_4
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "onDataSetupComplete: No apnContext"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2501
    :cond_5
    iget-object v7, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v7, v7, Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 2502
    iget-object v5, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v5           #reason:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .restart local v5       #reason:Ljava/lang/String;
    goto :goto_1

    .line 2518
    :cond_6
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDefaultData(Ljava/lang/String;)V

    goto :goto_2

    .line 2532
    :cond_7
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    sget-object v8, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Idle:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/cdma/HtcRadio;->updateDataState(Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;)V

    .line 2533
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    sget-object v8, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->haveDataNetworkState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 2535
    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/DataConnection$FailCause;

    move-object v2, v7

    check-cast v2, Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 2536
    .local v2, cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Data Connection setup failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2547
    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v7, :cond_f

    .line 2549
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isCWDataConnectionSupported()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 2551
    iput-boolean v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSipInviteOK:Z

    .line 2558
    :cond_8
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 2559
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getWaitingApnsPermFailCount()I

    move-result v7

    if-nez v7, :cond_b

    .line 2561
    const-string v7, "onDataSetupComplete: All APN\'s had permanent failures, stop retrying"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2563
    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 2565
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "default"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    sget-object v7, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq v2, v7, :cond_9

    sget-object v7, Lcom/android/internal/telephony/DataConnection$FailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-ne v2, v7, :cond_a

    .line 2568
    :cond_9
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v8, "datt not subcribed"

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 2575
    :goto_4
    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 2576
    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    .line 2579
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcTryPendingEnabled(Lcom/android/internal/telephony/ApnContext;)V

    .line 2584
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/ApnSetting;

    iget-object v1, v7, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2588
    .local v1, apnString:Ljava/lang/String;
    :goto_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onDataSetupComplete: permanent error apn=%s"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2612
    .end local v1           #apnString:Ljava/lang/String;
    :goto_6
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcUpdateConnectedProp()V

    goto/16 :goto_3

    .line 2572
    :cond_a
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v8, "apnFailed"

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 2585
    :catch_0
    move-exception v3

    .line 2586
    .local v3, e:Ljava/lang/Exception;
    const-string v1, "<unknown>"

    .restart local v1       #apnString:Ljava/lang/String;
    goto :goto_5

    .line 2591
    .end local v1           #apnString:Ljava/lang/String;
    .end local v3           #e:Ljava/lang/Exception;
    :cond_b
    const-string v7, "onDataSetupComplete: Not all permanent failures, retry"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2593
    const/4 v6, -0x1

    .line 2594
    .local v6, retryOverride:I
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v7, v7, Lcom/android/internal/telephony/DataConnection$CallSetupException;

    if-eqz v7, :cond_c

    .line 2595
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v7, Lcom/android/internal/telephony/DataConnection$CallSetupException;

    invoke-virtual {v7}, Lcom/android/internal/telephony/DataConnection$CallSetupException;->getRetryOverride()I

    move-result v6

    .line 2598
    :cond_c
    if-ne v6, v9, :cond_d

    .line 2599
    const-string v7, "No retry is suggested."

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_6

    .line 2601
    :cond_d
    invoke-direct {p0, v2, v0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startDelayedRetry(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/ApnContext;I)V

    goto :goto_6

    .line 2605
    .end local v6           #retryOverride:I
    :cond_e
    const-string v7, "onDataSetupComplete: Try next APN"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2606
    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 2609
    sget v7, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->APN_DELAY_MILLIS:I

    invoke-direct {p0, v7, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startAlarmForReconnect(ILcom/android/internal/telephony/ApnContext;)V

    goto :goto_6

    .line 2615
    :cond_f
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->forceAlwaysRetryDelay()I

    move-result v7

    if-gez v7, :cond_10

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnection$FailCause;->isPermanentFail()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 2618
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;)V

    .line 2622
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v7}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    .line 2623
    const-string v7, "apnFailed"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2628
    :cond_10
    const/4 v6, -0x1

    .line 2629
    .restart local v6       #retryOverride:I
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v7, v7, Lcom/android/internal/telephony/DataConnection$CallSetupException;

    if-eqz v7, :cond_11

    .line 2630
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v7, Lcom/android/internal/telephony/DataConnection$CallSetupException;

    invoke-virtual {v7}, Lcom/android/internal/telephony/DataConnection$CallSetupException;->getRetryOverride()I

    move-result v6

    .line 2633
    :cond_11
    if-ne v6, v9, :cond_12

    .line 2634
    const-string v7, "No retry is suggested."

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2636
    :cond_12
    invoke-direct {p0, v2, v5, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startDelayedRetry(Lcom/android/internal/telephony/DataConnection$FailCause;Ljava/lang/String;I)Z

    goto/16 :goto_3
.end method

.method protected onDataStateChanged(Landroid/os/AsyncResult;)V
    .locals 12
    .parameter "ar"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 3019
    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    move-object v2, v7

    check-cast v2, Ljava/util/ArrayList;

    .line 3021
    .local v2, dataCallStates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataCallState;>;"
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_1

    .line 3157
    :cond_0
    :goto_0
    return-void

    .line 3028
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 3029
    const/4 v5, 0x0

    .line 3030
    .local v5, isActiveOrDormantConnectionPresent:Z
    const/4 v1, 0x0

    .line 3034
    .local v1, connectionState:I
    const/4 v4, 0x0

    .local v4, index:I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_2

    .line 3035
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/DataCallState;

    iget v1, v7, Lcom/android/internal/telephony/DataCallState;->active:I

    .line 3036
    if-eqz v1, :cond_3

    .line 3037
    const/4 v5, 0x1

    .line 3042
    :cond_2
    if-nez v5, :cond_4

    .line 3044
    const-string v7, "onDataStateChanged: No active connectionstate is CONNECTED, disconnecting/cleanup"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3046
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcDelRouting()V

    .line 3047
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->writeEventLogCdmaDataDrop()V

    .line 3048
    invoke-direct {p0, v9, v8, v11}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;Z)V

    goto :goto_0

    .line 3034
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3052
    :cond_4
    packed-switch v1, :pswitch_data_0

    .line 3081
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onDataStateChanged: IGNORE unexpected DataCallState.active="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3054
    :pswitch_0
    const-string v7, "onDataStateChanged: active=LINK_ACTIVE && CONNECTED, ignore"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3055
    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    iput-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 3057
    monitor-enter p0

    .line 3058
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaDataActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    if-eqz v7, :cond_5

    .line 3059
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaDataActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    iput-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 3060
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaDataActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 3062
    :cond_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3064
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    .line 3066
    monitor-enter p0

    .line 3067
    const/4 v7, 0x0

    :try_start_1
    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaDataActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 3068
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3070
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startNetStatPoll()V

    goto :goto_0

    .line 3062
    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 3068
    :catchall_1
    move-exception v7

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v7

    .line 3074
    :pswitch_1
    const-string v7, "onDataStateChanged active=LINK_DOWN && CONNECTED, dormant"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3075
    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DORMANT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    iput-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 3076
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    .line 3077
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->stopNetStatPoll()V

    goto/16 :goto_0

    .line 3087
    .end local v1           #connectionState:I
    .end local v4           #index:I
    .end local v5           #isActiveOrDormantConnectionPresent:Z
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onDataStateChanged: not connected, state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ignoring"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3089
    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    iput-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 3090
    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaDataActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 3097
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcModemLink:Lcom/android/internal/telephony/cdma/HtcModemLink;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcModemLink:Lcom/android/internal/telephony/cdma/HtcModemLink;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/HtcModemLink;->isModemLinkOn()Z

    move-result v7

    if-nez v7, :cond_0

    .line 3099
    :cond_7
    sget-object v7, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$3;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$State:[I

    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnectionTracker$State;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_1

    goto/16 :goto_0

    .line 3103
    :pswitch_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v7, v9, :cond_0

    .line 3104
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/DataCallState;

    iget v7, v7, Lcom/android/internal/telephony/DataCallState;->active:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 3105
    const/4 v3, 0x0

    .line 3106
    .local v3, deactiveData:Z
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/DataCallState;

    iget v0, v7, Lcom/android/internal/telephony/DataCallState;->cid:I

    .line 3107
    .local v0, cid:I
    const-string v8, "CDMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "clear unexpected connection "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", rty="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v7}, Lcom/android/internal/telephony/DataConnection;->getRetryCount()I

    move-result v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", lnkErr="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaDataLinkError:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3110
    iput-boolean v11, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcCdmaDataLinkError:Z

    .line 3111
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mReasonInPendingIntent:Ljava/lang/String;

    .line 3112
    .local v6, reason:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v7}, Lcom/android/internal/telephony/DataConnection;->getRetryCount()I

    move-result v7

    if-eqz v7, :cond_a

    .line 3114
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v8, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v7, v8, :cond_8

    .line 3117
    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    iput-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    .line 3121
    :cond_8
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 3122
    const/4 v3, 0x1

    .line 3130
    :cond_9
    :goto_2
    if-eqz v3, :cond_0

    .line 3137
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingDataConnection:Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    if-eqz v7, :cond_b

    .line 3139
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingDataConnection:Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    const-string v8, "linkPropertiesChanged"

    const v9, 0x4200f

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingDataConnection:Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->getDataConnectionId()I

    move-result v10

    invoke-virtual {p0, v9, v10, v11, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->tearDown(Ljava/lang/String;Landroid/os/Message;)V

    .line 3148
    :goto_3
    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    goto/16 :goto_0

    .line 3127
    :cond_a
    const/4 v3, 0x1

    goto :goto_2

    .line 3144
    :cond_b
    const-string v7, "mPendingDataConnection is null , ignore disconnect request"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 3052
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 3099
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected onDisconnectDone(ILandroid/os/AsyncResult;)V
    .locals 10
    .parameter "connId"
    .parameter "ar"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 2661
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT_DISCONNECT_DONE connId="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2662
    const/4 v2, 0x0

    .line 2663
    .local v2, reason:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2664
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v5, :cond_8

    .line 2665
    iget-object v5, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v5, v5, Lcom/android/internal/telephony/ApnContext;

    if-eqz v5, :cond_7

    .line 2666
    iget-object v0, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 2685
    .restart local v0       #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    sget-object v8, Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;->Disconnected:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/cdma/HtcRadio;->updateDataState(Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;)V

    .line 2686
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    sget-object v8, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->haveDataNetworkState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 2687
    if-eqz v2, :cond_1

    const-string v5, "dataDisabled"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2688
    monitor-enter p0

    .line 2689
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v8, v5, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    const-string v5, "default"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcGetAnyDataEnabled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getMobileDataSettingEnabled()Z

    move-result v5

    if-eqz v5, :cond_9

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->haveMobileAllowStatusChange(Z)V

    .line 2691
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2692
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->reEnableGuardDialog(Z)V

    .line 2695
    :cond_1
    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v5, :cond_b

    .line 2700
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->INITING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v5, v6, :cond_a

    .line 2701
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 2711
    :goto_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isCWDataConnectionSupported()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2712
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getOverallState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v5, v6, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getOverallState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v5, v6, :cond_3

    .line 2714
    :cond_2
    iget-boolean v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSipInviteOK:Z

    if-eqz v5, :cond_3

    .line 2715
    const-string v5, "[HTCCW]an c+w datacall is deactivated, calling SIP \"bye\" to finish SIP process"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2716
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onCwSip(I)V

    .line 2723
    :cond_3
    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v5, :cond_4

    .line 2725
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcUpdateConnectedProp()V

    .line 2731
    :cond_4
    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingRestartRadio:Z

    if-eqz v5, :cond_5

    const v5, 0x4201a

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->removeMessages(I)V

    .line 2733
    :cond_5
    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v5, :cond_c

    .line 2734
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 2737
    :goto_3
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 2742
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v3, v5, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    .line 2743
    .local v3, ssTracker:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->processPendingRadioPowerOffAfterDataOff()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2744
    iput-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingRestartRadio:Z

    .line 2745
    const-string v5, "ssTracker.processPendingRadioPowerOffAfterDataOff()is true"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2747
    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v5, :cond_e

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->INITING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v5, v6, :cond_e

    .line 2750
    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/ApnContext;->setApnSetting(Lcom/android/internal/telephony/ApnSetting;)V

    .line 2751
    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 2752
    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    .line 2755
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->UpdateDataRoamingSound(Z)V

    .line 2832
    .end local v3           #ssTracker:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
    :cond_6
    :goto_4
    return-void

    .line 2668
    :cond_7
    const-string v5, "Invalid ar in onDisconnectDone"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->loge(Ljava/lang/String;)V

    goto :goto_4

    .line 2672
    :cond_8
    iget-object v5, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 2673
    iget-object v2, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v2           #reason:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2       #reason:Ljava/lang/String;
    goto/16 :goto_0

    :cond_9
    move v5, v7

    .line 2689
    goto/16 :goto_1

    .line 2691
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 2703
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " avoid npe, ignore setState IDLE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2706
    :cond_b
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    goto/16 :goto_2

    .line 2736
    :cond_c
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    goto :goto_3

    .line 2760
    .restart local v3       #ssTracker:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
    :cond_d
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onRestartRadio()V

    .line 2763
    :cond_e
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcDelRouting()V

    .line 2772
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->UpdateDataRoamingSound(Z)V

    .line 2775
    iput-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    .line 2776
    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v5, :cond_14

    .line 2778
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->dumpSwitchApnRecord()V

    .line 2779
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isSwitchOff(Lcom/android/internal/telephony/ApnContext;)Z

    move-result v5

    if-nez v5, :cond_f

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->retryAfterDisconnected(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2781
    const-string v5, "gsm.defaultpdpcontext.active"

    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2785
    sget v5, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->APN_DELAY_MILLIS:I

    invoke-direct {p0, v5, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startAlarmForReconnect(ILcom/android/internal/telephony/ApnContext;)V

    .line 2815
    :goto_5
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->pendingAC:Lcom/android/internal/telephony/ApnContext;

    if-eqz v5, :cond_13

    .line 2816
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDisconnectDone: trySetupData for pending "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->pendingAC:Lcom/android/internal/telephony/ApnContext;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2819
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->pendingAC:Lcom/android/internal/telephony/ApnContext;

    invoke-virtual {v5}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    .line 2821
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->pendingAC:Lcom/android/internal/telephony/ApnContext;

    invoke-virtual {v5}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    goto/16 :goto_4

    .line 2788
    :cond_f
    const-string v5, "clean (switchoff\'s) apn/dc/dcac"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2789
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSwitchApnRecord:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$HtcSwitchApnRecord;->switchOffACs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_10
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/ApnContext;

    .line 2790
    .local v4, switched:Lcom/android/internal/telephony/ApnContext;
    if-eq v4, v0, :cond_10

    .line 2791
    invoke-virtual {v4, v9}, Lcom/android/internal/telephony/ApnContext;->setApnSetting(Lcom/android/internal/telephony/ApnSetting;)V

    .line 2792
    invoke-virtual {v4, v9}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 2793
    invoke-virtual {v4, v9}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    goto :goto_6

    .line 2803
    .end local v4           #switched:Lcom/android/internal/telephony/ApnContext;
    :cond_11
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->INITING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v5, v6, :cond_12

    .line 2804
    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/ApnContext;->setApnSetting(Lcom/android/internal/telephony/ApnSetting;)V

    .line 2805
    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 2806
    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    goto :goto_5

    .line 2808
    :cond_12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " avoid npe, ignore clean apn/dc/dcac"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2823
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_13
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcTryPendingEnabled(Lcom/android/internal/telephony/ApnContext;)V

    goto/16 :goto_4

    .line 2827
    :cond_14
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->retryAfterDisconnected(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2829
    sget v5, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->APN_DELAY_MILLIS:I

    invoke-direct {p0, v5, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startAlarmForReconnect(ILjava/lang/String;)V

    goto/16 :goto_4
.end method

.method protected onEnableApn(II)V
    .locals 4
    .parameter "apnId"
    .parameter "enabled"

    .prologue
    const/4 v1, 0x1

    .line 4369
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v2, :cond_2

    .line 4370
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 4371
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-nez v0, :cond_0

    .line 4372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnableApn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): NO ApnContext"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->loge(Ljava/lang/String;)V

    .line 4383
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :goto_0
    return-void

    .line 4376
    .restart local v0       #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEnableApn: apnContext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " call applyNewState"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 4377
    if-ne p2, v1, :cond_1

    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDependencyMet()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->applyNewState(Lcom/android/internal/telephony/ApnContext;ZZ)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 4380
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/DataConnectionTracker;->onEnableApn(II)V

    goto :goto_0
.end method

.method protected onEnableNewApn()V
    .locals 3

    .prologue
    .line 2054
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isCWDataConnectionSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2056
    const-string v1, "[HTCCW]reset sip invite retry timer"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2057
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSipInviteRetryTimes:I

    .line 2062
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    .line 2063
    const-string v1, "dataEnabled"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onTrySetupData(Ljava/lang/String;)Z

    move-result v0

    .line 2064
    .local v0, setupResult:Z
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 2065
    if-nez v0, :cond_1

    .line 2066
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    const-string v2, "psRestrictDisabled"

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->broadcastDisconnectedForApns(Ljava/lang/String;Ljava/lang/String;)V

    .line 2068
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRequestedNewApn:Ljava/lang/String;

    .line 2071
    :cond_2
    return-void
.end method

.method protected onNVReady()V
    .locals 2

    .prologue
    .line 2028
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRadioAvaliable:Z

    .line 2029
    const-string v0, "CDMA"

    const-string v1, "onNVReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_0

    .line 2032
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 2034
    :cond_0
    const v0, 0x42003

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 2035
    return-void
.end method

.method protected onRadioAvailable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRadioAvaliable:Z

    .line 2292
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2295
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-nez v0, :cond_0

    .line 2296
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 2298
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 2300
    const-string v0, "We\'re on the simulator; assuming data is connected"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2306
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcNotifyAvailability(Ljava/lang/String;)V

    .line 2310
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getOverallState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v0, v1, :cond_2

    .line 2311
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 2315
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2316
    const v0, 0x42003

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 2319
    :cond_3
    return-void
.end method

.method protected onRadioOffOrNotAvailable()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2328
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRadioAvaliable:Z

    .line 2330
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    .line 2332
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2335
    const-string v0, "We\'re on the simulator; assuming radio off is meaningless"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2340
    :goto_0
    return-void

    .line 2337
    :cond_0
    const-string v0, "Radio is off and clean up all connection"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2338
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onRadioTechChanged()V
    .locals 1

    .prologue
    .line 5323
    const-string v0, "CDMA onRadioTechChanged"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5324
    const-string v0, "RadioTechChange"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 5325
    return-void
.end method

.method protected onRecordsLoaded()V
    .locals 3

    .prologue
    .line 2008
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mHtcRadioAvaliable:Z

    .line 2010
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v0, :cond_0

    .line 2012
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CDMADCT onRecordsLoaded : state= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    const-string v0, "onRecordsLoaded: createAllApnList"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2015
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->createAllApnList()V

    .line 2016
    const-string v0, "simLoaded"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setupDataOnReadyApns(Ljava/lang/String;)V

    .line 2023
    :goto_0
    return-void

    .line 2018
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_1

    .line 2019
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 2021
    :cond_1
    const v0, 0x42003

    const-string v1, "simLoaded"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected onRoamingOff()V
    .locals 1

    .prologue
    .line 2166
    const-string v0, "Roaming Off"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mGlobalDataRoaming:Z

    .line 2170
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VZW_GLOBAL_ROAMING_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2171
    const-string v0, "globalRoamingOff"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    .line 2183
    :goto_0
    return-void

    .line 2173
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2176
    const-string v0, "roamingOff"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcNotifyAvailability(Ljava/lang/String;)V

    .line 2178
    const-string v0, "roamingOff"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    goto :goto_0

    .line 2180
    :cond_1
    const-string v0, "roamingOff"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onRoamingOn()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2190
    const-string v0, "Roaming On"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2192
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->IgnoreRUIMCardReadyInTestVersion:Z

    if-eqz v0, :cond_0

    .line 2194
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onRecordsLoaded()V

    .line 2197
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VZW_GLOBAL_ROAMING_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2199
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mEriIndicator:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isExtendedNetwork(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2200
    const-string v0, "Extended Network, consider it as none-roaming"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2201
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mGlobalDataRoaming:Z

    .line 2206
    :goto_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mGlobalDataRoaming:Z

    if-eqz v0, :cond_4

    .line 2207
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getGlobalDataRoamingOption()I

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2208
    :cond_1
    const-string v0, "Tear down data connection on global roaming."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2209
    const-string v0, "globalRoamingOn"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;Z)V

    .line 2233
    :cond_2
    :goto_1
    return-void

    .line 2203
    :cond_3
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mGlobalDataRoaming:Z

    goto :goto_0

    .line 2212
    :cond_4
    const-string v0, "the global data roaming is enabled"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2213
    const-string v0, "globalRoamingOn"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    goto :goto_1

    .line 2219
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->blockedByDataRoamGuard()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2221
    :cond_6
    const-string v0, "roamingOn"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    .line 2222
    const-string v0, "roamingOn"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    goto :goto_1

    .line 2224
    :cond_7
    const-string v0, "Tear down data connection on roaming."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2225
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 2228
    const-string v0, "roamingOn"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcNotifyAvailability(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onSetDependencyMet(Ljava/lang/String;Z)V
    .locals 3
    .parameter "apnType"
    .parameter "met"

    .prologue
    .line 3951
    const-string v1, "hipri"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3965
    :cond_0
    :goto_0
    return-void

    .line 3953
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 3954
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-nez v0, :cond_2

    .line 3955
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetDependencyMet: ApnContext not found in onSetDependencyMet("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 3959
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->applyNewState(Lcom/android/internal/telephony/ApnContext;ZZ)V

    .line 3960
    const-string v1, "default"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3962
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "hipri"

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 3963
    .restart local v0       #apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->applyNewState(Lcom/android/internal/telephony/ApnContext;ZZ)V

    goto :goto_0
.end method

.method public onSetHtcCWDataEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 5498
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onSetHtcCWDataEnabled(ZZ)V

    .line 5499
    return-void
.end method

.method public onSetHtcCWDataEnabled(ZZ)V
    .locals 6
    .parameter "enable"
    .parameter "reconnect"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5503
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getOverallState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v1

    .line 5504
    .local v1, dataState:Lcom/android/internal/telephony/DataConnectionTracker$State;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCCW]onSetHtcCWDataEnabled: enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5506
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->needToDeferUserIntention()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->INITING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v1, v2, :cond_2

    .line 5507
    :cond_0
    iput-boolean v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mdeferCWDataCall:Z

    .line 5508
    iput-boolean p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDeferCWIntention:Z

    .line 5509
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCCW]onSetHtcCWDataEnabled: state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", defer cwDataCallRequest, intention is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5542
    :cond_1
    :goto_0
    return-void

    .line 5514
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCCW]onSetHtcCWDataEnabled: state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5515
    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v1, v2, :cond_3

    .line 5516
    const-string v2, "[HTCCW]onSetHtcCWDataEnabled: state=State.FAILED, clean up data connection now"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5517
    const-string v2, "cwFeatureChange"

    invoke-direct {p0, v4, v2, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;Z)V

    .line 5518
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    .line 5519
    const v2, 0x42003

    const-string v3, "cwFeatureChange"

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 5520
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v1, v2, :cond_4

    .line 5521
    const-string v2, "[HTCCW]onSetHtcCWDataEnabled: state=State.CONNECTED, clean up data connection now"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5522
    const-string v2, "cwFeatureChange"

    invoke-direct {p0, v5, v2, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;Z)V

    goto :goto_0

    .line 5523
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v1, v2, :cond_1

    .line 5524
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 5525
    const-string v2, "[HTCCW]onSetHtcCWDataEnabled: state=State.IDLE, retry setup data connection now"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5527
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setSipFlag(Z)V

    .line 5528
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 5530
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    const-string v2, "cwFeatureChange"

    invoke-direct {p0, v2, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;Z)Z

    goto :goto_0

    .line 5532
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_5
    const-string v2, "[HTCCW]onSetHtcCWDataEnabled: state=State.IDLE, setup data connection now"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 5533
    if-nez p1, :cond_6

    .line 5534
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setSipFlag(Z)V

    .line 5536
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 5538
    .restart local v0       #apnContext:Lcom/android/internal/telephony/ApnContext;
    const-string v2, "cwFeatureChange"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method protected onTrySetupData(Lcom/android/internal/telephony/ApnContext;)Z
    .locals 2
    .parameter "apnContext"

    .prologue
    .line 3919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrySetupData: apnContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3920
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Lcom/android/internal/telephony/ApnContext;)Z

    move-result v0

    return v0
.end method

.method protected onTrySetupData(Ljava/lang/String;)Z
    .locals 5
    .parameter "reason"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 2124
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isCWDataConnectionSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2126
    iput v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSipInviteRetryTimes:I

    .line 2131
    :cond_0
    if-eqz p1, :cond_3

    const-string v2, "dataEnabled"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 2132
    .local v0, enableDataByUser:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 2133
    monitor-enter p0

    .line 2134
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    iget-boolean v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserDataEnabled:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getMobileDataSettingEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v1

    :goto_1
    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->haveMobileAllowStatusChange(Z)V

    .line 2136
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2138
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v2, :cond_5

    .line 2139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTrySetupData: reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2140
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setupDataOnReadyApns(Ljava/lang/String;)V

    .line 2156
    :cond_2
    :goto_2
    return v1

    .end local v0           #enableDataByUser:Z
    :cond_3
    move v0, v3

    .line 2131
    goto :goto_0

    .restart local v0       #enableDataByUser:Z
    :cond_4
    move v2, v3

    .line 2134
    goto :goto_1

    .line 2136
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2143
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v2, v4, :cond_6

    .line 2144
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    .line 2145
    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 2148
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    move-result v1

    .line 2150
    .local v1, result:Z
    if-nez v1, :cond_2

    .line 2151
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->findFreeDataConnection()Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnection;->getRetryCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 2153
    const-string v2, "dataConnectionDenied"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected onVoiceCallEnded()V
    .locals 2

    .prologue
    .line 2855
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2856
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2859
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startNetStatPollwithoutResetPollStatus()V

    .line 2861
    const-string v0, "2GVoiceCallEnded"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 2873
    :cond_0
    :goto_0
    const-string v0, "2GVoiceCallEnded"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcNotifyAvailability(Ljava/lang/String;)V

    .line 2888
    :goto_1
    return-void

    .line 2866
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollEnabled:Z

    if-nez v0, :cond_0

    .line 2867
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startNetStatPollwithoutResetPollStatus()V

    goto :goto_0

    .line 2878
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->HtcisAnyTypeEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2880
    const-string v0, "2G voice call end while no enabled"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2881
    const-string v0, "2GVoiceCallEnded"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcNotifyAvailability(Ljava/lang/String;)V

    .line 2884
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    .line 2886
    const-string v0, "2GVoiceCallEnded"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    goto :goto_1
.end method

.method protected onVoiceCallStarted()V
    .locals 1

    .prologue
    .line 2839
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2840
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->stopNetStatPoll()V

    .line 2841
    const-string v0, "2GVoiceCallStarted"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 2844
    const-string v0, "2GVoiceCallStarted"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcNotifyAvailability(Ljava/lang/String;)V

    .line 2848
    :cond_0
    return-void
.end method

.method protected restartDataStallAlarm()V
    .locals 0

    .prologue
    .line 781
    return-void
.end method

.method protected restartRadio()V
    .locals 3

    .prologue
    .line 1716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cleanup connection and wait "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->TIME_DELAYED_TO_RESTART_RADIO:I

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s to restart radio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1718
    const-string v0, "radioTurnedOff"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 1719
    const v0, 0x4201a

    sget v1, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->TIME_DELAYED_TO_RESTART_RADIO:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendEmptyMessageDelayed(IJ)Z

    .line 1720
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingRestartRadio:Z

    .line 1721
    return-void
.end method

.method public setDataOnRoamingEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 3614
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcDataRoamGuard:Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->haveRoamAllowSettingChange(Z)V

    .line 3615
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->setDataOnRoamingEnabled(Z)V

    .line 3616
    return-void
.end method

.method protected setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V
    .locals 4
    .parameter "s"

    .prologue
    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 786
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v0, p1, :cond_0

    .line 787
    const v0, 0xc3c3

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnectionTracker$State;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/android/internal/telephony/DataConnectionTracker$State;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 789
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    .line 791
    :cond_0
    return-void
.end method

.method protected startNetStatPoll()V
    .locals 1

    .prologue
    .line 1676
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollEnabled:Z

    if-nez v0, :cond_0

    .line 1677
    const-string v0, "[DataConnection] Start poll NetStat"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1678
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->resetPollStats()V

    .line 1679
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollEnabled:Z

    .line 1680
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPollNetStat:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1682
    :cond_0
    return-void
.end method

.method protected startNetStatPollwithoutResetPollStatus()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1688
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsRuimCardUsed:Z

    if-eqz v0, :cond_1

    .line 1690
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getOverallState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v0

    if-nez v0, :cond_0

    .line 1691
    const-string v0, "CDMA"

    const-string v1, "[DataConnection] Start poll NetStat without reset poll status"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    iput-boolean v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollEnabled:Z

    .line 1693
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPollNetStat:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1704
    :cond_0
    :goto_0
    return-void

    .line 1698
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollEnabled:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->htcGetCDMADataConnectionState()I

    move-result v0

    if-nez v0, :cond_0

    .line 1699
    const-string v0, "CDMA"

    const-string v1, "[DataConnection] Start poll NetStat without reset poll status"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    iput-boolean v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollEnabled:Z

    .line 1701
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPollNetStat:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method protected stopNetStatPoll()V
    .locals 1

    .prologue
    .line 1709
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollEnabled:Z

    .line 1710
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPollNetStat:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1711
    const-string v0, "[DataConnection] Stop poll NetStat"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1712
    return-void
.end method

.method protected whiteList_Check(Ljava/lang/String;)Z
    .locals 13
    .parameter "requestType"

    .prologue
    const/4 v9, 0x1

    .line 5720
    const/4 v0, 0x0

    .line 5721
    .local v0, allow:Z
    const-string v10, "ro.net.cdma.apnwhitelist"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 5722
    .local v7, wList:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_0

    .line 5724
    const-string v10, "RIL"

    const-string v11, "[whitelist] ro.net.cdma.apnwhitelist is empty"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5725
    const-string v10, "ro.net.apnwhitelist"

    const-string v11, "mms,admin"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 5727
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getMobileDataSettingEnabled()Z

    move-result v5

    .line 5729
    .local v5, setting:Z
    const-string v10, "RIL"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[whitelist] req type="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " white list from prop(have def)="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " setting="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " UserDEed="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserDataEnabled:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5733
    if-ne v5, v9, :cond_1

    .line 5734
    const-string v10, "RIL"

    const-string v11, "[whitelist] setting is true, ignore white list, return true"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5773
    :goto_0
    return v9

    .line 5739
    :cond_1
    const-string v9, "none"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 5740
    const-string v9, "RIL"

    const-string v10, "[whitelist] is none, return false"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5741
    const/4 v9, 0x0

    goto :goto_0

    .line 5747
    :cond_2
    :try_start_0
    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 5763
    .local v8, wTypes:[Ljava/lang/String;
    :goto_1
    move-object v1, v8

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_2
    if-ge v3, v4, :cond_5

    aget-object v6, v1, v3

    .line 5765
    .local v6, type:Ljava/lang/String;
    const-string v9, "default"

    invoke-static {v6, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 5763
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 5748
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #type:Ljava/lang/String;
    .end local v8           #wTypes:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 5749
    .local v2, e:Ljava/lang/Exception;
    const-string v9, "RIL"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[whitelist] got exp when split exp="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5751
    const-string v9, "mms,admin"

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .restart local v8       #wTypes:[Ljava/lang/String;
    goto :goto_1

    .line 5768
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v6       #type:Ljava/lang/String;
    :cond_4
    invoke-static {p1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 5769
    const/4 v0, 0x1

    goto :goto_3

    .line 5772
    .end local v6           #type:Ljava/lang/String;
    :cond_5
    const-string v9, "RIL"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[whitelist] allow="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v0

    .line 5773
    goto :goto_0
.end method
