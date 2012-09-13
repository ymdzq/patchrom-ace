.class public abstract Lcom/android/internal/telephony/DataConnectionTracker;
.super Landroid/os/Handler;
.source "DataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DataConnectionTracker$2;,
        Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;,
        Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;,
        Lcom/android/internal/telephony/DataConnectionTracker$DataRoamingSettingObserver;,
        Lcom/android/internal/telephony/DataConnectionTracker$Activity;,
        Lcom/android/internal/telephony/DataConnectionTracker$State;
    }
.end annotation


# static fields
.field public static ACTION_DATA_CONNECTION_TRACKER_MESSENGER:Ljava/lang/String; = null

.field protected static final ALLOW_ALL_TRIP:I = 0x1

.field protected static final ALLOW_THIS_TRIP:I = 0x2

.field public static final APN_ADMIN_ID:I = 0xa

.field public static final APN_CBS_ID:I = 0x7

.field public static final APN_CMAIL_ID:I = 0xb

.field public static final APN_CMMAIL_ID:I = 0xf

.field public static final APN_DEFAULT_ID:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final APN_DELAY_MILLIS:I = 0x0

.field public static final APN_DUN_ID:I = 0x3

.field public static final APN_ENTITLE_ID:I = 0x9

.field public static final APN_FOTA_ID:I = 0x6

.field public static final APN_HIPRI_ID:I = 0x4

.field public static final APN_HTTPPROXY_ID:I = 0xe

.field public static final APN_IMS_ID:I = 0x5

.field public static final APN_INTERNET_ID:I = 0x8

.field public static final APN_INVALID_ID:I = -0x1

.field public static final APN_MMS_EXT_ID:I = 0x10

.field public static final APN_MMS_ID:I = 0x1

.field public static final APN_NUM_TYPES:I = 0x8

.field public static final APN_OTASP_ID:I = 0xd

.field protected static final APN_RESTORE_DELAY_PROP_NAME:Ljava/lang/String; = "android.telephony.apn-restore"

.field public static final APN_SUPL_ID:I = 0x2

.field public static final APN_TYPE_KEY:Ljava/lang/String; = "apnType"

.field public static final APN_VERIZON_ID:I = 0xc

.field protected static final BASE:I = 0x42000

.field public static final CMD_PRE_SET_DATA_ENABLE:I = 0x42025

.field public static final CMD_SET_DEPENDENCY_MET:I = 0x4201f

.field public static final CMD_SET_POLICY_DATA_ENABLE:I = 0x42020

.field public static final CMD_SET_USER_DATA_ENABLE:I = 0x4201d

.field protected static final CW_INVITE:I = 0x1

.field protected static final CW_SIP_MAX_RETRY:I = 0x1

.field protected static final DATA_STALL_ALARM_AGGRESSIVE_DELAY_IN_MS_DEFAULT:I = 0xea60

.field protected static final DATA_STALL_ALARM_NON_AGGRESSIVE_DELAY_IN_MS_DEFAULT:I = 0x57e40

.field protected static final DATA_STALL_ALARM_TAG_EXTRA:Ljava/lang/String; = "data.stall.alram.tag"

.field protected static final DATA_STALL_NO_RECV_POLL_LIMIT:I = 0x1

.field protected static final DATA_STALL_OCCUR:I = 0x1

.field protected static final DATA_STALL_RECOVER:I = 0x0

.field protected static final DBG:Z = true

.field protected static final DEFALUT_DATA_ON_BOOT_PROP:Ljava/lang/String; = "net.def_data_on_boot"

.field protected static final DEFAULT_DATA_RETRY_CONFIG:Ljava/lang/String; = "default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

.field protected static final DEFAULT_MAX_PDP_RESET_FAIL:I = 0x3

.field protected static final DENY_ROAMING:I = 0x0

.field public static final DISABLED:I = 0x0

.field public static final ENABLED:I = 0x1

.field protected static final EVENT_APN_CHANGED:I = 0x42013

.field protected static final EVENT_CDMA_DATA_DETACHED:I = 0x42014

.field protected static final EVENT_CDMA_LINK_ERROR:I = 0x42023

.field protected static final EVENT_CDMA_OTA_PROVISION:I = 0x42019

.field public static final EVENT_CLEAN_UP_ALL_CONNECTIONS:I = 0x4201e

.field public static final EVENT_CLEAN_UP_CONNECTION:I = 0x42018

.field protected static final EVENT_CW_REG_STATE_CHANGED:I = 0x42028

.field protected static final EVENT_CW_SIP:I = 0x4202b

.field protected static final EVENT_CW_WIFI_STATE_CHANGED:I = 0x42029

.field protected static final EVENT_DATA_CONNECTION_ATTACHED:I = 0x42010

.field protected static final EVENT_DATA_CONNECTION_DETACHED:I = 0x42009

.field protected static final EVENT_DATA_SETUP_COMPLETE:I = 0x42000

.field protected static final EVENT_DATA_STALL_ALARM:I = 0x42011

.field protected static final EVENT_DATA_STATE_CHANGED:I = 0x42004

.field protected static final EVENT_DISCONNECT_DONE:I = 0x4200f

.field protected static final EVENT_DO_RECOVERY:I = 0x42012

.field protected static final EVENT_ENABLE_NEW_APN:I = 0x4200d

.field protected static final EVENT_ERI_UPDATE:I = 0x42027

.field protected static final EVENT_HTCCW_ENABLE:I = 0x4202a

.field protected static final EVENT_HTC_BASE:I = 0x42020

.field public static final EVENT_HTC_DATA_ROAM_NOTIFICATION:I = 0x42022

.field protected static final EVENT_HTC_SWITCH_APN:I = 0x42021

.field protected static final EVENT_ICC_CARD_READY:I = 0x4202c

.field protected static final EVENT_LINK_STATE_CHANGED:I = 0x4200a

.field protected static final EVENT_MODEM_LINK_STATUS_UPDATE:I = 0x42024

.field protected static final EVENT_NV_READY:I = 0x42015

.field protected static final EVENT_POLL_PDP:I = 0x42005

.field protected static final EVENT_PS_RESTRICT_DISABLED:I = 0x42017

.field protected static final EVENT_PS_RESTRICT_ENABLED:I = 0x42016

.field protected static final EVENT_RADIO_AVAILABLE:I = 0x42001

.field protected static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x42006

.field protected static final EVENT_RADIO_TECH_CHANGED:I = 0x4202e

.field protected static final EVENT_RECORDS_LOADED:I = 0x42002

.field protected static final EVENT_RESET_DONE:I = 0x4201c

.field protected static final EVENT_RESTART_RADIO:I = 0x4201a

.field protected static final EVENT_RESTORE_DEFAULT_APN:I = 0x4200e

.field public static final EVENT_RETRY_SETUP_DATA:I = 0x42026

.field protected static final EVENT_ROAMING_OFF:I = 0x4200c

.field protected static final EVENT_ROAMING_ON:I = 0x4200b

.field protected static final EVENT_RUIM_READY:I = 0x4202d

.field protected static final EVENT_SET_INTERNAL_DATA_ENABLE:I = 0x4201b

.field protected static final EVENT_TRY_SETUP_DATA:I = 0x42003

.field protected static final EVENT_VOICE_CALL_ENDED:I = 0x42008

.field protected static final EVENT_VOICE_CALL_STARTED:I = 0x42007

.field public static EXTRA_MESSENGER:Ljava/lang/String; = null

.field protected static final FAIL_DATA_SETUP_COUNTER:Ljava/lang/String; = "fail_data_setup_counter"

.field protected static final FAIL_DATA_SETUP_FAIL_CAUSE:Ljava/lang/String; = "fail_data_setup_fail_cause"

.field public static final HTC_APN_ID_BASE:I = 0x8

.field public static final HTC_APN_NUM_TYPES:I = 0x11

.field public static final INTENT_DATA_ROAM_STATUS:Ljava/lang/String; = "com.android.internal.telephony.DataConnectionTracker.INTENT_DATA_ROAM_STATUS"

.field protected static final INTENT_RECONNECT_ALARM_EXTRA_REASON:Ljava/lang/String; = "reason"

.field protected static final INTENT_SET_FAIL_DATA_SETUP_COUNTER:Ljava/lang/String; = "com.android.internal.telephony.dataconnectiontracker.intent_set_fail_data_setup_counter"

.field protected static LOG_TAG:Ljava/lang/String; = null

.field private static final NOTIFICATION_ID:I = 0x64

.field private static final NOTIFICATION_REPEAT_DELAY_MS:J = 0x7d0L

.field protected static final NOT_CW_INVITE:I = 0x0

.field protected static final NO_RECV_POLL_LIMIT:I = 0x18

.field protected static final NULL_IP:Ljava/lang/String; = "0.0.0.0"

.field protected static final NUMBER_SENT_PACKETS_OF_HANG:I = 0xa

.field protected static final POLL_LONGEST_RTT:I = 0x1d4c0

.field protected static final POLL_NETSTAT_MILLIS:I = 0x3e8

.field protected static final POLL_NETSTAT_SCREEN_OFF_MILLIS:I = 0x927c0

.field protected static final POLL_NETSTAT_SLOW_MILLIS:I = 0x1388

.field protected static final PROPERTY_CW_DISABLE:Ljava/lang/String; = "0"

.field protected static final PROPERTY_CW_ENABLE:Ljava/lang/String; = "1"

.field protected static final PROPERTY_CW_FLAG:Ljava/lang/String; = "cdma.wifi.on"

.field protected static final REASON_GET_NEW_MPDN_TABLE:Ljava/lang/String; = "getNewMPDNTable"

.field protected static final RESTORE_DEFAULT_APN_DELAY:I = 0xea60

.field protected static final SECONDARY_DATA_RETRY_CONFIG:Ljava/lang/String; = "max_retries=3, 5000, 5000, 5000"

.field protected static final SIP_BYE:I = 0x0

.field protected static final SIP_INVITE:I = 0x1

.field protected static final VDBG:Z = false

.field static ipvrulist:[Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final whiteList_DefaultList:Ljava/lang/String; = "mms,admin"

.field protected static final whiteList_Prop:Ljava/lang/String; = "ro.net.apnwhitelist"

.field protected static final whiteList_cdma_Prop:Ljava/lang/String; = "ro.net.cdma.apnwhitelist"


# instance fields
.field protected dataEnabled:[Z

.field private enabledCount:I

.field protected mActiveApn:Lcom/android/internal/telephony/ApnSetting;

.field protected mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

.field protected mAllApns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/ApnSetting;",
            ">;"
        }
    .end annotation
.end field

.field protected mAllapnLock:Ljava/lang/Object;

.field protected mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/ApnContext;",
            ">;"
        }
    .end annotation
.end field

.field protected mApnToDataConnectionId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mAutoAttachOnCreation:Z

.field protected mCidActive:I

.field protected mCwRegState:I

.field protected mDataConnectionAsyncChannels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/DataConnectionAc;",
            ">;"
        }
    .end annotation
.end field

.field protected mDataConnectionTracker:Landroid/os/Handler;

.field protected mDataConnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation
.end field

.field protected mDataEnabledLock:Ljava/lang/Object;

.field protected mDataRoaming:Z

.field private final mDataRoamingSettingObserver:Lcom/android/internal/telephony/DataConnectionTracker$DataRoamingSettingObserver;

.field protected mDataRoamingSoundFlag:Z

.field protected mDataStallAlarmIntent:Landroid/app/PendingIntent;

.field protected mDataStallAlarmTag:I

.field protected mDataStallTxRxSum:Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;

.field protected mDeferCWIntention:Z

.field protected mFailDataSetupCounter:I

.field protected mFailDataSetupFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

.field protected mIconImageRoaming:Z

.field protected mIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mInternalDataEnabled:Z

.field protected mIsCwSsidConnected:Z

.field protected mIsDisposed:Z

.field protected mIsPsRestricted:Z

.field protected mIsScreenOn:Z

.field protected mIsWifiConnected:Z

.field protected mNetStatPollEnabled:Z

.field protected mNetStatPollPeriod:I

.field protected mNoRecvPollCount:I

.field private mNotificationRepeatTime:J

.field private mNotificationShown:Z

.field protected mOldAllApns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/ApnSetting;",
            ">;"
        }
    .end annotation
.end field

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field protected mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

.field protected mReconnectIntent:Landroid/app/PendingIntent;

.field protected mRequestedApnType:Ljava/lang/String;

.field protected mRoamingFirstConfirmed:Z

.field protected mRxPkts:J

.field public mScreenActionFlag:Z

.field protected mSentSinceLastRecv:J

.field protected mSipInviteOK:Z

.field protected mSipInviteRetryTimes:I

.field protected mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

.field protected mTxPkts:J

.field protected mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected mUserDataEnabled:Z

.field protected mUserIntentionOfApn:[Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;

.field protected mdeferCWDataCall:Z

.field protected sPolicyDataEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 98
    const-string v0, "DataConnectionTracker"

    sput-object v0, Lcom/android/internal/telephony/DataConnectionTracker;->LOG_TAG:Ljava/lang/String;

    .line 139
    const-string v0, "com.android.internal.telephony"

    sput-object v0, Lcom/android/internal/telephony/DataConnectionTracker;->ACTION_DATA_CONNECTION_TRACKER_MESSENGER:Ljava/lang/String;

    .line 141
    const-string v0, "EXTRA_MESSENGER"

    sput-object v0, Lcom/android/internal/telephony/DataConnectionTracker;->EXTRA_MESSENGER:Ljava/lang/String;

    .line 254
    const-string v0, "persist.radio.apn_delay"

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/DataConnectionTracker;->APN_DELAY_MILLIS:I

    .line 1880
    const/16 v0, 0x22

    new-array v0, v0, [Ljava/util/ArrayList;

    sput-object v0, Lcom/android/internal/telephony/DataConnectionTracker;->ipvrulist:[Ljava/util/ArrayList;

    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 13
    .parameter "phone"

    .prologue
    const-wide/16 v2, 0x0

    const/16 v12, 0x11

    const/4 v11, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 763
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 257
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataEnabledLock:Ljava/lang/Object;

    .line 258
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllapnLock:Ljava/lang/Object;

    .line 262
    iput-boolean v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mInternalDataEnabled:Z

    .line 267
    iput-boolean v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserDataEnabled:Z

    .line 268
    iput-boolean v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sPolicyDataEnabled:Z

    .line 272
    const/16 v0, 0x66

    iput v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCwRegState:I

    .line 273
    iput-boolean v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSipInviteOK:Z

    .line 274
    iput-boolean v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsCwSsidConnected:Z

    .line 275
    iput v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSipInviteRetryTimes:I

    .line 284
    iput-boolean v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mdeferCWDataCall:Z

    .line 285
    iput-boolean v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDeferCWIntention:Z

    .line 293
    new-array v0, v12, [Z

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    .line 296
    iput v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    .line 299
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    .line 362
    iput v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mFailDataSetupCounter:I

    .line 364
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/DataConnection$FailCause;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mFailDataSetupFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 375
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 376
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    .line 377
    iput-object v11, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    .line 383
    iput-boolean v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollEnabled:Z

    .line 385
    new-instance v0, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;-><init>(Lcom/android/internal/telephony/DataConnectionTracker;JJ)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataStallTxRxSum:Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;

    .line 387
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataStallAlarmTag:I

    .line 389
    iput-object v11, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    .line 393
    iput v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I

    .line 396
    iput-boolean v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z

    .line 399
    iput-object v11, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    .line 402
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCidActive:I

    .line 408
    iput-boolean v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAutoAttachOnCreation:Z

    .line 425
    iput-boolean v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataRoamingSoundFlag:Z

    .line 427
    iput-boolean v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIconImageRoaming:Z

    .line 434
    iput-boolean v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsScreenOn:Z

    .line 437
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v10}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 440
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    .line 444
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    .line 448
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnToDataConnectionId:Ljava/util/HashMap;

    .line 458
    iput-object v11, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    .line 460
    iput-object v11, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mOldAllApns:Ljava/util/ArrayList;

    .line 464
    iput-object v11, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    .line 467
    iput-boolean v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsPsRestricted:Z

    .line 470
    iput-boolean v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsDisposed:Z

    .line 473
    iput-object v11, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserIntentionOfApn:[Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;

    .line 476
    iput-boolean v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mScreenActionFlag:Z

    .line 478
    new-instance v0, Lcom/android/internal/telephony/DataConnectionTracker$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/DataConnectionTracker$1;-><init>(Lcom/android/internal/telephony/DataConnectionTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 764
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 766
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 767
    .local v6, filter:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getActionIntentReconnectAlarm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 768
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 769
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 770
    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 771
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 772
    const-string v0, "com.android.internal.telephony.dataconnectiontracker.intent_set_fail_data_setup_counter"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 774
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isCWDataConnectionSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 776
    const-string v0, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 777
    const-string v0, "android.intent.action.ACTION_CW_REGISTRATION_STATE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 778
    const-string v0, "android.intent.action.ACTION_CW_SIP_INVITE_RESULT"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v9, :cond_2

    move v0, v9

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserDataEnabled:Z

    .line 787
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v1, v6, v11, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 792
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    const-string v1, "net.def_data_on_boot"

    invoke-static {v1, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    aput-boolean v1, v0, v10

    .line 794
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v0, v0, v10

    if-eqz v0, :cond_1

    .line 795
    iget v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    .line 798
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 799
    .local v8, sp:Landroid/content/SharedPreferences;
    const-string v0, "disabled_on_boot_key"

    invoke-interface {v8, v0, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAutoAttachOnCreation:Z

    .line 802
    new-instance v0, Lcom/android/internal/telephony/DataConnectionTracker$DataRoamingSettingObserver;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker$DataRoamingSettingObserver;-><init>(Lcom/android/internal/telephony/DataConnectionTracker;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataRoamingSettingObserver:Lcom/android/internal/telephony/DataConnectionTracker$DataRoamingSettingObserver;

    .line 803
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataRoamingSettingObserver:Lcom/android/internal/telephony/DataConnectionTracker$DataRoamingSettingObserver;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataConnectionTracker$DataRoamingSettingObserver;->register(Landroid/content/Context;)V

    .line 806
    new-array v0, v12, [Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserIntentionOfApn:[Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;

    .line 807
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v12, :cond_3

    .line 808
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserIntentionOfApn:[Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;

    new-instance v1, Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;

    invoke-direct {v1, p0, v7}, Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;-><init>(Lcom/android/internal/telephony/DataConnectionTracker;I)V

    aput-object v1, v0, v7

    .line 807
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v7           #i:I
    .end local v8           #sp:Landroid/content/SharedPreferences;
    :cond_2
    move v0, v10

    .line 782
    goto :goto_0

    .line 812
    .restart local v7       #i:I
    .restart local v8       #sp:Landroid/content/SharedPreferences;
    :cond_3
    return-void
.end method

.method public static HtcSetRequestRouteToHost(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 9
    .parameter "type"
    .parameter "ipv"
    .parameter "RTBname"
    .parameter "basePrio"
    .parameter "address"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1896
    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker;->ipvrulist:[Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 1897
    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker;->LOG_TAG:Ljava/lang/String;

    const-string v5, "HtcSetRequestRouteToHost() ipvrulist == null"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    :goto_0
    return v4

    .line 1901
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v3

    mul-int/lit8 v6, v3, 0x2

    sget-object v3, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p1, v3, :cond_2

    move v3, v5

    :goto_1
    add-int v2, v6, v3

    .line 1902
    .local v2, ruid:I
    if-ltz v2, :cond_1

    const/16 v3, 0x22

    if-lt v2, v3, :cond_3

    .line 1903
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HtcSetRequestRouteToHost() invalid ruid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ipv="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2           #ruid:I
    :cond_2
    move v3, v4

    .line 1901
    goto :goto_1

    .line 1907
    .restart local v2       #ruid:I
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "net.gprs."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ".ru.number"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v3, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p1, v3, :cond_5

    const-string v3, ".6"

    :goto_2
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1908
    .local v0, propName:Ljava/lang/String;
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1909
    .local v1, ru_number:I
    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HtcSetRequestRouteToHost("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") ruid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ru_numer="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from property="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    if-eqz v1, :cond_4

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker;->ipvrulist:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    if-nez v3, :cond_6

    .line 1913
    :cond_4
    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker;->ipvrulist:[Ljava/util/ArrayList;

    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0x32

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    aput-object v6, v3, v2

    .line 1914
    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker;->ipvrulist:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    if-nez v3, :cond_6

    .line 1915
    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HtcSetRequestRouteToHost: Can\'t allocate memory for ipvrulist["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] successfully!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1907
    .end local v0           #propName:Ljava/lang/String;
    .end local v1           #ru_number:I
    :cond_5
    const-string v3, ""

    goto/16 :goto_2

    .line 1920
    .restart local v0       #propName:Ljava/lang/String;
    .restart local v1       #ru_number:I
    :cond_6
    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker;->ipvrulist:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1921
    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker;->ipvrulist:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1922
    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HtcSetRequestRouteToHost Try to Add routing rule #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/Integer;

    add-int/lit8 v8, v1, 0x1

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for IP: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    const-string v6, "all"

    add-int v3, p3, v1

    add-int/lit8 v7, v3, 0x1

    sget-object v3, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p1, v3, :cond_8

    move v3, v4

    :goto_3
    invoke-static {v6, p4, p2, v7, v3}, Landroid/net/NetworkUtils;->addRoutingRule_ext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_7

    .line 1929
    new-instance v3, Ljava/lang/Integer;

    add-int/lit8 v4, v1, 0x1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1930
    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HtcSetRequestRouteToHost Added routing rule #"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " for IP: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v4, v5

    .line 1945
    goto/16 :goto_0

    :cond_8
    move v3, v5

    .line 1924
    goto :goto_3

    .line 1934
    :cond_9
    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HtcSetRequestRouteToHost IP: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is existed in RU already!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/DataConnectionTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->handleDataOnRoamingChange()V

    return-void
.end method

.method public static apnTypeToId(Ljava/lang/String;)I
    .locals 1
    .parameter "type"

    .prologue
    .line 1271
    const-string v0, "default"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1272
    const/4 v0, 0x0

    .line 1311
    :goto_0
    return v0

    .line 1273
    :cond_0
    const-string v0, "mms"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1274
    const/4 v0, 0x1

    goto :goto_0

    .line 1275
    :cond_1
    const-string v0, "supl"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1276
    const/4 v0, 0x2

    goto :goto_0

    .line 1277
    :cond_2
    const-string v0, "dun"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1278
    const/4 v0, 0x3

    goto :goto_0

    .line 1279
    :cond_3
    const-string v0, "hipri"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1280
    const/4 v0, 0x4

    goto :goto_0

    .line 1281
    :cond_4
    const-string v0, "ims"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1282
    const/4 v0, 0x5

    goto :goto_0

    .line 1283
    :cond_5
    const-string v0, "fota"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1284
    const/4 v0, 0x6

    goto :goto_0

    .line 1285
    :cond_6
    const-string v0, "cbs"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1286
    const/4 v0, 0x7

    goto :goto_0

    .line 1288
    :cond_7
    const-string v0, "internet"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1289
    const/16 v0, 0x8

    goto :goto_0

    .line 1290
    :cond_8
    const-string v0, "entitle"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1291
    const/16 v0, 0x9

    goto :goto_0

    .line 1294
    :cond_9
    const-string v0, "cmail"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1295
    const/16 v0, 0xb

    goto :goto_0

    .line 1296
    :cond_a
    const-string v0, "admin"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1297
    const/16 v0, 0xa

    goto :goto_0

    .line 1298
    :cond_b
    const-string v0, "otasp"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1299
    const/16 v0, 0xd

    goto :goto_0

    .line 1303
    :cond_c
    const-string v0, "httpproxy"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1304
    const/16 v0, 0xe

    goto/16 :goto_0

    .line 1307
    :cond_d
    const-string v0, "cmmail"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1308
    const/16 v0, 0xf

    goto/16 :goto_0

    .line 1311
    :cond_e
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method private handleDataOnRoamingChange()V
    .locals 1

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1018
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1019
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->resetAllRetryCounts()V

    .line 1021
    :cond_0
    const v0, 0x4200b

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 1023
    :cond_1
    return-void
.end method

.method private notifyApnIdDisconnected(Ljava/lang/String;I)V
    .locals 3
    .parameter "reason"
    .parameter "apnId"

    .prologue
    .line 1422
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V

    .line 1423
    return-void
.end method

.method private notifyApnIdUpToCurrent(Ljava/lang/String;I)V
    .locals 3
    .parameter "reason"
    .parameter "apnId"

    .prologue
    .line 1404
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$2;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$State:[I

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionTracker$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1418
    :goto_0
    :pswitch_0
    return-void

    .line 1410
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V

    goto :goto_0

    .line 1414
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V

    .line 1415
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V

    goto :goto_0

    .line 1404
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private notifyHtcDataRoaming(Z)V
    .locals 13
    .parameter "enable"

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x64

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2043
    iget-boolean v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNotificationShown:Z

    if-ne v7, p1, :cond_1

    .line 2085
    :cond_0
    :goto_0
    return-void

    .line 2046
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 2047
    .local v2, mContext:Landroid/content/Context;
    if-eqz p1, :cond_2

    .line 2049
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNotificationRepeatTime:J

    cmp-long v7, v7, v9

    if-ltz v7, :cond_0

    .line 2054
    :cond_2
    const-string v7, "notification"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 2056
    .local v4, notificationManager:Landroid/app/NotificationManager;
    if-eqz p1, :cond_5

    .line 2057
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2058
    .local v1, intent:Landroid/content/Intent;
    const-string v7, "com.android.phone"

    const-string v8, "com.android.phone.Settings"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2059
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    .line 2060
    .local v3, notification:Landroid/app/Notification;
    const-wide/16 v7, 0x0

    iput-wide v7, v3, Landroid/app/Notification;->when:J

    .line 2061
    iput v6, v3, Landroid/app/Notification;->icon:I

    .line 2062
    const/16 v7, 0x10

    iput v7, v3, Landroid/app/Notification;->flags:I

    .line 2063
    invoke-static {v2, v6, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 2064
    iget-object v7, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v2, v12, v12, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2066
    const/4 v0, 0x0

    .line 2068
    .local v0, dataRoamSound:Z
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "roaming_sound_on"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-ne v7, v5, :cond_3

    move v0, v5

    .line 2071
    :goto_1
    if-eqz v0, :cond_4

    .line 2072
    iget v5, v3, Landroid/app/Notification;->defaults:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v3, Landroid/app/Notification;->defaults:I

    .line 2078
    :goto_2
    invoke-virtual {v4, v11, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 2079
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x7d0

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNotificationRepeatTime:J

    .line 2084
    .end local v0           #dataRoamSound:Z
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #notification:Landroid/app/Notification;
    :goto_3
    iput-boolean p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNotificationShown:Z

    goto :goto_0

    .restart local v0       #dataRoamSound:Z
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v3       #notification:Landroid/app/Notification;
    :cond_3
    move v0, v6

    .line 2068
    goto :goto_1

    .line 2075
    :cond_4
    iput v6, v3, Landroid/app/Notification;->defaults:I

    goto :goto_2

    .line 2082
    .end local v0           #dataRoamSound:Z
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #notification:Landroid/app/Notification;
    :cond_5
    invoke-virtual {v4, v11}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_3

    .line 2070
    .restart local v0       #dataRoamSound:Z
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v3       #notification:Landroid/app/Notification;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private printNotImplmentedMsg()V
    .locals 2

    .prologue
    .line 2181
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker;->LOG_TAG:Ljava/lang/String;

    const-string v1, "FIX!! DUMMY DCT should not be called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2182
    return-void
.end method


# virtual methods
.method protected HtcCustomize_switchOffLte(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 1696
    return-void
.end method

.method protected HtcCustomzie_KTResetRetrySequence()V
    .locals 0

    .prologue
    .line 2218
    return-void
.end method

.method protected HtcDelRequestRouteToHost(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/Phone$IPVersion;)V
    .locals 8
    .parameter "type"
    .parameter "RTBname"
    .parameter "basePrio"
    .parameter "ipv"

    .prologue
    const/4 v4, 0x0

    .line 1883
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "net.gprs."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".ru.number"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v3, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p4, v3, :cond_0

    const-string v3, ".6"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1884
    .local v1, propName:Ljava/lang/String;
    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1885
    .local v2, ru_number:I
    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HtcDelRequestRouteToHost("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ru_number="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from property="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 1889
    const-string v5, "all"

    const/4 v6, 0x0

    add-int v3, p3, v0

    add-int/lit8 v7, v3, 0x1

    sget-object v3, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p4, v3, :cond_1

    move v3, v4

    :goto_2
    invoke-static {v5, v6, p2, v7, v3}, Landroid/net/NetworkUtils;->delRoutingRule_ext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    .line 1890
    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HtcDelRequestRouteToHost Remove routing rule #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1883
    .end local v0           #i:I
    .end local v1           #propName:Ljava/lang/String;
    .end local v2           #ru_number:I
    :cond_0
    const-string v3, ""

    goto/16 :goto_0

    .line 1889
    .restart local v0       #i:I
    .restart local v1       #propName:Ljava/lang/String;
    .restart local v2       #ru_number:I
    :cond_1
    const/4 v3, 0x1

    goto :goto_2

    .line 1892
    :cond_2
    const-string v3, "0"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1893
    return-void
.end method

.method protected HtcGetAnyDataEnabled(Lcom/android/internal/telephony/ApnContext;)Z
    .locals 1
    .parameter "ac"

    .prologue
    .line 1250
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getAnyDataEnabled()Z

    move-result v0

    return v0
.end method

.method protected HtcOnCleanUpAllConnections(Ljava/lang/String;)V
    .locals 0
    .parameter "cause"

    .prologue
    .line 1098
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->onCleanUpAllConnections(Ljava/lang/String;)V

    .line 1099
    return-void
.end method

.method public HtcisDataPossible(Ljava/lang/String;)Z
    .locals 1
    .parameter "apnType"

    .prologue
    .line 2203
    const/4 v0, 0x1

    return v0
.end method

.method protected IsIconImageRoaming(I)Z
    .locals 1
    .parameter "icon_img_id"

    .prologue
    const/4 v0, 0x1

    .line 2031
    if-ne p1, v0, :cond_0

    .line 2033
    const/4 v0, 0x0

    .line 2036
    :cond_0
    return v0
.end method

.method protected UpdateDataRoamingSound(Z)V
    .locals 14
    .parameter "bEnable"

    .prologue
    const/4 v13, 0x0

    const/16 v12, 0x64

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1965
    iget-boolean v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataRoamingSoundFlag:Z

    if-eq v8, p1, :cond_0

    .line 1967
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mDataRoamingSoundFlag != bEnable("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1969
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1971
    .local v3, mContext:Landroid/content/Context;
    if-eqz p1, :cond_1

    .line 1973
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNotificationRepeatTime:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    .line 1974
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "currentTimeMillis("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") < mNotificationRepeatTime("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNotificationRepeatTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2026
    .end local v3           #mContext:Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 1979
    .restart local v3       #mContext:Landroid/content/Context;
    :cond_1
    const-string v8, "notification"

    invoke-virtual {v3, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 1983
    .local v5, notificationManager:Landroid/app/NotificationManager;
    if-eqz p1, :cond_5

    iget-boolean v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataRoaming:Z

    if-nez v8, :cond_2

    iget-boolean v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIconImageRoaming:Z

    if-eqz v8, :cond_5

    .line 1984
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bEnable("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") && mDataRoaming("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataRoaming:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") or mIconImageRoaming("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIconImageRoaming:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1986
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1987
    .local v2, intent:Landroid/content/Intent;
    const-string v8, "com.android.phone"

    const-string v9, "com.android.phone.Settings"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1988
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    .line 1989
    .local v4, notification:Landroid/app/Notification;
    const-wide/16 v8, 0x0

    iput-wide v8, v4, Landroid/app/Notification;->when:J

    .line 1990
    iput v7, v4, Landroid/app/Notification;->icon:I

    .line 1991
    const/16 v8, 0x10

    iput v8, v4, Landroid/app/Notification;->flags:I

    .line 1992
    invoke-static {v3, v7, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    iput-object v8, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1993
    iget-object v8, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v3, v13, v13, v8}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1996
    const/4 v0, 0x0

    .line 1998
    .local v0, dataRoamSound:Z
    :try_start_0
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "roaming_sound_on"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-ne v8, v6, :cond_3

    move v0, v6

    .line 2004
    :goto_1
    if-eqz v0, :cond_4

    .line 2005
    const-string v7, "Data roaming sound setting is enable , enable data roaming sound flag"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2006
    iget v7, v4, Landroid/app/Notification;->defaults:I

    or-int/lit8 v7, v7, 0x1

    iput v7, v4, Landroid/app/Notification;->defaults:I

    .line 2007
    iput-boolean v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataRoamingSoundFlag:Z

    .line 2015
    :goto_2
    invoke-virtual {v5, v12, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 2016
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x7d0

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNotificationRepeatTime:J

    goto/16 :goto_0

    :cond_3
    move v0, v7

    .line 1998
    goto :goto_1

    .line 2000
    :catch_0
    move-exception v1

    .line 2001
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v8, "Get data roaming sound setting from database fail"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2010
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_4
    const-string v6, "Data roaming sound setting is disable , disable data roaming sound flag "

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2011
    iput v7, v4, Landroid/app/Notification;->defaults:I

    .line 2012
    iput-boolean v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataRoamingSoundFlag:Z

    goto :goto_2

    .line 2019
    .end local v0           #dataRoamSound:Z
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #notification:Landroid/app/Notification;
    :cond_5
    const-string v6, "Deactivate all data call or reg state isn\'t roaming , disable data roaming sound flag "

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2020
    invoke-virtual {v5, v12}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2021
    iput-boolean v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataRoamingSoundFlag:Z

    goto/16 :goto_0
.end method

.method public apnIdToType(I)Ljava/lang/String;
    .locals 2
    .parameter "id"

    .prologue
    .line 1316
    packed-switch p1, :pswitch_data_0

    .line 1360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown id ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in apnIdToType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1361
    const-string v0, "default"

    :goto_0
    return-object v0

    .line 1318
    :pswitch_0
    const-string v0, "default"

    goto :goto_0

    .line 1320
    :pswitch_1
    const-string v0, "mms"

    goto :goto_0

    .line 1322
    :pswitch_2
    const-string v0, "supl"

    goto :goto_0

    .line 1324
    :pswitch_3
    const-string v0, "dun"

    goto :goto_0

    .line 1326
    :pswitch_4
    const-string v0, "hipri"

    goto :goto_0

    .line 1328
    :pswitch_5
    const-string v0, "ims"

    goto :goto_0

    .line 1330
    :pswitch_6
    const-string v0, "fota"

    goto :goto_0

    .line 1332
    :pswitch_7
    const-string v0, "cbs"

    goto :goto_0

    .line 1335
    :pswitch_8
    const-string v0, "internet"

    goto :goto_0

    .line 1337
    :pswitch_9
    const-string v0, "entitle"

    goto :goto_0

    .line 1341
    :pswitch_a
    const-string v0, "cmail"

    goto :goto_0

    .line 1343
    :pswitch_b
    const-string v0, "admin"

    goto :goto_0

    .line 1345
    :pswitch_c
    const-string v0, "verizon"

    goto :goto_0

    .line 1347
    :pswitch_d
    const-string v0, "otasp"

    goto :goto_0

    .line 1351
    :pswitch_e
    const-string v0, "httpproxy"

    goto :goto_0

    .line 1355
    :pswitch_f
    const-string v0, "cmmail"

    goto :goto_0

    .line 1316
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method protected broadcastMessenger()V
    .locals 3

    .prologue
    .line 825
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker;->ACTION_DATA_CONNECTION_TRACKER_MESSENGER:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 826
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker;->EXTRA_MESSENGER:Ljava/lang/String;

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 827
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 828
    return-void
.end method

.method public cleanUpAllConnections(Ljava/lang/String;)V
    .locals 2
    .parameter "cause"

    .prologue
    .line 1686
    const-string v1, "DCT:cleanUpAllConnections"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1687
    const v1, 0x4201e

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1688
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1689
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 1690
    return-void
.end method

.method public controlDataFromRoamGuard(ZZ)V
    .locals 1
    .parameter "enable"
    .parameter "userChange"

    .prologue
    .line 1796
    const-string v0, "Dummy API controlDataFromRoamGuard"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized disableApnType(Ljava/lang/String;)I
    .locals 6
    .parameter "type"

    .prologue
    const/4 v1, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1512
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/DataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1513
    .local v0, id:I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 1537
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 1517
    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disableApnType("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uiCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserIntentionOfApn:[Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;->count:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uiLast="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserIntentionOfApn:[Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;->lastIntention:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1524
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserIntentionOfApn:[Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;->isPendingEnabling()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1526
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->setEnabled(IZ)V

    .line 1527
    const-string v1, "default"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1528
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    const/4 v4, 0x0

    aget-boolean v1, v1, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    move v1, v2

    .line 1529
    goto :goto_0

    :cond_3
    move v1, v3

    .line 1531
    goto :goto_0

    :cond_4
    move v1, v3

    .line 1534
    goto :goto_0

    .line 1512
    .end local v0           #id:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public dispose()V
    .locals 4

    .prologue
    .line 815
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

    .line 816
    .local v0, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionAc;->disconnect()V

    goto :goto_0

    .line 818
    .end local v0           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 819
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsDisposed:Z

    .line 820
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 821
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataRoamingSettingObserver:Lcom/android/internal/telephony/DataConnectionTracker$DataRoamingSettingObserver;

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/DataConnectionTracker$DataRoamingSettingObserver;->unregister(Landroid/content/Context;)V

    .line 822
    return-void
.end method

.method public declared-synchronized enableApnType(Ljava/lang/String;)I
    .locals 4
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    .line 1467
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/DataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1468
    .local v0, id:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1469
    const/4 v1, 0x3

    .line 1494
    :goto_0
    monitor-exit p0

    return v1

    .line 1473
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableApnType("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), isApnTypeActive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isApnIdEnabled ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uiCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserIntentionOfApn:[Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;->count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uiLast="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserIntentionOfApn:[Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;->lastIntention:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1479
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeAvailable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1480
    const-string v1, "type not available"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1481
    const/4 v1, 0x2

    goto :goto_0

    .line 1488
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserIntentionOfApn:[Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;->isPendingDisabling()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1490
    const/4 v1, 0x0

    goto :goto_0

    .line 1492
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->setEnabled(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1467
    .end local v0           #id:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected fetchDunApn()Lcom/android/internal/telephony/ApnSetting;
    .locals 5

    .prologue
    .line 846
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 847
    .local v1, c:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tether_dun_apn"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 849
    .local v0, apnData:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/telephony/ApnSetting;->fromString(Ljava/lang/String;)Lcom/android/internal/telephony/ApnSetting;

    move-result-object v2

    .line 850
    .local v2, dunSetting:Lcom/android/internal/telephony/ApnSetting;
    if-eqz v2, :cond_0

    .line 853
    .end local v2           #dunSetting:Lcom/android/internal/telephony/ApnSetting;
    :goto_0
    return-object v2

    .line 852
    .restart local v2       #dunSetting:Lcom/android/internal/telephony/ApnSetting;
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 853
    invoke-static {v0}, Lcom/android/internal/telephony/ApnSetting;->fromString(Ljava/lang/String;)Lcom/android/internal/telephony/ApnSetting;

    move-result-object v2

    goto :goto_0
.end method

.method protected abstract getActionIntentDataStallAlarm()Ljava/lang/String;
.end method

.method protected abstract getActionIntentReconnectAlarm()Ljava/lang/String;
.end method

.method public getActiveApn(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;
    .locals 1
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    .line 2175
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActiveApnCarrier(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 2214
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActiveApnString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "apnType"

    .prologue
    .line 869
    const/4 v0, 0x0

    .line 870
    .local v0, result:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v1, :cond_0

    .line 871
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v0, v1, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    .line 873
    :cond_0
    return-object v0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 858
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v1, :cond_0

    .line 859
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v0, v1, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    .line 864
    .local v0, result:[Ljava/lang/String;
    :goto_0
    return-object v0

    .line 861
    .end local v0           #result:[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 862
    .restart local v0       #result:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "default"

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public getActivity()Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    return-object v0
.end method

.method public getAnyDataEnabled()Z
    .locals 3

    .prologue
    .line 1235
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1236
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->isMmsDataEnabled()Z

    move-result v0

    .local v0, result:Z
    if-nez v0, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mInternalDataEnabled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserDataEnabled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sPolicyDataEnabled:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .local v0, result:Z
    :cond_2
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAnyDataEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mInternalDataEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mInternalDataEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mUserDataEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserDataEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sPolicyDataEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sPolicyDataEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "enabledApntype["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->logEnabledApnStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1244
    :cond_0
    return v0

    .line 1236
    .end local v0           #result:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1238
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1

    .prologue
    .line 2184
    invoke-direct {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->printNotImplmentedMsg()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataConnectionRealIpState(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    .line 2158
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 2159
    .local v0, ret:Lcom/android/internal/telephony/Phone$DataState;
    return-object v0
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;
    .locals 1

    .prologue
    .line 2185
    invoke-direct {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->printNotImplmentedMsg()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataConnectionState(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    .line 2153
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 2154
    .local v0, ret:Lcom/android/internal/telephony/Phone$DataState;
    return-object v0
.end method

.method public getDataOnRoamingEnabled()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1009
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1010
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v3, "data_roaming"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1012
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    return v2

    .line 1011
    :catch_0
    move-exception v1

    .line 1012
    .local v1, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method public getDataServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 2188
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDnsServers(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)[Ljava/lang/String;
    .locals 1
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    .line 2186
    invoke-direct {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->printNotImplmentedMsg()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnabledApnTypes()[Ljava/lang/String;
    .locals 11

    .prologue
    .line 880
    const/4 v1, 0x0

    .line 881
    .local v1, i:I
    iget v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    if-eqz v9, :cond_2

    .line 882
    iget v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    new-array v6, v9, [Ljava/lang/String;

    .line 883
    .local v6, result:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, id:I
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    :goto_0
    const/16 v9, 0x11

    if-ge v4, v9, :cond_4

    .line 884
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v9, v9, v4

    if-eqz v9, :cond_0

    .line 885
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v2

    .line 886
    iget v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    if-lt v1, v9, :cond_1

    .line 895
    .end local v4           #id:I
    :goto_1
    const-string v7, ""

    .line 896
    .local v7, tmp:Ljava/lang/String;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_2
    if-ge v3, v5, :cond_3

    aget-object v8, v0, v3

    .line 897
    .local v8, type:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 896
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v7           #tmp:Ljava/lang/String;
    .end local v8           #type:Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v4       #id:I
    :cond_0
    move v1, v2

    .line 883
    .end local v2           #i:I
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_0

    .line 891
    .end local v2           #i:I
    .end local v4           #id:I
    .end local v6           #result:[Ljava/lang/String;
    .restart local v1       #i:I
    :cond_2
    const/4 v9, 0x1

    new-array v6, v9, [Ljava/lang/String;

    .line 892
    .restart local v6       #result:[Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "default"

    aput-object v10, v6, v9

    goto :goto_1

    .line 899
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v5       #len$:I
    .restart local v7       #tmp:Ljava/lang/String;
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getEnabledApnTypes() return="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 900
    return-object v6

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v7           #tmp:Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v4       #id:I
    :cond_4
    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_1
.end method

.method public getEntitleErrorCause()I
    .locals 1

    .prologue
    .line 2192
    const/4 v0, 0x0

    return v0
.end method

.method public getGateway(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;
    .locals 1
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    .line 2171
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGlobalDataRoamingOption()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 925
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vzw_global_roaming_options"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 928
    :goto_0
    return v1

    .line 927
    :catch_0
    move-exception v0

    .line 928
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getInterfaceName(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;
    .locals 1
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    .line 2163
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIpAddress(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;
    .locals 1
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    .line 2167
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;
    .locals 4
    .parameter "apnType"

    .prologue
    .line 1378
    invoke-static {p1}, Lcom/android/internal/telephony/DataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v1

    .line 1379
    .local v1, id:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1381
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnectionAc;

    .line 1382
    .local v0, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionAc;->getLinkCapabilitiesSync()Landroid/net/LinkCapabilities;

    move-result-object v2

    .line 1384
    .end local v0           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Landroid/net/LinkCapabilities;

    invoke-direct {v2}, Landroid/net/LinkCapabilities;-><init>()V

    goto :goto_0
.end method

.method protected getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 4
    .parameter "apnType"

    .prologue
    .line 1366
    invoke-static {p1}, Lcom/android/internal/telephony/DataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v1

    .line 1368
    .local v1, id:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1370
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnectionAc;

    .line 1371
    .local v0, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionAc;->getLinkPropertiesSync()Landroid/net/LinkProperties;

    move-result-object v2

    .line 1373
    .end local v0           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    goto :goto_0
.end method

.method public getMobileDataSettingEnabled()Z
    .locals 2

    .prologue
    .line 1034
    :try_start_0
    const-string v1, "connectivity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getMobileDataEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1037
    :goto_0
    return v1

    .line 1036
    :catch_0
    move-exception v0

    .line 1037
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getReryConfig(Z)Ljava/lang/String;
    .locals 2
    .parameter "forDefault"

    .prologue
    .line 1765
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    .line 1767
    .local v0, rt:I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 1775
    :cond_0
    const-string v1, "ro.cdma.data_retry_config"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1781
    :goto_0
    return-object v1

    .line 1778
    :cond_1
    if-eqz p1, :cond_2

    .line 1779
    const-string v1, "ro.gsm.data_retry_config"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1781
    :cond_2
    const-string v1, "ro.gsm.2nd_data_retry_config"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getState()Lcom/android/internal/telephony/DataConnectionTracker$State;
    .locals 1

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    return-object v0
.end method

.method public abstract getState(Ljava/lang/String;)Lcom/android/internal/telephony/DataConnectionTracker$State;
.end method

.method public getStateInString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1064
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$2;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$State:[I

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionTracker$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1072
    const-string v0, "ERRO"

    :goto_0
    return-object v0

    .line 1065
    :pswitch_0
    const-string v0, "IDLE"

    goto :goto_0

    .line 1066
    :pswitch_1
    const-string v0, "INIT"

    goto :goto_0

    .line 1067
    :pswitch_2
    const-string v0, "CING"

    goto :goto_0

    .line 1068
    :pswitch_3
    const-string v0, "SCAN"

    goto :goto_0

    .line 1069
    :pswitch_4
    const-string v0, "CNTD"

    goto :goto_0

    .line 1070
    :pswitch_5
    const-string v0, "DING"

    goto :goto_0

    .line 1071
    :pswitch_6
    const-string v0, "FAIL"

    goto :goto_0

    .line 1064
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected abstract gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1104
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 1222
    const-string v7, "DATA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unidentified event msg="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    :cond_0
    :goto_0
    return-void

    .line 1106
    :sswitch_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DISCONNECTED_CONNECTED: msg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1107
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/DataConnectionAc;

    .line 1108
    .local v2, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    iget-object v8, v2, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnection;->getDataConnectionId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionAc;->disconnected()V

    goto :goto_0

    .line 1114
    .end local v2           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :sswitch_1
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserIntentionOfApn:[Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;

    iget v8, p1, Landroid/os/Message;->arg1:I

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;->decrease()V

    .line 1116
    iget v7, p1, Landroid/os/Message;->arg1:I

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/telephony/DataConnectionTracker;->onEnableApn(II)V

    goto :goto_0

    .line 1120
    :sswitch_2
    const/4 v5, 0x0

    .line 1121
    .local v5, reason:Ljava/lang/String;
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v7, v7, Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 1122
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v5           #reason:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 1124
    .restart local v5       #reason:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->onTrySetupData(Ljava/lang/String;)Z

    goto :goto_0

    .line 1128
    .end local v5           #reason:Ljava/lang/String;
    :sswitch_3
    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/DataConnectionTracker;->onDataStallAlarm(I)V

    goto :goto_0

    .line 1133
    :sswitch_4
    iput-boolean v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataRoaming:Z

    .line 1135
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1136
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->resetAllRetryCounts()V

    .line 1138
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onRoamingOff()V

    goto :goto_0

    .line 1143
    :sswitch_5
    iput-boolean v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataRoaming:Z

    .line 1145
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onRoamingOn()V

    goto :goto_0

    .line 1149
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onRadioAvailable()V

    goto :goto_0

    .line 1153
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onRadioOffOrNotAvailable()V

    goto :goto_0

    .line 1157
    :sswitch_8
    iget v7, p1, Landroid/os/Message;->arg1:I

    iput v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCidActive:I

    .line 1158
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/DataConnectionTracker;->onDataSetupComplete(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1162
    :sswitch_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DataConnectoinTracker.handleMessage: EVENT_DISCONNECT_DONE msg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1163
    iget v8, p1, Landroid/os/Message;->arg1:I

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    invoke-virtual {p0, v8, v7}, Lcom/android/internal/telephony/DataConnectionTracker;->onDisconnectDone(ILandroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1167
    :sswitch_a
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onVoiceCallStarted()V

    goto/16 :goto_0

    .line 1171
    :sswitch_b
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onVoiceCallEnded()V

    goto/16 :goto_0

    .line 1175
    :sswitch_c
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/DataConnectionTracker;->onCleanUpAllConnections(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1179
    :sswitch_d
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-nez v8, :cond_3

    .line 1180
    .local v6, tearDown:Z
    :goto_1
    iget v8, p1, Landroid/os/Message;->arg2:I

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v6, v8, v7}, Lcom/android/internal/telephony/DataConnectionTracker;->onCleanUpConnection(ZILjava/lang/String;)V

    goto/16 :goto_0

    .end local v6           #tearDown:Z
    :cond_3
    move v6, v7

    .line 1179
    goto :goto_1

    .line 1184
    :sswitch_e
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v7, :cond_4

    move v3, v7

    .line 1185
    .local v3, enabled:Z
    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->onSetInternalDataEnabled(Z)V

    goto/16 :goto_0

    .end local v3           #enabled:Z
    :cond_4
    move v3, v6

    .line 1184
    goto :goto_2

    .line 1189
    :sswitch_f
    const-string v7, "EVENT_RESET_DONE"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1190
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/DataConnectionTracker;->onResetDone(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1194
    :sswitch_10
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v7, :cond_5

    move v3, v7

    .line 1195
    .restart local v3       #enabled:Z
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CMD_SET_USER_DATA_ENABLE enabled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1196
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->onSetUserDataEnabled(Z)V

    goto/16 :goto_0

    .end local v3           #enabled:Z
    :cond_5
    move v3, v6

    .line 1194
    goto :goto_3

    .line 1200
    :sswitch_11
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v7, :cond_6

    move v4, v7

    .line 1201
    .local v4, met:Z
    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CMD_SET_DEPENDENCY_MET met="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1202
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 1203
    .local v1, bundle:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 1204
    const-string v7, "apnType"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1205
    .local v0, apnType:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1206
    invoke-virtual {p0, v0, v4}, Lcom/android/internal/telephony/DataConnectionTracker;->onSetDependencyMet(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .end local v0           #apnType:Ljava/lang/String;
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v4           #met:Z
    :cond_6
    move v4, v6

    .line 1200
    goto :goto_4

    .line 1212
    :sswitch_12
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v7, :cond_7

    move v3, v7

    .line 1213
    .restart local v3       #enabled:Z
    :goto_5
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->onSetPolicyDataEnabled(Z)V

    goto/16 :goto_0

    .end local v3           #enabled:Z
    :cond_7
    move v3, v6

    .line 1212
    goto :goto_5

    .line 1218
    :sswitch_13
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-eqz v8, :cond_8

    :goto_6
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/DataConnectionTracker;->notifyHtcDataRoaming(Z)V

    goto/16 :goto_0

    :cond_8
    move v7, v6

    goto :goto_6

    .line 1104
    :sswitch_data_0
    .sparse-switch
        0x11004 -> :sswitch_0
        0x42000 -> :sswitch_8
        0x42001 -> :sswitch_6
        0x42003 -> :sswitch_2
        0x42006 -> :sswitch_7
        0x42007 -> :sswitch_a
        0x42008 -> :sswitch_b
        0x4200b -> :sswitch_5
        0x4200c -> :sswitch_4
        0x4200d -> :sswitch_1
        0x4200f -> :sswitch_9
        0x42011 -> :sswitch_3
        0x42018 -> :sswitch_d
        0x4201b -> :sswitch_e
        0x4201c -> :sswitch_f
        0x4201d -> :sswitch_10
        0x4201e -> :sswitch_c
        0x4201f -> :sswitch_11
        0x42020 -> :sswitch_12
        0x42022 -> :sswitch_13
    .end sparse-switch
.end method

.method protected htcNotifyAvailability(Ljava/lang/String;)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    return-void
.end method

.method protected htcRequireDisconnect_disablingApn(I)Z
    .locals 1
    .parameter "apnId"

    .prologue
    .line 1647
    iget v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected declared-synchronized isApnIdEnabled(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 1450
    monitor-enter p0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1451
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1453
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1450
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isApnTypeActive(Ljava/lang/String;)Z
    .locals 5
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 836
    const-string v3, "dun"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 837
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->fetchDunApn()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v0

    .line 838
    .local v0, dunApn:Lcom/android/internal/telephony/ApnSetting;
    if-eqz v0, :cond_2

    .line 839
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {v4}, Lcom/android/internal/telephony/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 842
    .end local v0           #dunApn:Lcom/android/internal/telephony/ApnSetting;
    :cond_0
    :goto_0
    return v1

    .restart local v0       #dunApn:Lcom/android/internal/telephony/ApnSetting;
    :cond_1
    move v1, v2

    .line 839
    goto :goto_0

    .line 842
    .end local v0           #dunApn:Lcom/android/internal/telephony/ApnSetting;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method protected abstract isApnTypeAvailable(Ljava/lang/String;)Z
.end method

.method public isApnTypeEnabled(Ljava/lang/String;)Z
    .locals 1
    .parameter "apnType"

    .prologue
    .line 1442
    if-nez p1, :cond_0

    .line 1443
    const/4 v0, 0x0

    .line 1445
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/DataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method protected isApnTypeSupported(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 1055
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract isDataAllowed()Z
.end method

.method public abstract isDataConnectionAsDesired()Z
.end method

.method public isDataConnectivityPossible()Z
    .locals 1

    .prologue
    .line 2187
    invoke-direct {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->printNotImplmentedMsg()V

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract isDataPossible(Ljava/lang/String;)Z
.end method

.method protected isDataSetupCompleteOk(Landroid/os/AsyncResult;)Z
    .locals 3
    .parameter "ar"

    .prologue
    const/4 v0, 0x0

    .line 722
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 723
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDataSetupCompleteOk return false, ar.result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 737
    :goto_0
    return v0

    .line 726
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mFailDataSetupCounter:I

    if-gtz v1, :cond_1

    .line 727
    const-string v0, "isDataSetupCompleteOk return true"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 728
    const/4 v0, 0x1

    goto :goto_0

    .line 730
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mFailDataSetupFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    iput-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 732
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDataSetupCompleteOk return false mFailDataSetupCounter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mFailDataSetupCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFailDataSetupFailCause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mFailDataSetupFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 736
    iget v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mFailDataSetupCounter:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mFailDataSetupCounter:I

    goto :goto_0
.end method

.method public abstract isDisconnected()Z
.end method

.method protected isEmergency()Z
    .locals 3

    .prologue
    .line 1256
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1257
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->isInEcm()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->isInEmergencyCall()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1258
    .local v0, result:Z
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEmergency: result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1260
    return v0

    .line 1257
    .end local v0           #result:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1258
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected isMmsDataEnabled()Z
    .locals 3
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    const-string v2, "mms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "always_enable_mms"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract log(Ljava/lang/String;)V
.end method

.method protected logEnabledApnStatus()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 648
    new-array v1, v3, [B

    .line 649
    .local v1, status:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 650
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x31

    :goto_1
    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 649
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 650
    :cond_0
    const/16 v2, 0x30

    goto :goto_1

    .line 652
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method protected abstract loge(Ljava/lang/String;)V
.end method

.method protected master_Check(Ljava/lang/String;)Z
    .locals 1
    .parameter "requestType"

    .prologue
    .line 1812
    const-string v0, "default"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1815
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserDataEnabled:Z

    .line 1817
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected needToDeferUserIntention()Z
    .locals 1

    .prologue
    .line 1739
    const/4 v0, 0x0

    return v0
.end method

.method public nfcQueryPdpCid()I
    .locals 1

    .prologue
    .line 2197
    const/4 v0, 0x0

    return v0
.end method

.method protected notifyDataConnection(Ljava/lang/String;)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 1391
    const/4 v0, 0x1

    .local v0, id:I
    :goto_0
    const/16 v1, 0x11

    if-ge v0, v1, :cond_1

    .line 1392
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 1393
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1398
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->htcNotifyAvailability(Ljava/lang/String;)V

    .line 1399
    return-void
.end method

.method protected notifyOffApnsOfAvailability(Ljava/lang/String;)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 1427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyOffApnsOfAvailability - reason= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1428
    const/4 v0, 0x0

    .local v0, id:I
    :goto_0
    const/16 v1, 0x11

    if-ge v0, v1, :cond_1

    .line 1429
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1430
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->notifyApnIdDisconnected(Ljava/lang/String;I)V

    .line 1428
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1433
    :cond_1
    return-void
.end method

.method protected onActionIntentDataStallAlarm(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 754
    const v1, 0x42011

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 755
    .local v0, msg:Landroid/os/Message;
    const-string v1, "data.stall.alram.tag"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 756
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 757
    return-void
.end method

.method protected onActionIntentReconnectAlarm(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 741
    const-string v2, "reason"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 742
    .local v1, reason:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v2, v3, :cond_0

    .line 743
    const v2, 0x42018

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 744
    .local v0, msg:Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->arg1:I

    .line 745
    iput v4, v0, Landroid/os/Message;->arg2:I

    .line 746
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 747
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 749
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    const v2, 0x42003

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 750
    return-void
.end method

.method protected abstract onCleanUpAllConnections(Ljava/lang/String;)V
.end method

.method protected abstract onCleanUpConnection(ZILjava/lang/String;)V
.end method

.method protected abstract onDataSetupComplete(Landroid/os/AsyncResult;)V
.end method

.method protected onDataStallAlarm(I)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 1092
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataStallAlarm: not impleted tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->loge(Ljava/lang/String;)V

    .line 1093
    return-void
.end method

.method protected abstract onDisconnectDone(ILandroid/os/AsyncResult;)V
.end method

.method protected onEnableApn(II)V
    .locals 6
    .parameter "apnId"
    .parameter "enabled"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1557
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_APN_ENABLE_REQUEST apnId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", apnType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", dataEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabledCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isApnTypeActive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1562
    if-ne p2, v4, :cond_3

    .line 1563
    monitor-enter p0

    .line 1564
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v2, v2, p1

    if-nez v2, :cond_0

    .line 1565
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, p1

    .line 1566
    iget v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    .line 1568
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1569
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v1

    .line 1570
    .local v1, type:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1571
    iput-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    .line 1572
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onEnableNewApn()V

    .line 1607
    .end local v1           #type:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1568
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1574
    .restart local v1       #type:Ljava/lang/String;
    :cond_2
    const-string v2, "apnSwitched"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->notifyApnIdUpToCurrent(Ljava/lang/String;I)V

    goto :goto_0

    .line 1578
    .end local v1           #type:Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    .line 1579
    .local v0, didDisable:Z
    monitor-enter p0

    .line 1580
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v2, v2, p1

    if-eqz v2, :cond_4

    .line 1581
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, p1

    .line 1582
    iget v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    .line 1583
    const/4 v0, 0x1

    .line 1585
    :cond_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1589
    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->htcRequireDisconnect_disablingApn(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1591
    const-string v2, "dataDisabled"

    invoke-virtual {p0, v4, p1, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->onCleanUpConnection(ZILjava/lang/String;)V

    .line 1595
    const-string v2, "dataDisabled"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->notifyApnIdDisconnected(Ljava/lang/String;I)V

    .line 1596
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v2, v2, v5

    if-ne v2, v4, :cond_1

    const-string v2, "default"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1602
    const-string v2, "default"

    iput-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    .line 1603
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onEnableNewApn()V

    goto :goto_0

    .line 1585
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method protected onEnableNewApn()V
    .locals 0

    .prologue
    .line 1616
    return-void
.end method

.method protected abstract onRadioAvailable()V
.end method

.method protected abstract onRadioOffOrNotAvailable()V
.end method

.method protected onResetDone(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    .line 1626
    const-string v1, "EVENT_RESET_DONE"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1627
    const/4 v0, 0x0

    .line 1628
    .local v0, reason:Ljava/lang/String;
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1629
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v0           #reason:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1631
    .restart local v0       #reason:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V

    .line 1632
    return-void
.end method

.method protected onRoamingEnabled()V
    .locals 0

    .prologue
    .line 935
    return-void
.end method

.method protected abstract onRoamingOff()V
.end method

.method protected abstract onRoamingOn()V
.end method

.method protected onSetDependencyMet(Ljava/lang/String;Z)V
    .locals 0
    .parameter "apnType"
    .parameter "met"

    .prologue
    .line 1745
    return-void
.end method

.method protected onSetInternalDataEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1672
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1673
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mInternalDataEnabled:Z

    .line 1674
    if-eqz p1, :cond_0

    .line 1675
    const-string v0, "onSetInternalDataEnabled: changed to enabled, try to setup data call"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1676
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->resetAllRetryCounts()V

    .line 1677
    const-string v0, "dataEnabled"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->onTrySetupData(Ljava/lang/String;)Z

    .line 1682
    :goto_0
    monitor-exit v1

    .line 1683
    return-void

    .line 1679
    :cond_0
    const-string v0, "onSetInternalDataEnabled: changed to disabled, cleanUpAllConnections"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1680
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    goto :goto_0

    .line 1682
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onSetPolicyDataEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 1748
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1749
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getAnyDataEnabled()Z

    move-result v0

    .line 1750
    .local v0, prevEnabled:Z
    iget-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sPolicyDataEnabled:Z

    if-eq v1, p1, :cond_0

    .line 1751
    iput-boolean p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sPolicyDataEnabled:Z

    .line 1752
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getAnyDataEnabled()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1753
    if-nez v0, :cond_1

    .line 1754
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->resetAllRetryCounts()V

    .line 1755
    const-string v1, "dataEnabled"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->onTrySetupData(Ljava/lang/String;)Z

    .line 1761
    :cond_0
    :goto_0
    monitor-exit v2

    .line 1762
    return-void

    .line 1757
    :cond_1
    const-string v1, "dataDisabled"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->onCleanUpAllConnections(Ljava/lang/String;)V

    goto :goto_0

    .line 1761
    .end local v0           #prevEnabled:Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onSetUserDataEnabled(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    .line 1701
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1706
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->HtcGetAnyDataEnabled(Lcom/android/internal/telephony/ApnContext;)Z

    move-result v0

    .line 1707
    .local v0, prevEnabled:Z
    iget-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserDataEnabled:Z

    if-eq v1, p1, :cond_0

    .line 1708
    iput-boolean p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserDataEnabled:Z

    .line 1709
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mobile_data"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1712
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->HtcCustomize_switchOffLte(Z)V

    .line 1717
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->HtcGetAnyDataEnabled(Lcom/android/internal/telephony/ApnContext;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1719
    if-nez v0, :cond_2

    .line 1720
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->resetAllRetryCounts()V

    .line 1721
    const-string v1, "dataEnabled"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->onTrySetupData(Ljava/lang/String;)Z

    .line 1732
    :cond_0
    :goto_1
    monitor-exit v2

    .line 1733
    return-void

    .line 1709
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1727
    :cond_2
    const-string v1, "dataDisabled"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->HtcOnCleanUpAllConnections(Ljava/lang/String;)V

    goto :goto_1

    .line 1732
    .end local v0           #prevEnabled:Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected abstract onTrySetupData(Ljava/lang/String;)Z
.end method

.method protected abstract onVoiceCallEnded()V
.end method

.method protected abstract onVoiceCallStarted()V
.end method

.method protected resetAllRetryCounts()V
    .locals 3

    .prologue
    .line 1787
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

    .line 1788
    .local v0, dc:Lcom/android/internal/telephony/DataConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    goto :goto_0

    .line 1790
    .end local v0           #dc:Lcom/android/internal/telephony/DataConnection;
    :cond_0
    return-void
.end method

.method protected abstract restartDataStallAlarm()V
.end method

.method protected abstract restartRadio()V
.end method

.method public setDataConnectionAsDesired(ZLandroid/os/Message;)V
    .locals 1
    .parameter "desiredPowerState"
    .parameter "onCompleteMsg"

    .prologue
    .line 1793
    const-string v0, "[DUMMY API cdmadataconnectiontracker setDataConnectionAsDesired"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method public setDataEnabled(Z)Z
    .locals 2
    .parameter "enable"

    .prologue
    .line 2100
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker;->LOG_TAG:Ljava/lang/String;

    const-string v1, "*** Dummy API setDataEnabled in DataConnectionTracker ***"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2121
    const/4 v0, 0x1

    return v0
.end method

.method public setDataOnNationalRoamingMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 943
    return-void
.end method

.method public setDataOnRoamingEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 997
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v1

    if-eq v1, p1, :cond_0

    .line 998
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 999
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v2, "data_roaming"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1002
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :cond_0
    return-void

    .line 999
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected setEnabled(IZ)V
    .locals 3
    .parameter "id"
    .parameter "enable"

    .prologue
    .line 1543
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") with old state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and enabledCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1547
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserIntentionOfApn:[Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/DataConnectionTracker$UserIntention;->increase(Z)V

    .line 1549
    const v1, 0x4200d

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1550
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1551
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 1552
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 1553
    return-void

    .line 1551
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setGlobalDataRoamingOption(I)V
    .locals 3
    .parameter "roamingOption"

    .prologue
    .line 906
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getGlobalDataRoamingOption()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 907
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGlobalDataRoamingOption() roamingOption = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vzw_global_roaming_options"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 910
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 911
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker;->LOG_TAG:Ljava/lang/String;

    const-string v1, "phone.getServiceState().getRoaming() = true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    if-lez p1, :cond_0

    .line 914
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->resetAllRetryCounts()V

    .line 915
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mRetryMgr.resetRetryCount();"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    :cond_0
    const v0, 0x4200b

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 918
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker;->LOG_TAG:Ljava/lang/String;

    const-string v1, "sendMessage(obtainMessage(EVENT_ROAMING_ON))"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    :cond_1
    return-void
.end method

.method public setInternalDataEnabled(Z)Z
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v2, 0x1

    .line 1663
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setInternalDataEnabled("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1665
    const v1, 0x4201b

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1666
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1667
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 1668
    return v2

    .line 1666
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 2183
    invoke-direct {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->printNotImplmentedMsg()V

    return-void
.end method

.method public setPolicyDataEnabled(Z)Z
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v2, 0x1

    .line 2140
    sget-boolean v1, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_MM_CONFIG:Z

    if-eqz v1, :cond_1

    .line 2142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPolicyDataEnabled("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2144
    const v1, 0x42020

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2145
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2146
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 2150
    .end local v0           #msg:Landroid/os/Message;
    :goto_1
    return v2

    .line 2145
    .restart local v0       #msg:Landroid/os/Message;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2149
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker;->LOG_TAG:Ljava/lang/String;

    const-string v3, "*** Dummy API setPolicyDataEnabled in DataConnectionTracker ***"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setRoamingConfirmed(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 938
    iput-boolean p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRoamingFirstConfirmed:Z

    .line 939
    return-void
.end method

.method protected abstract setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V
.end method

.method public setUserDataEnabled(Z)Z
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v2, 0x1

    .line 2126
    sget-boolean v1, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_MM_CONFIG:Z

    if-eqz v1, :cond_1

    .line 2128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUserDataEnabled("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2130
    const v1, 0x4201d

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2131
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2132
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 2136
    .end local v0           #msg:Landroid/os/Message;
    :goto_1
    return v2

    .line 2131
    .restart local v0       #msg:Landroid/os/Message;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2135
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker;->LOG_TAG:Ljava/lang/String;

    const-string v3, "*** Dummy API setUserDataEnabled in DataConnectionTracker ***"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected abstract startNetStatPoll()V
.end method

.method protected startNetStatPollwithoutResetPollStatus()V
    .locals 2

    .prologue
    .line 1046
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker;->LOG_TAG:Ljava/lang/String;

    const-string v1, "FIX!! DUMMY DCT should not be called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected abstract stopNetStatPoll()V
.end method

.method protected whiteList_Check(Ljava/lang/String;)Z
    .locals 13
    .parameter "requestType"

    .prologue
    const/4 v9, 0x1

    .line 1825
    const/4 v0, 0x0

    .line 1826
    .local v0, allow:Z
    const-string v10, "ro.net.apnwhitelist"

    const-string v11, "mms,admin"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1827
    .local v7, wList:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getMobileDataSettingEnabled()Z

    move-result v5

    .line 1829
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

    .line 1833
    if-ne v5, v9, :cond_0

    .line 1834
    const-string v10, "RIL"

    const-string v11, "[whitelist] setting is true, ignore white list, return true"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    :goto_0
    return v9

    .line 1839
    :cond_0
    const-string v9, "none"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1840
    const-string v9, "RIL"

    const-string v10, "[whitelist] is none, return false"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    const/4 v9, 0x0

    goto :goto_0

    .line 1847
    :cond_1
    :try_start_0
    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 1863
    .local v8, wTypes:[Ljava/lang/String;
    :goto_1
    move-object v1, v8

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_2
    if-ge v3, v4, :cond_4

    aget-object v6, v1, v3

    .line 1865
    .local v6, type:Ljava/lang/String;
    const-string v9, "default"

    invoke-static {v6, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1863
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1848
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #type:Ljava/lang/String;
    .end local v8           #wTypes:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1849
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

    .line 1851
    const-string v9, "mms,admin"

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .restart local v8       #wTypes:[Ljava/lang/String;
    goto :goto_1

    .line 1868
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v6       #type:Ljava/lang/String;
    :cond_3
    invoke-static {p1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1869
    const/4 v0, 0x1

    goto :goto_3

    .line 1872
    .end local v6           #type:Ljava/lang/String;
    :cond_4
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

    .line 1873
    goto :goto_0
.end method

.method public wifi2GRetry()V
    .locals 0

    .prologue
    .line 2208
    return-void
.end method
