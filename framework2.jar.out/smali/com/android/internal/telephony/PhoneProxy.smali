.class public Lcom/android/internal/telephony/PhoneProxy;
.super Landroid/os/Handler;
.source "PhoneProxy.java"

# interfaces
.implements Lcom/android/internal/telephony/Phone;
.implements Lcom/android/internal/telephony/HtcIfPhoneProxy;


# static fields
.field private static final DEBUG_PDN_SETTING_INTERFACE:Z = false

#the value of this static final field might be set in the static constructor
.field private static final ENABLE_PDN_SETTING_INTERFACE:Z = false

.field private static final EVENT_ENTER_LPM:I = 0x2

.field private static final EVENT_GET_DEVICE_IDENTITY_DONE:I = 0x65

.field private static final EVENT_GET_IMEISV_DONE:I = 0x67

.field private static final EVENT_GET_IMEI_DONE:I = 0x66

.field private static final EVENT_HTC_GET_DEVICE_MFG_CODE_IN_NV:I = 0x6f

.field private static final EVENT_HTC_GET_PDN_SETTING2:I = 0x6a

.field private static final EVENT_HTC_GET_PDN_SETTING2_CONT:I = 0x6b

.field private static final EVENT_HTC_GET_PDN_SETTING2_RESULT:I = 0x6c

.field private static final EVENT_HTC_SET_PDN_SETTING2:I = 0x6d

.field private static final EVENT_HTC_SET_PDN_SETTING2_RESULT:I = 0x6e

.field private static final EVENT_POLL_STATE_CDMA_SUBSCRIPTION:I = 0x69

.field private static final EVENT_RADIO_AVAILABLE:I = 0x68

.field private static final EVENT_RADIO_STATE_CHANGED:I = 0x4

.field private static final EVENT_RADIO_TECHNOLOGY_CHANGED:I = 0x1

.field protected static final EVENT_REQUESET_PHONE_CLASS_CHANGE_DONE:I = 0x64

.field private static final EVENT_REQUEST_VOICE_RADIO_TECH_DONE:I = 0x5

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x7

.field private static final EVENT_SET_RADIO_POWER:I = 0x6

.field private static final EVENT_VOICE_RADIO_TECHNOLOGY_CHANGED:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field public static final lockForRadioTechnologyChange:Ljava/lang/Object;

.field private static final pdnIpTypes:[Ljava/lang/String;

.field private static final pdnLables_Spcs:[Ljava/lang/String;

.field private static final pdnLables_Vzw:[Ljava/lang/String;


# instance fields
.field protected mActivePhone:Lcom/android/internal/telephony/Phone;

.field protected mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

.field private mDct:Lcom/android/internal/telephony/DataConnectionTracker;

.field private mDesiredPowerState:Z

.field private mDeviceMfgCodeRequested:Ljava/lang/Integer;

.field private mEsn:Ljava/lang/String;

.field private mHtcTelephony:Lcom/android/internal/telephony/HtcTelephony;

.field private mHtcTelephonyInternal:Lcom/android/internal/telephony/HtcTelephonyInternal;

.field private mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

.field protected mIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

.field protected mIccSmsInterfaceManagerProxy:Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;

.field private mImei:Ljava/lang/String;

.field private mImeiSv:Ljava/lang/String;

.field private mMeid:Ljava/lang/String;

.field protected mOutgoingPhone:Ljava/lang/String;

.field protected mPhoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;

.field private mResetModemOnRadioTechnologyChange:Z

.field private notifyModemStorageStatus:Z

.field private rilPhoneClassChangeWithType:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    .line 2110
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x61

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xad

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x2a

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x2b

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x52

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x5a

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xaa

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x49

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    .line 2302
    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "IPv4"

    aput-object v3, v0, v1

    const-string v3, "IPv6"

    aput-object v3, v0, v2

    const-string v3, "IPv4v6"

    aput-object v3, v0, v5

    sput-object v0, Lcom/android/internal/telephony/PhoneProxy;->pdnIpTypes:[Ljava/lang/String;

    .line 2439
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "1"

    aput-object v3, v0, v1

    const-string v3, "2"

    aput-object v3, v0, v2

    const-string v3, "3"

    aput-object v3, v0, v5

    const-string v3, "4"

    aput-object v3, v0, v6

    const/4 v3, 0x4

    const-string v4, "5"

    aput-object v4, v0, v3

    sput-object v0, Lcom/android/internal/telephony/PhoneProxy;->pdnLables_Vzw:[Ljava/lang/String;

    .line 2440
    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "ota"

    aput-object v3, v0, v1

    const-string v1, "internet"

    aput-object v1, v0, v2

    const-string v1, "pam"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/PhoneProxy;->pdnLables_Spcs:[Ljava/lang/String;

    return-void

    :cond_1
    move v0, v1

    .line 2110
    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 6
    .parameter "phone"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 139
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 86
    iput-boolean v3, p0, Lcom/android/internal/telephony/PhoneProxy;->mResetModemOnRadioTechnologyChange:Z

    .line 130
    iput-object v5, p0, Lcom/android/internal/telephony/PhoneProxy;->mHtcTelephonyInternal:Lcom/android/internal/telephony/HtcTelephonyInternal;

    .line 131
    iput-object v5, p0, Lcom/android/internal/telephony/PhoneProxy;->mHtcTelephony:Lcom/android/internal/telephony/HtcTelephony;

    .line 140
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .line 143
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    new-instance v4, Lcom/android/internal/telephony/IccCardProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v4, v1}, Lcom/android/internal/telephony/IccCardProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v4, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    .line 145
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 146
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    invoke-interface {v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->setHtcIccCardProxy(Lcom/android/internal/telephony/IccCardProxy;)V

    .line 150
    :cond_0
    const-string v1, "persist.radio.reset_on_switch"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mResetModemOnRadioTechnologyChange:Z

    .line 152
    new-instance v1, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;-><init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccSmsInterfaceManagerProxy:Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;

    .line 154
    new-instance v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;-><init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    .line 156
    new-instance v1, Lcom/android/internal/telephony/PhoneSubInfoProxy;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/PhoneSubInfoProxy;-><init>(Lcom/android/internal/telephony/PhoneSubInfo;)V

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mPhoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;

    .line 157
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 159
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 170
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x68

    invoke-interface {v1, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 174
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x2

    invoke-interface {v1, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForEnterLowPowerMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 180
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x4

    invoke-interface {v1, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 181
    sget-boolean v1, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_MM_CONFIG:Z

    if-eqz v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "airplane_mode_on"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 184
    .local v0, airplaneMode:I
    if-gtz v0, :cond_6

    :goto_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mDesiredPowerState:Z

    .line 185
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mDesiredPowerState:Z

    invoke-virtual {v1, v2, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->setDataConnectionAsDesired(ZLandroid/os/Message;)V

    .line 187
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x3

    invoke-interface {v1, p0, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForVoiceRadioTechChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 192
    .end local v0           #airplaneMode:I
    :cond_1
    const-string v1, "htctelephonyinternal"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_2

    .line 193
    new-instance v1, Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v1, v2, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mHtcTelephonyInternal:Lcom/android/internal/telephony/HtcTelephonyInternal;

    .line 194
    const-string v1, "PHONE"

    const-string v2, "ServiceManager.addService:htctelephonyinternal"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string v1, "htctelephonyinternal"

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mHtcTelephonyInternal:Lcom/android/internal/telephony/HtcTelephonyInternal;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 201
    :cond_2
    const-string v1, "htctelephony"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/internal/telephony/PhoneFactory;->enableFullyIHtcTelephony:Z

    if-nez v1, :cond_3

    .line 202
    new-instance v1, Lcom/android/internal/telephony/HtcTelephony;

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v1, v2, v4}, Lcom/android/internal/telephony/HtcTelephony;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mHtcTelephony:Lcom/android/internal/telephony/HtcTelephony;

    .line 203
    const-string v1, "PHONE"

    const-string v2, "ServiceManager.addService:htctelephony"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const-string v1, "htctelephony"

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mHtcTelephony:Lcom/android/internal/telephony/HtcTelephony;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 210
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    instance-of v1, v1, Lcom/android/internal/telephony/PhoneBase;

    if-eqz v1, :cond_4

    .line 211
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/PhoneBase;->sendEmergencyPlusCallBackModeStatus(Z)V

    .line 214
    :cond_4
    return-void

    :cond_5
    move v1, v3

    .line 150
    goto/16 :goto_0

    .restart local v0       #airplaneMode:I
    :cond_6
    move v2, v3

    .line 184
    goto :goto_1
.end method

.method private getMMDataConnectionTracker(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "mmdctClass"

    .prologue
    .line 2212
    move-object v0, p1

    .line 2213
    .local v0, mmdt:Ljava/lang/Object;
    if-eqz p1, :cond_0

    .line 2214
    instance-of v1, p1, Ljava/lang/Exception;

    if-nez v1, :cond_0

    .line 2215
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v1, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 2218
    .end local v0           #mmdt:Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method private getMMDataConnectionTrackerClass()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 2202
    const/4 v0, 0x0

    .line 2204
    .local v0, cls:Ljava/lang/Class;
    :try_start_0
    const-string v2, "com.android.internal.telephony.MMDataConnectionTracker"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 2208
    :goto_0
    return-object v1

    .line 2205
    :catch_0
    move-exception v1

    .line 2206
    .local v1, ex:Ljava/lang/Exception;
    goto :goto_0
.end method

.method private getPdnSettings2Cont_handling(IILandroid/os/AsyncResult;Landroid/os/Handler;)V
    .locals 11
    .parameter "requestType"
    .parameter "resultType"
    .parameter "ar"
    .parameter "remainingHandling"

    .prologue
    .line 2548
    sget-boolean v8, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    if-eqz v8, :cond_1

    .line 2549
    iget-object v8, p3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v8, [Ljava/lang/Object;

    move-object v3, v8

    check-cast v3, [Ljava/lang/Object;

    .line 2550
    .local v3, msgDataArray:[Ljava/lang/Object;
    const/4 v8, 0x1

    aget-object v8, v3, v8

    check-cast v8, Lcom/android/internal/telephony/APNParam;

    move-object v4, v8

    check-cast v4, Lcom/android/internal/telephony/APNParam;

    .line 2551
    .local v4, pdnParam:Lcom/android/internal/telephony/APNParam;
    const/4 v8, 0x2

    aget-object v8, v3, v8

    check-cast v8, Landroid/os/Message;

    move-object v6, v8

    check-cast v6, Landroid/os/Message;

    .line 2552
    .local v6, request:Landroid/os/Message;
    const/4 v8, 0x3

    aget-object v8, v3, v8

    check-cast v8, [Ljava/lang/String;

    move-object v7, v8

    check-cast v7, [Ljava/lang/String;

    .line 2554
    .local v7, result:[Ljava/lang/String;
    iget-object v8, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_3

    .line 2556
    iget-object v8, p3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-direct {p0, p2, v8, v7}, Lcom/android/internal/telephony/PhoneProxy;->processQueryPdnFromModem(ILjava/lang/Object;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2559
    const/4 v8, 0x0

    aget-object v8, v3, v8

    check-cast v8, [Ljava/lang/String;

    move-object v1, v8

    check-cast v1, [Ljava/lang/String;

    .line 2560
    .local v1, knownPdns:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 2561
    .local v0, index:I
    :goto_0
    array-length v8, v1

    if-ge v0, v8, :cond_0

    iget-object v8, v4, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    aget-object v9, v1, v0

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2562
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2564
    :cond_0
    array-length v8, v1

    if-ge v0, v8, :cond_2

    .line 2565
    const-string v8, "PHONE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Query PDN(cont) "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2566
    new-instance v5, Lcom/android/internal/telephony/APNParam;

    aget-object v8, v1, v0

    iget v9, v4, Lcom/android/internal/telephony/APNParam;->rat:I

    invoke-direct {v5, v8, v9}, Lcom/android/internal/telephony/APNParam;-><init>(Ljava/lang/String;I)V

    .line 2567
    .end local v4           #pdnParam:Lcom/android/internal/telephony/APNParam;
    .local v5, pdnParam:Lcom/android/internal/telephony/APNParam;
    const/16 v8, 0x6b

    invoke-virtual {p4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2568
    .local v2, msg:Landroid/os/Message;
    const/4 v8, 0x1

    aput-object v5, v3, v8

    .line 2569
    const/4 v8, 0x3

    aput-object v7, v3, v8

    .line 2570
    iput p1, v2, Landroid/os/Message;->arg1:I

    .line 2571
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2572
    const/4 v8, 0x0

    aget-object v8, v3, v8

    invoke-direct {p0, v5, v2, v8}, Lcom/android/internal/telephony/PhoneProxy;->queryPdnFromModem(Lcom/android/internal/telephony/APNParam;Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Exception;

    move-result-object v8

    iput-object v8, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v4, v5

    .line 2582
    .end local v0           #index:I
    .end local v1           #knownPdns:[Ljava/lang/String;
    .end local v2           #msg:Landroid/os/Message;
    .end local v5           #pdnParam:Lcom/android/internal/telephony/APNParam;
    .restart local v4       #pdnParam:Lcom/android/internal/telephony/APNParam;
    :goto_1
    iget-object v8, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_1

    .line 2583
    invoke-direct {p0, p1, p2, v7}, Lcom/android/internal/telephony/PhoneProxy;->processQueryResultBasedOnRequest(II[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v6, v8, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2586
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 2589
    .end local v3           #msgDataArray:[Ljava/lang/Object;
    .end local v4           #pdnParam:Lcom/android/internal/telephony/APNParam;
    .end local v6           #request:Landroid/os/Message;
    .end local v7           #result:[Ljava/lang/String;
    :cond_1
    return-void

    .line 2575
    .restart local v0       #index:I
    .restart local v1       #knownPdns:[Ljava/lang/String;
    .restart local v3       #msgDataArray:[Ljava/lang/Object;
    .restart local v4       #pdnParam:Lcom/android/internal/telephony/APNParam;
    .restart local v6       #request:Landroid/os/Message;
    .restart local v7       #result:[Ljava/lang/String;
    :cond_2
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "End of query PDN(cont)"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v8, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto :goto_1

    .line 2579
    .end local v0           #index:I
    .end local v1           #knownPdns:[Ljava/lang/String;
    :cond_3
    const-string v8, "PHONE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Query PDN(cont) "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ex: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getPdnSettings2Result_handling(IILandroid/os/AsyncResult;)V
    .locals 7
    .parameter "requestType"
    .parameter "resultType"
    .parameter "ar"

    .prologue
    .line 2592
    sget-boolean v4, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    if-eqz v4, :cond_0

    .line 2593
    iget-object v4, p3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    move-object v1, v4

    check-cast v1, [Ljava/lang/Object;

    .line 2594
    .local v1, msgDataArray:[Ljava/lang/Object;
    const/4 v4, 0x1

    aget-object v4, v1, v4

    check-cast v4, Lcom/android/internal/telephony/APNParam;

    check-cast v4, Lcom/android/internal/telephony/APNParam;

    iget-object v0, v4, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    .line 2595
    .local v0, currPdn:Ljava/lang/String;
    const/4 v4, 0x2

    aget-object v4, v1, v4

    check-cast v4, Landroid/os/Message;

    move-object v2, v4

    check-cast v2, Landroid/os/Message;

    .line 2596
    .local v2, request:Landroid/os/Message;
    const/4 v4, 0x3

    aget-object v4, v1, v4

    check-cast v4, [Ljava/lang/String;

    move-object v3, v4

    check-cast v3, [Ljava/lang/String;

    .line 2598
    .local v3, result:[Ljava/lang/String;
    iget-object v4, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1

    .line 2599
    const-string v4, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Query PDN "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " result"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2600
    iget-object v4, p3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-direct {p0, p2, v4, v3}, Lcom/android/internal/telephony/PhoneProxy;->processQueryPdnFromModem(ILjava/lang/Object;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2606
    :goto_0
    invoke-direct {p0, p1, p2, v3}, Lcom/android/internal/telephony/PhoneProxy;->processQueryResultBasedOnRequest(II[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v3, :cond_2

    iget-object v4, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    :goto_1
    invoke-static {v2, v5, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2609
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2611
    .end local v0           #currPdn:Ljava/lang/String;
    .end local v1           #msgDataArray:[Ljava/lang/Object;
    .end local v2           #request:Landroid/os/Message;
    .end local v3           #result:[Ljava/lang/String;
    :cond_0
    return-void

    .line 2603
    .restart local v0       #currPdn:Ljava/lang/String;
    .restart local v1       #msgDataArray:[Ljava/lang/Object;
    .restart local v2       #request:Landroid/os/Message;
    .restart local v3       #result:[Ljava/lang/String;
    :cond_1
    const-string v4, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Query PDN "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2606
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getPdnSettings2_handling(I[Ljava/lang/Object;Landroid/os/Handler;)V
    .locals 17
    .parameter "requestType"
    .parameter "requestObj"
    .parameter "remainingHandling"

    .prologue
    .line 2448
    const/4 v14, 0x1

    aget-object v13, p2, v14

    check-cast v13, Landroid/os/Message;

    .line 2449
    .local v13, request:Landroid/os/Message;
    if-eqz v13, :cond_3

    .line 2450
    const/4 v1, 0x0

    .line 2451
    .local v1, errorResult:Ljava/lang/Exception;
    const/4 v14, 0x0

    aget-object v14, p2, v14

    check-cast v14, [Ljava/lang/String;

    move-object v12, v14

    check-cast v12, [Ljava/lang/String;

    .line 2452
    .local v12, queryCmds:[Ljava/lang/String;
    sget-boolean v14, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    if-eqz v14, :cond_8

    if-eqz v12, :cond_8

    .line 2453
    const/4 v3, 0x0

    .line 2454
    .local v3, givenProjectId:Ljava/lang/String;
    const/4 v2, 0x0

    .line 2455
    .local v2, givenNetworkType:Ljava/lang/String;
    const/4 v4, 0x0

    .line 2457
    .local v4, givenQueryPdn:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 2474
    :cond_0
    :goto_0
    const/4 v6, 0x0

    .line 2475
    .local v6, msg:Landroid/os/Message;
    const/4 v14, 0x4

    new-array v7, v14, [Ljava/lang/Object;

    .line 2477
    .local v7, msgDataArray:[Ljava/lang/Object;
    move-object v10, v4

    .line 2478
    .local v10, pdnType:Ljava/lang/String;
    const-string v14, "PHONE"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Query PDN "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2479
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_5

    .line 2480
    :cond_1
    const/4 v11, -0x1

    .line 2482
    .local v11, project:I
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 2484
    :goto_1
    const/4 v5, 0x0

    .line 2485
    .local v5, knownPdns:[Ljava/lang/String;
    sparse-switch v11, :sswitch_data_0

    .line 2489
    :goto_2
    if-eqz v5, :cond_4

    .line 2490
    const/4 v14, 0x0

    aput-object v5, v7, v14

    .line 2491
    const/4 v14, 0x0

    aget-object v10, v5, v14

    .line 2492
    const/16 v14, 0x6b

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 2502
    .end local v5           #knownPdns:[Ljava/lang/String;
    .end local v11           #project:I
    :goto_3
    const/4 v9, 0x0

    .line 2503
    .local v9, pdnParam:Lcom/android/internal/telephony/APNParam;
    const/4 v8, 0x0

    .line 2504
    .local v8, networkType:I
    if-eqz v10, :cond_2

    .line 2506
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    .line 2508
    :goto_4
    sparse-switch v8, :sswitch_data_1

    .line 2521
    :cond_2
    :goto_5
    if-eqz v9, :cond_6

    .line 2522
    const/4 v14, 0x1

    aput-object v9, v7, v14

    .line 2523
    const/4 v14, 0x2

    aput-object v13, v7, v14

    .line 2524
    const/4 v14, 0x3

    const/4 v15, 0x0

    aput-object v15, v7, v14

    .line 2525
    move/from16 v0, p1

    iput v0, v6, Landroid/os/Message;->arg1:I

    .line 2526
    iput-object v7, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2527
    const/4 v14, 0x0

    aget-object v14, v7, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v6, v14}, Lcom/android/internal/telephony/PhoneProxy;->queryPdnFromModem(Lcom/android/internal/telephony/APNParam;Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Exception;

    move-result-object v1

    .line 2539
    .end local v2           #givenNetworkType:Ljava/lang/String;
    .end local v3           #givenProjectId:Ljava/lang/String;
    .end local v4           #givenQueryPdn:Ljava/lang/String;
    .end local v6           #msg:Landroid/os/Message;
    .end local v7           #msgDataArray:[Ljava/lang/Object;
    .end local v8           #networkType:I
    .end local v9           #pdnParam:Lcom/android/internal/telephony/APNParam;
    .end local v10           #pdnType:Ljava/lang/String;
    :goto_6
    if-eqz v1, :cond_3

    .line 2540
    const/4 v14, 0x0

    invoke-static {v13, v14, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2541
    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    .line 2545
    .end local v1           #errorResult:Ljava/lang/Exception;
    .end local v12           #queryCmds:[Ljava/lang/String;
    :cond_3
    return-void

    .line 2459
    .restart local v1       #errorResult:Ljava/lang/Exception;
    .restart local v2       #givenNetworkType:Ljava/lang/String;
    .restart local v3       #givenProjectId:Ljava/lang/String;
    .restart local v4       #givenQueryPdn:Ljava/lang/String;
    .restart local v12       #queryCmds:[Ljava/lang/String;
    :pswitch_0
    array-length v14, v12

    const/4 v15, 0x2

    if-ne v14, v15, :cond_0

    .line 2460
    const/16 v14, 0xa8

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 2461
    const/4 v14, 0x0

    aget-object v2, v12, v14

    .line 2462
    const/4 v14, 0x1

    aget-object v4, v12, v14

    goto/16 :goto_0

    .line 2466
    :pswitch_1
    array-length v14, v12

    const/4 v15, 0x3

    if-ne v14, v15, :cond_0

    .line 2467
    const/4 v14, 0x0

    aget-object v3, v12, v14

    .line 2468
    const/4 v14, 0x1

    aget-object v2, v12, v14

    .line 2469
    const/4 v14, 0x2

    aget-object v4, v12, v14

    goto/16 :goto_0

    .line 2486
    .restart local v5       #knownPdns:[Ljava/lang/String;
    .restart local v6       #msg:Landroid/os/Message;
    .restart local v7       #msgDataArray:[Ljava/lang/Object;
    .restart local v10       #pdnType:Ljava/lang/String;
    .restart local v11       #project:I
    :sswitch_0
    sget-object v5, Lcom/android/internal/telephony/PhoneProxy;->pdnLables_Vzw:[Ljava/lang/String;

    goto :goto_2

    .line 2487
    :sswitch_1
    sget-object v5, Lcom/android/internal/telephony/PhoneProxy;->pdnLables_Spcs:[Ljava/lang/String;

    goto :goto_2

    .line 2495
    :cond_4
    const/4 v10, 0x0

    goto :goto_3

    .line 2499
    .end local v5           #knownPdns:[Ljava/lang/String;
    .end local v11           #project:I
    :cond_5
    const/16 v14, 0x6c

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    goto :goto_3

    .line 2510
    .restart local v8       #networkType:I
    .restart local v9       #pdnParam:Lcom/android/internal/telephony/APNParam;
    :sswitch_2
    new-instance v9, Lcom/android/internal/telephony/APNParam;

    .end local v9           #pdnParam:Lcom/android/internal/telephony/APNParam;
    const/4 v14, 0x1

    invoke-direct {v9, v10, v14}, Lcom/android/internal/telephony/APNParam;-><init>(Ljava/lang/String;I)V

    .line 2511
    .restart local v9       #pdnParam:Lcom/android/internal/telephony/APNParam;
    goto :goto_5

    .line 2513
    :sswitch_3
    new-instance v9, Lcom/android/internal/telephony/APNParam;

    .end local v9           #pdnParam:Lcom/android/internal/telephony/APNParam;
    const/4 v14, 0x2

    invoke-direct {v9, v10, v14}, Lcom/android/internal/telephony/APNParam;-><init>(Ljava/lang/String;I)V

    .line 2514
    .restart local v9       #pdnParam:Lcom/android/internal/telephony/APNParam;
    goto :goto_5

    .line 2516
    :sswitch_4
    new-instance v9, Lcom/android/internal/telephony/APNParam;

    .end local v9           #pdnParam:Lcom/android/internal/telephony/APNParam;
    const/4 v14, 0x4

    invoke-direct {v9, v10, v14}, Lcom/android/internal/telephony/APNParam;-><init>(Ljava/lang/String;I)V

    .restart local v9       #pdnParam:Lcom/android/internal/telephony/APNParam;
    goto :goto_5

    .line 2530
    :cond_6
    const-string v15, "PHONE"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Query PDN parm incorrect "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    if-eqz v12, :cond_7

    array-length v14, v12

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    :goto_7
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    new-instance v1, Ljava/lang/Exception;

    .end local v1           #errorResult:Ljava/lang/Exception;
    const-string v14, "Incorrect Format"

    invoke-direct {v1, v14}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v1       #errorResult:Ljava/lang/Exception;
    goto :goto_6

    .line 2530
    :cond_7
    const-string v14, "null"

    goto :goto_7

    .line 2535
    .end local v2           #givenNetworkType:Ljava/lang/String;
    .end local v3           #givenProjectId:Ljava/lang/String;
    .end local v4           #givenQueryPdn:Ljava/lang/String;
    .end local v6           #msg:Landroid/os/Message;
    .end local v7           #msgDataArray:[Ljava/lang/Object;
    .end local v8           #networkType:I
    .end local v9           #pdnParam:Lcom/android/internal/telephony/APNParam;
    .end local v10           #pdnType:Ljava/lang/String;
    :cond_8
    const-string v15, "PHONE"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Query PDN parm incorrect "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    if-eqz v12, :cond_9

    array-length v14, v12

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    :goto_8
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, ", "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-boolean v16, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2537
    new-instance v1, Ljava/lang/Exception;

    .end local v1           #errorResult:Ljava/lang/Exception;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Incorrect Parameters - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-boolean v15, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v1, v14}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v1       #errorResult:Ljava/lang/Exception;
    goto/16 :goto_6

    .line 2535
    :cond_9
    const-string v14, "null"

    goto :goto_8

    .line 2483
    .restart local v2       #givenNetworkType:Ljava/lang/String;
    .restart local v3       #givenProjectId:Ljava/lang/String;
    .restart local v4       #givenQueryPdn:Ljava/lang/String;
    .restart local v6       #msg:Landroid/os/Message;
    .restart local v7       #msgDataArray:[Ljava/lang/Object;
    .restart local v10       #pdnType:Ljava/lang/String;
    .restart local v11       #project:I
    :catch_0
    move-exception v14

    goto/16 :goto_1

    .line 2507
    .end local v11           #project:I
    .restart local v8       #networkType:I
    .restart local v9       #pdnParam:Lcom/android/internal/telephony/APNParam;
    :catch_1
    move-exception v14

    goto/16 :goto_4

    .line 2457
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2485
    :sswitch_data_0
    .sparse-switch
        0x94 -> :sswitch_1
        0xa8 -> :sswitch_0
    .end sparse-switch

    .line 2508
    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_2
        0xd -> :sswitch_4
        0xe -> :sswitch_3
    .end sparse-switch
.end method

.method private htcDmCommandForMfgCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3210
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x51

    if-eq v0, v1, :cond_0

    .line 3232
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 3216
    :cond_0
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xdc

    if-ne v0, v1, :cond_1

    .line 3218
    const-string v0, "C8F83B00"

    goto :goto_0

    .line 3221
    :cond_1
    const-string v0, "C8F88D00"

    goto :goto_0
.end method

.method private htcParseMfgCode(Landroid/os/AsyncResult;)Ljava/lang/Integer;
    .locals 18
    .parameter "ar"

    .prologue
    .line 3247
    const/4 v15, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 3248
    .local v11, resultCode:Ljava/lang/Integer;
    const/4 v1, 0x0

    .line 3249
    .local v1, deviceMfgCode:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v15, :cond_9

    .line 3250
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v15, :cond_e

    .line 3251
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3252
    if-eqz v1, :cond_d

    .line 3253
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/PhoneProxy;->htcDmCommandForMfgCode()Ljava/lang/String;

    move-result-object v2

    .line 3254
    .local v2, dmCmd:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    if-le v15, v0, :cond_c

    .line 3255
    const/4 v15, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 3256
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v1, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 3257
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    shr-int/lit8 v15, v15, 0x1

    new-array v3, v15, [I

    .line 3258
    .local v3, hexConverter:[I
    const/4 v4, 0x0

    .local v4, index:I
    :goto_0
    array-length v15, v3

    if-ge v4, v15, :cond_2

    .line 3259
    add-int/lit8 v14, v4, 0x1

    .line 3260
    .local v14, valueEndPos:I
    array-length v15, v3

    if-ge v14, v15, :cond_1

    .line 3261
    mul-int/lit8 v14, v14, 0x2

    .line 3266
    :goto_1
    const/4 v13, 0x0

    .line 3268
    .local v13, value:I
    mul-int/lit8 v15, v4, 0x2

    :try_start_0
    invoke-virtual {v1, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x10

    invoke-static/range {v15 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 3270
    :goto_2
    add-int/lit8 v15, v4, 0x1

    mul-int/lit8 v15, v15, 0x2

    if-ge v14, v15, :cond_0

    .line 3271
    shl-int/lit8 v15, v13, 0x4

    and-int/lit16 v13, v15, 0xf0

    .line 3273
    :cond_0
    aput v13, v3, v4

    .line 3258
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3264
    .end local v13           #value:I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v14

    goto :goto_1

    .line 3275
    .end local v14           #valueEndPos:I
    :cond_2
    const/4 v10, 0x0

    .line 3278
    .local v10, possibleTextLen:I
    :goto_3
    array-length v15, v3

    if-ge v10, v15, :cond_3

    const/16 v15, 0x20

    aget v16, v3, v10

    move/from16 v0, v16

    if-gt v15, v0, :cond_3

    aget v15, v3, v10

    const/16 v16, 0x7e

    move/from16 v0, v16

    if-gt v15, v0, :cond_3

    .line 3279
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 3281
    :cond_3
    const/4 v15, 0x1

    if-lt v10, v15, :cond_a

    .line 3282
    const/4 v9, 0x0

    .line 3284
    .local v9, possibleRemainingLen:I
    :goto_4
    if-ge v10, v9, :cond_4

    array-length v15, v3

    sub-int/2addr v15, v9

    add-int/lit8 v15, v15, -0x1

    aget v15, v3, v15

    if-nez v15, :cond_4

    .line 3285
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 3287
    :cond_4
    array-length v15, v3

    sub-int/2addr v15, v10

    sub-int v8, v15, v9

    .line 3289
    .local v8, possibleDigitsLen:I
    const/4 v15, 0x5

    invoke-static {v10, v15}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 3290
    .local v6, lenText:I
    sub-int v15, v10, v6

    add-int/2addr v8, v15

    .line 3293
    const/4 v15, 0x3

    invoke-static {v8, v15}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 3295
    .local v5, lenDigits:I
    mul-int/lit8 v15, v5, 0x2

    add-int/2addr v15, v6

    new-array v7, v15, [B

    .line 3296
    .local v7, mfgCode:[B
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v6, :cond_5

    .line 3297
    aget v15, v3, v4

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    aput-byte v15, v7, v4

    .line 3296
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 3299
    :cond_5
    const/4 v4, 0x0

    :goto_6
    if-ge v4, v5, :cond_8

    .line 3300
    add-int v15, v6, v4

    aget v15, v3, v15

    and-int/lit16 v15, v15, 0xf0

    shr-int/lit8 v15, v15, 0x4

    int-to-byte v12, v15

    .line 3301
    .local v12, tmpCode:B
    const/16 v15, 0xa

    if-ge v12, v15, :cond_6

    .line 3302
    add-int/lit8 v15, v12, 0x30

    int-to-byte v12, v15

    .line 3307
    :goto_7
    mul-int/lit8 v15, v4, 0x2

    add-int/2addr v15, v6

    aput-byte v12, v7, v15

    .line 3309
    add-int v15, v6, v4

    aget v15, v3, v15

    and-int/lit8 v15, v15, 0xf

    int-to-byte v12, v15

    .line 3310
    const/16 v15, 0xa

    if-ge v12, v15, :cond_7

    .line 3311
    add-int/lit8 v15, v12, 0x30

    int-to-byte v12, v15

    .line 3316
    :goto_8
    mul-int/lit8 v15, v4, 0x2

    add-int/2addr v15, v6

    add-int/lit8 v15, v15, 0x1

    aput-byte v12, v7, v15

    .line 3299
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 3305
    :cond_6
    add-int/lit8 v15, v12, -0xa

    add-int/lit8 v15, v15, 0x41

    int-to-byte v12, v15

    goto :goto_7

    .line 3314
    :cond_7
    add-int/lit8 v15, v12, -0xa

    add-int/lit8 v15, v15, 0x41

    int-to-byte v12, v15

    goto :goto_8

    .line 3318
    .end local v12           #tmpCode:B
    :cond_8
    const-string v15, "persist.radio.htc_mfg_code"

    new-instance v16, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([B)V

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3319
    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 3341
    .end local v2           #dmCmd:Ljava/lang/String;
    .end local v3           #hexConverter:[I
    .end local v4           #index:I
    .end local v5           #lenDigits:I
    .end local v6           #lenText:I
    .end local v7           #mfgCode:[B
    .end local v8           #possibleDigitsLen:I
    .end local v9           #possibleRemainingLen:I
    .end local v10           #possibleTextLen:I
    :cond_9
    :goto_9
    const-string v15, "PHONE"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")DeviceMfgCode = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3342
    return-object v11

    .line 3322
    .restart local v2       #dmCmd:Ljava/lang/String;
    .restart local v3       #hexConverter:[I
    .restart local v4       #index:I
    .restart local v10       #possibleTextLen:I
    :cond_a
    const/4 v15, 0x7

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_9

    .line 3326
    .end local v3           #hexConverter:[I
    .end local v4           #index:I
    .end local v10           #possibleTextLen:I
    :cond_b
    const/4 v15, 0x6

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_9

    .line 3330
    :cond_c
    const/4 v15, 0x5

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_9

    .line 3334
    .end local v2           #dmCmd:Ljava/lang/String;
    :cond_d
    const/4 v15, 0x4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_9

    .line 3338
    :cond_e
    const/4 v15, 0x3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_9

    .line 3269
    .restart local v2       #dmCmd:Ljava/lang/String;
    .restart local v3       #hexConverter:[I
    .restart local v4       #index:I
    .restart local v13       #value:I
    .restart local v14       #valueEndPos:I
    :catch_0
    move-exception v15

    goto/16 :goto_2
.end method

.method private htcRequestMfgCode()Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 3236
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneProxy;->htcDmCommandForMfgCode()Ljava/lang/String;

    move-result-object v0

    .line 3237
    .local v0, dmCmd:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 3238
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x6f

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->requestHtcDmCommand(Ljava/lang/String;Landroid/os/Message;)V

    .line 3239
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3242
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 529
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneProxy] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    return-void
.end method

.method private notifyModemStorageAvalibility()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3365
    iget-boolean v6, p0, Lcom/android/internal/telephony/PhoneProxy;->notifyModemStorageStatus:Z

    if-eqz v6, :cond_0

    .line 3379
    :goto_0
    return-void

    .line 3368
    :cond_0
    iput-boolean v4, p0, Lcom/android/internal/telephony/PhoneProxy;->notifyModemStorageStatus:Z

    .line 3370
    iget-object v6, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/PhoneBase;->isStorageAreaAvaliable(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v3

    .line 3372
    .local v3, storageAval:Ljava/lang/Boolean;
    :try_start_0
    const-string v6, "com.android.internal.telephony.CommandsInterface"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3373
    .local v0, cls:Ljava/lang/Class;
    const-string v6, "requestSetEncryptionState"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Landroid/os/Message;

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3374
    .local v2, mth:Ljava/lang/reflect/Method;
    iget-object v6, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_1

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v8

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-object v5, v7, v4

    invoke-virtual {v2, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3376
    .end local v0           #cls:Ljava/lang/Class;
    .end local v2           #mth:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 3377
    .local v1, ex:Ljava/lang/Exception;
    const-string v4, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setup storage fail : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v0       #cls:Ljava/lang/Class;
    .restart local v2       #mth:Ljava/lang/reflect/Method;
    :cond_1
    move v4, v5

    .line 3374
    goto :goto_1
.end method

.method private pdnIpTypeLookup(Ljava/lang/String;)I
    .locals 2
    .parameter "givenType"

    .prologue
    .line 2305
    const/4 v0, 0x0

    .line 2306
    .local v0, type:I
    if-eqz p1, :cond_0

    .line 2307
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->pdnIpTypes:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .line 2308
    :goto_0
    if-lez v0, :cond_0

    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->pdnIpTypes:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2309
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2312
    :cond_0
    return v0
.end method

.method private processQueryPdnFromModem(ILjava/lang/Object;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .parameter "resultType"
    .parameter "result"
    .parameter "prevResults"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2316
    move-object v0, p3

    .line 2317
    .local v0, currResults:[Ljava/lang/String;
    sget-boolean v7, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    if-eqz v7, :cond_9

    move-object v4, p2

    .line 2318
    check-cast v4, Lcom/android/internal/telephony/APNParam;

    .line 2319
    .local v4, resultAPNParam:Lcom/android/internal/telephony/APNParam;
    if-eqz v4, :cond_9

    .line 2323
    const/4 v3, 0x6

    .line 2324
    .local v3, itemsAdd:I
    packed-switch p1, :pswitch_data_0

    .line 2327
    :goto_0
    if-nez p3, :cond_a

    .line 2328
    add-int/lit8 v7, v3, 0x1

    new-array v0, v7, [Ljava/lang/String;

    .line 2329
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    .line 2338
    :cond_0
    if-lt v3, v5, :cond_1

    .line 2339
    :try_start_0
    array-length v7, v0

    sub-int/2addr v7, v3

    iget-object v8, v4, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    aput-object v8, v0, v7

    .line 2341
    :cond_1
    const/4 v7, 0x2

    if-lt v3, v7, :cond_2

    .line 2342
    array-length v7, v0

    sub-int/2addr v7, v3

    add-int/lit8 v7, v7, 0x1

    iget v8, v4, Lcom/android/internal/telephony/APNParam;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v7

    .line 2344
    :cond_2
    const/4 v7, 0x3

    if-lt v3, v7, :cond_3

    .line 2345
    array-length v7, v0

    sub-int/2addr v7, v3

    add-int/lit8 v7, v7, 0x2

    iget v8, v4, Lcom/android/internal/telephony/APNParam;->state:I

    if-eqz v8, :cond_b

    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v7

    .line 2347
    :cond_3
    const/4 v5, 0x4

    if-lt v3, v5, :cond_4

    .line 2348
    array-length v5, v0

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x3

    iget-object v6, v4, Lcom/android/internal/telephony/APNParam;->name:Ljava/lang/String;

    aput-object v6, v0, v5

    .line 2350
    :cond_4
    const/4 v5, 0x5

    if-lt v3, v5, :cond_5

    .line 2351
    array-length v5, v0

    sub-int/2addr v5, v3

    add-int/lit8 v6, v5, 0x4

    iget v5, v4, Lcom/android/internal/telephony/APNParam;->type:I

    if-ltz v5, :cond_c

    iget v5, v4, Lcom/android/internal/telephony/APNParam;->type:I

    sget-object v7, Lcom/android/internal/telephony/PhoneProxy;->pdnIpTypes:[Ljava/lang/String;

    array-length v7, v7

    if-ge v5, v7, :cond_c

    sget-object v5, Lcom/android/internal/telephony/PhoneProxy;->pdnIpTypes:[Ljava/lang/String;

    iget v7, v4, Lcom/android/internal/telephony/APNParam;->type:I

    aget-object v5, v5, v7

    :goto_2
    aput-object v5, v0, v6

    .line 2354
    :cond_5
    const/4 v5, 0x6

    if-lt v3, v5, :cond_6

    .line 2355
    array-length v5, v0

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x5

    iget v6, v4, Lcom/android/internal/telephony/APNParam;->timer:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 2357
    :cond_6
    const/4 v5, 0x7

    if-lt v3, v5, :cond_7

    .line 2358
    array-length v5, v0

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x6

    iget v6, v4, Lcom/android/internal/telephony/APNParam;->authType:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 2360
    :cond_7
    const/16 v5, 0x8

    if-lt v3, v5, :cond_8

    .line 2361
    array-length v5, v0

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x7

    iget-object v6, v4, Lcom/android/internal/telephony/APNParam;->user:Ljava/lang/String;

    aput-object v6, v0, v5

    .line 2363
    :cond_8
    const/16 v5, 0x9

    if-lt v3, v5, :cond_9

    .line 2364
    array-length v5, v0

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x8

    iget-object v6, v4, Lcom/android/internal/telephony/APNParam;->password:Ljava/lang/String;

    aput-object v6, v0, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2371
    .end local v3           #itemsAdd:I
    .end local v4           #resultAPNParam:Lcom/android/internal/telephony/APNParam;
    :cond_9
    :goto_3
    return-object v0

    .line 2325
    .restart local v3       #itemsAdd:I
    .restart local v4       #resultAPNParam:Lcom/android/internal/telephony/APNParam;
    :pswitch_0
    const/16 v3, 0x9

    goto/16 :goto_0

    .line 2332
    :cond_a
    array-length v7, p3

    add-int/2addr v7, v3

    new-array v0, v7, [Ljava/lang/String;

    .line 2333
    const/4 v2, 0x0

    .local v2, index:I
    :goto_4
    array-length v7, p3

    if-ge v2, v7, :cond_0

    .line 2334
    aget-object v7, p3, v2

    aput-object v7, v0, v2

    .line 2333
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .end local v2           #index:I
    :cond_b
    move v5, v6

    .line 2345
    goto :goto_1

    .line 2351
    :cond_c
    :try_start_1
    sget-object v5, Lcom/android/internal/telephony/PhoneProxy;->pdnIpTypes:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v5, v5, v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 2366
    :catch_0
    move-exception v1

    .line 2367
    .local v1, ex:Ljava/lang/Exception;
    const-string v5, "PHONE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Parsing PDN ex: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2324
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private processQueryResultBasedOnRequest(II[Ljava/lang/String;)Ljava/lang/Object;
    .locals 10
    .parameter "requestType"
    .parameter "resultType"
    .parameter "prevResults"

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 2380
    const/4 v0, 0x0

    .line 2381
    .local v0, currResults:Ljava/lang/Object;
    sget-boolean v4, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    if-eqz v4, :cond_0

    .line 2382
    packed-switch p1, :pswitch_data_0

    .line 2436
    .end local v0           #currResults:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 2385
    .restart local v0       #currResults:Ljava/lang/Object;
    :pswitch_0
    const/4 v1, 0x0

    .line 2386
    .local v1, formattedResult:Ljava/lang/String;
    packed-switch p2, :pswitch_data_1

    .line 2404
    :cond_1
    :goto_1
    move-object v0, v1

    .line 2406
    .local v0, currResults:Ljava/lang/String;
    goto :goto_0

    .line 2388
    .local v0, currResults:Ljava/lang/Object;
    :pswitch_1
    if-eqz p3, :cond_1

    array-length v4, p3

    if-le v4, v5, :cond_1

    .line 2389
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x2

    aget-object v5, p3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v4, p3, v6

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "1"

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p3, v8

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/PhoneProxy;->pdnIpTypeLookup(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p3, v9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p3, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v4, "0"

    goto :goto_2

    .line 2396
    :pswitch_2
    if-eqz p3, :cond_1

    array-length v4, p3

    if-le v4, v5, :cond_1

    .line 2397
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, p3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v4, p3, v6

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "1"

    :goto_3
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p3, v8

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/PhoneProxy;->pdnIpTypeLookup(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p3, v9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p3, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_3
    const-string v4, "0"

    goto :goto_3

    .line 2409
    .end local v1           #formattedResult:Ljava/lang/String;
    :pswitch_3
    const/4 v1, 0x0

    .line 2410
    .local v1, formattedResult:[Ljava/lang/String;
    packed-switch p2, :pswitch_data_2

    .line 2431
    :cond_4
    :goto_4
    move-object v0, v1

    .local v0, currResults:[Ljava/lang/String;
    goto/16 :goto_0

    .line 2413
    .local v0, currResults:Ljava/lang/Object;
    :pswitch_4
    const/4 v3, -0x1

    .line 2415
    .local v3, profLen:I
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, p3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 2417
    :goto_5
    if-lez v3, :cond_4

    .line 2418
    move-object v1, p3

    .line 2419
    const/4 v2, 0x2

    .line 2420
    .local v2, index:I
    :goto_6
    array-length v4, v1

    if-ge v2, v4, :cond_4

    .line 2421
    add-int/lit8 v4, v2, -0x1

    aget-object v5, p3, v2

    aput-object v5, v1, v4

    .line 2422
    add-int/2addr v2, v3

    goto :goto_6

    .line 2428
    .end local v2           #index:I
    .end local v3           #profLen:I
    :pswitch_5
    move-object v1, p3

    goto :goto_4

    .line 2416
    .restart local v3       #profLen:I
    :catch_0
    move-exception v4

    goto :goto_5

    .line 2382
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 2386
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2410
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private queryPdnFromModem(Lcom/android/internal/telephony/APNParam;Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Exception;
    .locals 14
    .parameter "pdnParam"
    .parameter "msg"
    .parameter "pdnArray"

    .prologue
    .line 2229
    const/4 v8, 0x0

    .line 2231
    .local v8, queryFail:Ljava/lang/Exception;
    sget-boolean v9, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    if-eqz v9, :cond_0

    .line 2232
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneProxy;->getMMDataConnectionTrackerClass()Ljava/lang/Object;

    move-result-object v1

    .line 2233
    .local v1, cls:Ljava/lang/Object;
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneProxy;->getMMDataConnectionTracker(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 2234
    .local v6, mmdt:Ljava/lang/Object;
    if-eqz v6, :cond_5

    .line 2235
    instance-of v9, v6, Ljava/lang/Exception;

    if-nez v9, :cond_4

    .line 2236
    const/4 v4, 0x0

    .line 2238
    .local v4, methodAPNParam_get:Ljava/lang/reflect/Method;
    :try_start_0
    move-object v0, v1

    check-cast v0, Ljava/lang/Class;

    move-object v9, v0

    const-string v10, "getAPNParams"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Lcom/android/internal/telephony/APNParam;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-class v13, Landroid/os/Message;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v4

    .line 2241
    :goto_0
    if-eqz v4, :cond_1

    .line 2242
    const/4 v9, 0x2

    move-object/from16 v0, p2

    iput v9, v0, Landroid/os/Message;->arg2:I

    .line 2247
    const/4 v9, 0x2

    :try_start_1
    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    invoke-virtual {v4, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2299
    .end local v1           #cls:Ljava/lang/Object;
    .end local v4           #methodAPNParam_get:Ljava/lang/reflect/Method;
    .end local v6           #mmdt:Ljava/lang/Object;
    .end local p3
    :cond_0
    :goto_1
    return-object v8

    .line 2248
    .restart local v1       #cls:Ljava/lang/Object;
    .restart local v4       #methodAPNParam_get:Ljava/lang/reflect/Method;
    .restart local v6       #mmdt:Ljava/lang/Object;
    .restart local p3
    :catch_0
    move-exception v2

    .line 2249
    .local v2, ex:Ljava/lang/Exception;
    const-string v9, "PHONE"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Query PDN2 error "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    move-object v8, v2

    .line 2251
    goto :goto_1

    .line 2254
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_1
    const/4 v7, -0x1

    .line 2256
    .local v7, profileIndex:I
    :try_start_2
    iget-object v9, p1, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v7

    .line 2267
    .end local p3
    :cond_2
    if-ltz v7, :cond_3

    .line 2268
    const/4 v5, 0x0

    .line 2269
    .local v5, methodName:Ljava/lang/String;
    iget v9, p1, Lcom/android/internal/telephony/APNParam;->rat:I

    packed-switch v9, :pswitch_data_0

    .line 2275
    :goto_2
    :pswitch_0
    :try_start_3
    check-cast v1, Ljava/lang/Class;

    .end local v1           #cls:Ljava/lang/Object;
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Landroid/os/Message;

    aput-object v11, v9, v10

    invoke-virtual {v1, v5, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 2276
    const/4 v9, 0x1

    move-object/from16 v0, p2

    iput v9, v0, Landroid/os/Message;->arg2:I

    .line 2280
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    invoke-virtual {v4, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 2281
    :catch_1
    move-exception v2

    .line 2282
    .restart local v2       #ex:Ljava/lang/Exception;
    const-string v9, "PHONE"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Query PDN error "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    move-object v8, v2

    goto :goto_1

    .line 2257
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v5           #methodName:Ljava/lang/String;
    .restart local v1       #cls:Ljava/lang/Object;
    .restart local p3
    :catch_2
    move-exception v2

    .line 2258
    .restart local v2       #ex:Ljava/lang/Exception;
    if-eqz p3, :cond_2

    .line 2259
    check-cast p3, [Ljava/lang/String;

    .end local p3
    move-object/from16 v3, p3

    check-cast v3, [Ljava/lang/String;

    .line 2260
    .local v3, knownPdns:[Ljava/lang/String;
    array-length v9, v3

    add-int/lit8 v7, v9, -0x1

    .line 2261
    :goto_3
    if-ltz v7, :cond_2

    aget-object v9, v3, v7

    iget-object v10, p1, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 2262
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 2270
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v3           #knownPdns:[Ljava/lang/String;
    .restart local v5       #methodName:Ljava/lang/String;
    :pswitch_1
    const-string v5, "get3GPPAPNParams"

    goto :goto_2

    .line 2271
    :pswitch_2
    const-string v5, "getEHRPDAPNParams"

    goto :goto_2

    .line 2272
    :pswitch_3
    const-string v5, "getLTEAPNParams"

    goto :goto_2

    .line 2287
    .end local v5           #methodName:Ljava/lang/String;
    :cond_3
    new-instance v8, Ljava/lang/Exception;

    .end local v8           #queryFail:Ljava/lang/Exception;
    const-string v9, "Only supported PDN1 format"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v8       #queryFail:Ljava/lang/Exception;
    goto/16 :goto_1

    .end local v4           #methodAPNParam_get:Ljava/lang/reflect/Method;
    .end local v7           #profileIndex:I
    .restart local p3
    :cond_4
    move-object v8, v6

    .line 2292
    check-cast v8, Ljava/lang/Exception;

    goto/16 :goto_1

    .line 2295
    :cond_5
    if-nez v8, :cond_0

    .line 2296
    new-instance v8, Ljava/lang/Exception;

    .end local v8           #queryFail:Ljava/lang/Exception;
    const-string v9, "MMDct not created"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v8       #queryFail:Ljava/lang/Exception;
    goto/16 :goto_1

    .line 2239
    .restart local v4       #methodAPNParam_get:Ljava/lang/reflect/Method;
    :catch_3
    move-exception v9

    goto/16 :goto_0

    .line 2269
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private requestPhoneClassChangeDone(ZILandroid/os/Message;)Z
    .locals 8
    .parameter "phoneTypeChanged"
    .parameter "phoneType"
    .parameter "response"

    .prologue
    .line 1916
    const/4 v2, 0x1

    .line 1917
    .local v2, requestSend:Z
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneProxy;->rilPhoneClassChangeWithType:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    .line 1919
    :try_start_0
    const-string v3, "com.android.internal.telephony.CommandsInterface"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1920
    .local v0, cls:Ljava/lang/Class;
    const-string v3, "requestPhoneClassChangeDone"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Landroid/os/Message;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/PhoneProxy;->rilPhoneClassChangeWithType:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1924
    .end local v0           #cls:Ljava/lang/Class;
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneProxy;->rilPhoneClassChangeWithType:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    .line 1925
    const/4 v2, 0x0

    .line 1926
    const-string v3, "PHONE"

    const-string v4, "RIL interface PhoneClassChange with phoneType not existed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    :cond_0
    if-eqz v2, :cond_1

    .line 1931
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneProxy;->rilPhoneClassChangeWithType:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1937
    :cond_1
    :goto_1
    return v2

    .line 1921
    :catch_0
    move-exception v1

    .line 1922
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0

    .line 1932
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1933
    .restart local v1       #e:Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 1934
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private setPdnFromModem(Lcom/android/internal/telephony/APNParam;Landroid/os/Message;)Ljava/lang/Exception;
    .locals 13
    .parameter "pdnParam"
    .parameter "msg"

    .prologue
    .line 2621
    const/4 v7, 0x0

    .line 2623
    .local v7, setFail:Ljava/lang/Exception;
    sget-boolean v8, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    if-eqz v8, :cond_0

    .line 2624
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneProxy;->getMMDataConnectionTrackerClass()Ljava/lang/Object;

    move-result-object v1

    .line 2625
    .local v1, cls:Ljava/lang/Object;
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneProxy;->getMMDataConnectionTracker(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 2626
    .local v5, mmdt:Ljava/lang/Object;
    if-eqz v5, :cond_4

    .line 2627
    instance-of v8, v5, Ljava/lang/Exception;

    if-nez v8, :cond_3

    .line 2628
    const/4 v3, 0x0

    .line 2630
    .local v3, methodAPNParam_set:Ljava/lang/reflect/Method;
    :try_start_0
    move-object v0, v1

    check-cast v0, Ljava/lang/Class;

    move-object v8, v0

    const-string v9, "setAPNParams"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Lcom/android/internal/telephony/APNParam;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Landroid/os/Message;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v3

    .line 2633
    :goto_0
    if-eqz v3, :cond_1

    .line 2634
    const/4 v8, 0x2

    iput v8, p2, Landroid/os/Message;->arg2:I

    .line 2639
    const/4 v8, 0x2

    :try_start_1
    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    invoke-virtual {v3, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2689
    .end local v1           #cls:Ljava/lang/Object;
    .end local v3           #methodAPNParam_set:Ljava/lang/reflect/Method;
    .end local v5           #mmdt:Ljava/lang/Object;
    :cond_0
    :goto_1
    return-object v7

    .line 2640
    .restart local v1       #cls:Ljava/lang/Object;
    .restart local v3       #methodAPNParam_set:Ljava/lang/reflect/Method;
    .restart local v5       #mmdt:Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 2641
    .local v2, ex:Ljava/lang/Exception;
    const-string v8, "PHONE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Set PDN2 error "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2642
    move-object v7, v2

    .line 2643
    goto :goto_1

    .line 2646
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_1
    const/4 v6, -0x1

    .line 2648
    .local v6, profileIndex:I
    :try_start_2
    iget-object v8, p1, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v6

    .line 2651
    :goto_2
    const/4 v8, 0x1

    if-lt v6, v8, :cond_2

    .line 2652
    add-int/lit8 v6, v6, -0x1

    .line 2653
    const/4 v4, 0x0

    .line 2654
    .local v4, methodName:Ljava/lang/String;
    iget v8, p1, Lcom/android/internal/telephony/APNParam;->rat:I

    packed-switch v8, :pswitch_data_0

    .line 2661
    :goto_3
    :pswitch_0
    :try_start_3
    check-cast v1, Ljava/lang/Class;

    .end local v1           #cls:Ljava/lang/Object;
    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x3

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x4

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x5

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x6

    const-class v10, Landroid/os/Message;

    aput-object v10, v8, v9

    invoke-virtual {v1, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2664
    const/4 v8, 0x1

    iput v8, p2, Landroid/os/Message;->arg2:I

    .line 2669
    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, p1, Lcom/android/internal/telephony/APNParam;->name:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget v10, p1, Lcom/android/internal/telephony/APNParam;->type:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    iget v10, p1, Lcom/android/internal/telephony/APNParam;->state:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    iget v10, p1, Lcom/android/internal/telephony/APNParam;->timer:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x6

    aput-object p2, v8, v9

    invoke-virtual {v3, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 2671
    :catch_1
    move-exception v2

    .line 2672
    .restart local v2       #ex:Ljava/lang/Exception;
    const-string v8, "PHONE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Set PDN error "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2673
    move-object v7, v2

    goto/16 :goto_1

    .line 2655
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v1       #cls:Ljava/lang/Object;
    :pswitch_1
    const-string v4, "set3GPPAPNParams"

    goto/16 :goto_3

    .line 2656
    :pswitch_2
    const-string v4, "setEHRPDAPNParams"

    goto/16 :goto_3

    .line 2657
    :pswitch_3
    const-string v4, "setLTEAPNParams"

    goto/16 :goto_3

    .line 2677
    .end local v4           #methodName:Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/lang/Exception;

    .end local v7           #setFail:Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Only supported PDN1 format : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v7       #setFail:Ljava/lang/Exception;
    goto/16 :goto_1

    .end local v3           #methodAPNParam_set:Ljava/lang/reflect/Method;
    .end local v6           #profileIndex:I
    :cond_3
    move-object v7, v5

    .line 2682
    check-cast v7, Ljava/lang/Exception;

    goto/16 :goto_1

    .line 2685
    :cond_4
    if-nez v7, :cond_0

    .line 2686
    new-instance v7, Ljava/lang/Exception;

    .end local v7           #setFail:Ljava/lang/Exception;
    const-string v8, "MMDct not created"

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v7       #setFail:Ljava/lang/Exception;
    goto/16 :goto_1

    .line 2649
    .restart local v3       #methodAPNParam_set:Ljava/lang/reflect/Method;
    .restart local v6       #profileIndex:I
    :catch_2
    move-exception v8

    goto/16 :goto_2

    .line 2631
    .end local v6           #profileIndex:I
    :catch_3
    move-exception v8

    goto/16 :goto_0

    .line 2654
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private setPdnSettings2Result_handling(IILandroid/os/AsyncResult;)V
    .locals 4
    .parameter "requestType"
    .parameter "resultType"
    .parameter "ar"

    .prologue
    .line 2803
    iget-object v0, p3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    .line 2804
    .local v0, request:Landroid/os/Message;
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set PDN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2805
    if-eqz v0, :cond_0

    .line 2806
    const/4 v1, 0x0

    iget-object v2, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2807
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2809
    :cond_0
    return-void
.end method

.method private setPdnSettings2_handling(I[Ljava/lang/Object;Landroid/os/Handler;)V
    .locals 10
    .parameter "requestType"
    .parameter "requestObj"
    .parameter "remainingHandling"

    .prologue
    .line 2698
    const/4 v0, 0x0

    .line 2699
    .local v0, errorResult:Ljava/lang/Exception;
    const/4 v7, 0x0

    aget-object v7, p2, v7

    check-cast v7, [Ljava/lang/String;

    move-object v5, v7

    check-cast v5, [Ljava/lang/String;

    .line 2700
    .local v5, queryCmds:[Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v6, p2, v7

    check-cast v6, Landroid/os/Message;

    .line 2701
    .local v6, request:Landroid/os/Message;
    sget-boolean v7, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    if-eqz v7, :cond_6

    if-eqz v5, :cond_6

    .line 2702
    new-instance v4, Lcom/android/internal/telephony/APNParam;

    invoke-direct {v4}, Lcom/android/internal/telephony/APNParam;-><init>()V

    .line 2703
    .local v4, pdnParam:Lcom/android/internal/telephony/APNParam;
    const/16 v7, 0x6e

    invoke-virtual {p3, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2704
    .local v2, msg:Landroid/os/Message;
    packed-switch p1, :pswitch_data_0

    .line 2781
    const-string v8, "PHONE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Set PDN parm incorrect "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v5, :cond_5

    array-length v7, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_0
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2782
    new-instance v0, Ljava/lang/Exception;

    .end local v0           #errorResult:Ljava/lang/Exception;
    const-string v7, "Incorrect Parameters"

    invoke-direct {v0, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2785
    .restart local v0       #errorResult:Ljava/lang/Exception;
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    .line 2786
    iput p1, v2, Landroid/os/Message;->arg1:I

    .line 2787
    iput-object v6, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2788
    invoke-direct {p0, v4, v2}, Lcom/android/internal/telephony/PhoneProxy;->setPdnFromModem(Lcom/android/internal/telephony/APNParam;Landroid/os/Message;)Ljava/lang/Exception;

    move-result-object v0

    .line 2796
    .end local v2           #msg:Landroid/os/Message;
    .end local v4           #pdnParam:Lcom/android/internal/telephony/APNParam;
    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    if-eqz v6, :cond_2

    .line 2797
    const/4 v7, 0x0

    invoke-static {v6, v7, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2798
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 2800
    :cond_2
    return-void

    .line 2707
    .restart local v2       #msg:Landroid/os/Message;
    .restart local v4       #pdnParam:Lcom/android/internal/telephony/APNParam;
    :pswitch_0
    const-string v7, "PHONE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set PDN "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v9, v5, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2708
    const/4 v3, 0x0

    .line 2710
    .local v3, networkType:I
    const/4 v7, 0x0

    :try_start_0
    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    move-result v3

    .line 2712
    :goto_3
    sparse-switch v3, :sswitch_data_0

    .line 2721
    const/4 v7, 0x4

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->rat:I

    .line 2725
    :goto_4
    const/4 v7, 0x1

    :try_start_1
    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->id:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2729
    :goto_5
    if-nez v0, :cond_0

    .line 2730
    const/4 v7, 0x2

    aget-object v7, v5, v7

    iput-object v7, v4, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    .line 2732
    const/4 v7, 0x3

    :try_start_2
    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    :goto_6
    iput v7, v4, Lcom/android/internal/telephony/APNParam;->state:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    .line 2734
    :goto_7
    const/4 v7, 0x4

    aget-object v7, v5, v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/PhoneProxy;->pdnIpTypeLookup(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->type:I

    .line 2736
    const/4 v7, 0x5

    :try_start_3
    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->timer:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 2738
    :goto_8
    const/4 v7, 0x6

    aget-object v7, v5, v7

    iput-object v7, v4, Lcom/android/internal/telephony/APNParam;->name:Ljava/lang/String;

    goto/16 :goto_1

    .line 2714
    :sswitch_0
    const/4 v7, 0x1

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->rat:I

    goto :goto_4

    .line 2717
    :sswitch_1
    const/4 v7, 0x2

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->rat:I

    goto :goto_4

    .line 2726
    :catch_0
    move-exception v1

    .line 2727
    .local v1, ex:Ljava/lang/Exception;
    move-object v0, v1

    goto :goto_5

    .line 2732
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_3
    const/4 v7, 0x0

    goto :goto_6

    .line 2744
    .end local v3           #networkType:I
    :pswitch_1
    const-string v7, "PHONE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set PDN2 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v9, v5, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2745
    const/4 v3, 0x0

    .line 2747
    .restart local v3       #networkType:I
    const/4 v7, 0x1

    :try_start_4
    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-result v3

    .line 2749
    :goto_9
    sparse-switch v3, :sswitch_data_1

    .line 2758
    const/4 v7, 0x4

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->rat:I

    .line 2761
    :goto_a
    const/4 v7, 0x2

    aget-object v7, v5, v7

    iput-object v7, v4, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    .line 2763
    const/4 v7, 0x3

    :try_start_5
    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->id:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 2766
    :goto_b
    const/4 v7, 0x4

    :try_start_6
    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    :goto_c
    iput v7, v4, Lcom/android/internal/telephony/APNParam;->state:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 2768
    :goto_d
    const/4 v7, 0x5

    aget-object v7, v5, v7

    iput-object v7, v4, Lcom/android/internal/telephony/APNParam;->name:Ljava/lang/String;

    .line 2769
    const/4 v7, 0x6

    aget-object v7, v5, v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/PhoneProxy;->pdnIpTypeLookup(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->type:I

    .line 2771
    const/4 v7, 0x7

    :try_start_7
    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->timer:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 2774
    :goto_e
    const/16 v7, 0x8

    :try_start_8
    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->authType:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 2776
    :goto_f
    const/16 v7, 0x9

    aget-object v7, v5, v7

    iput-object v7, v4, Lcom/android/internal/telephony/APNParam;->user:Ljava/lang/String;

    .line 2777
    const/16 v7, 0xa

    aget-object v7, v5, v7

    iput-object v7, v4, Lcom/android/internal/telephony/APNParam;->password:Ljava/lang/String;

    goto/16 :goto_1

    .line 2751
    :sswitch_2
    const/4 v7, 0x1

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->rat:I

    goto :goto_a

    .line 2754
    :sswitch_3
    const/4 v7, 0x2

    iput v7, v4, Lcom/android/internal/telephony/APNParam;->rat:I

    goto :goto_a

    .line 2766
    :cond_4
    const/4 v7, 0x0

    goto :goto_c

    .line 2781
    .end local v3           #networkType:I
    :cond_5
    const-string v7, "null"

    goto/16 :goto_0

    .line 2792
    .end local v2           #msg:Landroid/os/Message;
    .end local v4           #pdnParam:Lcom/android/internal/telephony/APNParam;
    :cond_6
    const-string v8, "PHONE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Set PDN parm incorrect "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v5, :cond_7

    array-length v7, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_10
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v9, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2794
    new-instance v0, Ljava/lang/Exception;

    .end local v0           #errorResult:Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Incorrect Parameters - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .restart local v0       #errorResult:Ljava/lang/Exception;
    goto/16 :goto_2

    .line 2792
    :cond_7
    const-string v7, "null"

    goto :goto_10

    .line 2775
    .restart local v2       #msg:Landroid/os/Message;
    .restart local v3       #networkType:I
    .restart local v4       #pdnParam:Lcom/android/internal/telephony/APNParam;
    :catch_1
    move-exception v7

    goto :goto_f

    .line 2772
    :catch_2
    move-exception v7

    goto :goto_e

    .line 2767
    :catch_3
    move-exception v7

    goto/16 :goto_d

    .line 2764
    :catch_4
    move-exception v7

    goto/16 :goto_b

    .line 2748
    :catch_5
    move-exception v7

    goto/16 :goto_9

    .line 2737
    :catch_6
    move-exception v7

    goto/16 :goto_8

    .line 2733
    :catch_7
    move-exception v7

    goto/16 :goto_7

    .line 2711
    :catch_8
    move-exception v7

    goto/16 :goto_3

    .line 2704
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2712
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0xe -> :sswitch_1
    .end sparse-switch

    .line 2749
    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_2
        0xe -> :sswitch_3
    .end sparse-switch
.end method

.method private declared-synchronized setPowerStateToDesired()V
    .locals 4

    .prologue
    .line 3006
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPowerStateToDesired : mDesiredPowerState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mDesiredPowerState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", getRadioState() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    .line 3010
    iget-boolean v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mDesiredPowerState:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v2, :cond_1

    .line 3012
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 3013
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/DataConnectionTracker;

    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mDesiredPowerState:Z

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->setDataConnectionAsDesired(ZLandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3021
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 3015
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mDesiredPowerState:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3016
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mDesiredPowerState:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3018
    .local v0, powerOffMsg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/DataConnectionTracker;

    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mDesiredPowerState:Z

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->setDataConnectionAsDesired(ZLandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3006
    .end local v0           #powerOffMsg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public HtcisDataConnectivityPossible(Ljava/lang/String;)Z
    .locals 1
    .parameter "apnType"

    .prologue
    .line 3195
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->HtcisDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public acceptCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 778
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->acceptCall()V

    .line 779
    return-void
.end method

.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 1
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->activateCellBroadcastSms(ILandroid/os/Message;)V

    .line 1242
    return-void
.end method

.method public canConference()Z
    .locals 1

    .prologue
    .line 790
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canConference()Z

    move-result v0

    return v0
.end method

.method public canTransfer()Z
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canTransfer()Z

    move-result v0

    return v0
.end method

.method public changeCallBarringPassword(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "commandInterfaceCBFacility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "result"

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->changeCallBarringPassword(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1443
    return-void
.end method

.method public checkFDNCapability()Z
    .locals 1

    .prologue
    .line 2050
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->checkFDNCapability()Z

    move-result v0

    return v0
.end method

.method public checkTestIcc()Z
    .locals 1

    .prologue
    .line 1447
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1448
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    if-eqz v0, :cond_0

    .line 1449
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardProxy;->checkTestIcc()Z

    move-result v0

    .line 1454
    :goto_0
    return v0

    .line 1451
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1454
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->checkTestIcc()Z

    move-result v0

    goto :goto_0
.end method

.method public clearDisconnected()V
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    .line 815
    return-void
.end method

.method public clearVoiceMessageWaiting()V
    .locals 1

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->clearVoiceMessageWaiting()V

    .line 1462
    return-void
.end method

.method public conference()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 794
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->conference()V

    .line 795
    return-void
.end method

.method public confirmFirstDataRoaming()V
    .locals 1

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->confirmFirstDataRoaming()V

    .line 1168
    return-void
.end method

.method public dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 830
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .parameter "uusInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 834
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dialVT(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1593
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->dialVT(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public disableApnType(Ljava/lang/String;)I
    .locals 1
    .parameter "type"

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->disableApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public disableDnsCheck(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->disableDnsCheck(Z)V

    .line 571
    return-void
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->disableLocationUpdates()V

    .line 1085
    return-void
.end method

.method public enableApnType(Ljava/lang/String;)I
    .locals 1
    .parameter "type"

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->enableApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V
    .locals 1
    .parameter "enable"
    .parameter "onComplete"

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V

    .line 799
    return-void
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->enableLocationUpdates()V

    .line 1081
    return-void
.end method

.method public enableMpdp(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 2907
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->enableMpdp(Z)V

    .line 2908
    return-void
.end method

.method public enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 3099
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public exitEmergencyCallbackMode()V
    .locals 1

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->exitEmergencyCallbackMode()V

    .line 1311
    return-void
.end method

.method public explicitCallTransfer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 810
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->explicitCallTransfer()V

    .line 811
    return-void
.end method

.method public genericSimIO(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "data"
    .parameter "response"

    .prologue
    .line 2061
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->genericSimIO(Ljava/lang/String;Landroid/os/Message;)V

    .line 2062
    return-void
.end method

.method public getActiveApn(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;
    .locals 1
    .parameter "type"
    .parameter "ipv"

    .prologue
    .line 3174
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getActiveApn(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnCarrier(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 3205
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getActiveApnCarrier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveCid()I
    .locals 1

    .prologue
    .line 2954
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getActiveCid()I

    move-result v0

    return v0
.end method

.method public getActivePDPList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2914
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getActivePDPList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActivePhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 1286
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getAvailableNetworks(Landroid/os/Message;)V

    .line 1002
    return-void
.end method

.method public getAvailableNetworksAppendAcT(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1995
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getAvailableNetworksAppendAcT(Landroid/os/Message;)V

    .line 1996
    return-void
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 822
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getBandCapability()I
    .locals 1

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBandCapability()I

    move-result v0

    return v0
.end method

.method public getCFUNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2037
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCFUNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallBarringOption(ILandroid/os/Message;)V
    .locals 1
    .parameter "commandInterfaceCBReason"
    .parameter "onComplete"

    .prologue
    .line 1466
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getCallBarringOption(ILandroid/os/Message;)V

    .line 1467
    return-void
.end method

.method public getCallForwardingIndicator()Z
    .locals 1

    .prologue
    .line 879
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    move-result v0

    return v0
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 1
    .parameter "commandInterfaceCFReason"
    .parameter "onComplete"

    .prologue
    .line 954
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 956
    return-void
.end method

.method public getCallType()Lcom/android/internal/telephony/Phone$CallType;
    .locals 1

    .prologue
    .line 1597
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCallType()Lcom/android/internal/telephony/Phone$CallType;

    move-result-object v0

    return-object v0
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    .line 993
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    .line 994
    return-void
.end method

.method public getCdmaEriFileVersion()I
    .locals 1

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriFileVersion()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconIndex()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconMode()I

    move-result v0

    return v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 897
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCellBroadcastSmsConfig(Landroid/os/Message;)V

    .line 1246
    return-void
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    return-object v0
.end method

.method public getDataCFUNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2043
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataCFUNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataCallForwardingOption(ILandroid/os/Message;)V
    .locals 1
    .parameter "commandInterfaceCFReason"
    .parameter "onComplete"

    .prologue
    .line 961
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getDataCallForwardingOption(ILandroid/os/Message;)V

    .line 963
    return-void
.end method

.method public getDataCallForwardingStatus()Z
    .locals 1

    .prologue
    .line 888
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataCallForwardingStatus()Z

    move-result v0

    return v0
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDataCallList(Landroid/os/Message;)V

    .line 1073
    return-void
.end method

.method public getDataConnectionRealIpState(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter "type"
    .parameter "ipv"

    .prologue
    .line 3158
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getDataConnectionRealIpState(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;
    .locals 2

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    const-string v1, "default"

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionState(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter "type"
    .parameter "ipv"

    .prologue
    .line 3155
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getDataConnectionState(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionStateTime(Ljava/lang/String;)J
    .locals 2
    .parameter "apnType"

    .prologue
    .line 1888
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDataConnectionStateTime(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDataServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public getDetailIccStatus()[I
    .locals 1

    .prologue
    .line 1471
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1472
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    if-eqz v0, :cond_0

    .line 1473
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardProxy;->getDetailIccStatus()[I

    move-result-object v0

    .line 1478
    :goto_0
    return-object v0

    .line 1475
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1478
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDetailIccStatus()[I

    move-result-object v0

    goto :goto_0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "account"

    .prologue
    .line 2851
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDnsServers(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)[Ljava/lang/String;
    .locals 1
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    .line 3001
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getDnsServers(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmergencyCallPowerState()Z
    .locals 1

    .prologue
    .line 3139
    const/4 v0, 0x1

    return v0
.end method

.method public getEmergencyPreference()I
    .locals 1

    .prologue
    .line 3137
    const/4 v0, 0x0

    return v0
.end method

.method public getEmergencyState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3138
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnhancedVoicePrivacy(Landroid/os/Message;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    .line 802
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getEnhancedVoicePrivacy(Landroid/os/Message;)V

    .line 803
    return-void
.end method

.method public getEntitleErrorCause()I
    .locals 1

    .prologue
    .line 3190
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getEntitleErrorCause()I

    move-result v0

    return v0
.end method

.method public getEsn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getEsn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFdnEnabledStatus()Z
    .locals 1

    .prologue
    .line 2055
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getFdnEnabledStatus()Z

    move-result v0

    return v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getGateway(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;
    .locals 1
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    .line 3170
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getGateway(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalDataRoamingOption()I
    .locals 4

    .prologue
    .line 3032
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getGlobalDataRoamingOption()I

    move-result v0

    .line 3033
    .local v0, result:I
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGlobalDataRoamingOption:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3034
    return v0
.end method

.method public getGprsState()I
    .locals 1

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getGprsState()I

    move-result v0

    return v0
.end method

.method public getHtcSimTypes(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getHtcSimTypes(Landroid/os/Message;)V

    .line 1035
    return-void
.end method

.method public getICCRecords()Lcom/android/internal/telephony/IccRecords;
    .locals 1

    .prologue
    .line 3184
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    return-object v0
.end method

.method public getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    .prologue
    .line 769
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    .line 772
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    goto :goto_0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public getIccRecordsLoaded()Z
    .locals 1

    .prologue
    .line 755
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 756
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardProxy;->getRecordsLoaded()Z

    move-result v0

    .line 762
    :goto_0
    return v0

    .line 759
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 762
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccRecordsLoaded()Z

    move-result v0

    goto :goto_0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 1

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1207
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    if-nez v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x61

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xad

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x49

    if-ne v0, v1, :cond_1

    .line 1213
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mImei:Ljava/lang/String;

    .line 1216
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getImeiSv()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2015
    const-string v0, "get getImeiSv"

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    .line 2016
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    if-nez v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x61

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xad

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x49

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2023
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mImeiSv:Ljava/lang/String;

    .line 2025
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInCallPhoneType()I
    .locals 1

    .prologue
    .line 2869
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getInterfaceName(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;
    .locals 1
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    .line 3162
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getInterfaceName(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIpAddress(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;
    .locals 1
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    .line 3166
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getIpAddress(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimRecords()Lcom/android/internal/telephony/ims/IsimRecords;
    .locals 1

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/ims/IsimRecords;

    move-result-object v0

    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "account"

    .prologue
    .line 2863
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1Number(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "account"

    .prologue
    .line 2859
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getLine1Number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 602
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method public getLteOnCdmaMode()I
    .locals 1

    .prologue
    .line 1410
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v0

    return v0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1177
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1180
    :cond_0
    const-string v1, "00000000000000"

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mMeid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mMeid:Ljava/lang/String;

    if-nez v1, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mEsn:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1186
    const-string v1, "gsm.cdma.meid.workaround"

    const-string v2, "empty"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1187
    .local v0, strWorkaround:Ljava/lang/String;
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMeid, strWorkaround="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    const-string v1, "empty"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1198
    .end local v0           #strWorkaround:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1192
    .restart local v0       #strWorkaround:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mEsn:Ljava/lang/String;

    goto :goto_0

    .line 1195
    .end local v0           #strWorkaround:Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mMeid:Ljava/lang/String;

    goto :goto_0

    .line 1198
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMessageWaitingIndicator()Z
    .locals 1

    .prologue
    .line 869
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result v0

    return v0
.end method

.method public getMessageWaitingIndicatorEnhanced()I
    .locals 1

    .prologue
    .line 874
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicatorEnhanced()I

    move-result v0

    return v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMute()Z

    move-result v0

    return v0
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    .line 1045
    return-void
.end method

.method public getOperatorInfo()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1488
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getOperatorInfo()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    .line 983
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    .line 984
    return-void
.end method

.method public getPRIVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 914
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPRIVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPRIVersions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2107
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPRIVersions()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPdnSettings(ILandroid/os/Message;)V
    .locals 7
    .parameter "profileSlot"
    .parameter "response"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2128
    new-array v0, v5, [Ljava/lang/String;

    .line 2129
    .local v0, request:[Ljava/lang/String;
    if-ltz p1, :cond_0

    if-gt p1, v6, :cond_0

    .line 2130
    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 2131
    add-int/lit8 v2, p1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 2145
    :goto_0
    new-array v1, v5, [Ljava/lang/Object;

    .line 2146
    .local v1, requestArray:[Ljava/lang/Object;
    aput-object v0, v1, v3

    .line 2147
    aput-object p2, v1, v4

    .line 2148
    const/16 v2, 0x6a

    invoke-virtual {p0, v2, v4, v3, v1}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PhoneProxy;->sendMessage(Landroid/os/Message;)Z

    .line 2149
    return-void

    .line 2133
    .end local v1           #requestArray:[Ljava/lang/Object;
    :cond_0
    const/4 v2, 0x5

    if-gt v2, p1, :cond_1

    const/16 v2, 0x8

    if-gt p1, v2, :cond_1

    .line 2134
    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 2135
    add-int/lit8 v2, p1, -0x5

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    goto :goto_0

    .line 2137
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xc8

    if-gt v2, p1, :cond_2

    const/16 v2, 0xcc

    if-gt p1, v2, :cond_2

    .line 2139
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 2140
    add-int/lit16 v2, p1, -0xc8

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    goto :goto_0

    .line 2143
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    goto :goto_0
.end method

.method public getPdnSettings2([Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .parameter "profile"
    .parameter "response"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 2222
    new-array v0, v3, [Ljava/lang/Object;

    .line 2223
    .local v0, requestArray:[Ljava/lang/Object;
    aput-object p1, v0, v2

    .line 2224
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 2225
    const/16 v1, 0x6a

    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PhoneProxy;->sendMessage(Landroid/os/Message;)Z

    .line 2226
    return-void
.end method

.method public getPendingMO()Lcom/android/internal/telephony/Connection;
    .locals 1

    .prologue
    .line 1603
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPendingMO()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 1018
    return-void
.end method

.method public getPreferredOnly()I
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPreferredOnly()I

    move-result v0

    return v0
.end method

.method public getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .locals 1

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    return-object v0
.end method

.method public getRegistrationState(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1492
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getRegistrationState(Landroid/os/Message;)V

    .line 1493
    return-void
.end method

.method public getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getSIMOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3050
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    return-object v0
.end method

.method public getSimTypes(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getSimTypes(Landroid/os/Message;)V

    .line 1030
    return-void
.end method

.method public getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;
    .locals 1

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    return-object v0
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    .line 1258
    return-void
.end method

.method public getState()Lcom/android/internal/telephony/Phone$State;
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "account"

    .prologue
    .line 2855
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubsidyLock(ILandroid/os/Message;)V
    .locals 1
    .parameter "querySetting"
    .parameter "response"

    .prologue
    .line 1559
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getSubsidyLock(ILandroid/os/Message;)V

    .line 1560
    return-void
.end method

.method public getUSSDVerificationStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2927
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getUSSDVerificationStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUSSDVerificationStrings()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2935
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getUSSDVerificationStrings()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnitTestMode()Z
    .locals 1

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getUnitTestMode()Z

    move-result v0

    return v0
.end method

.method public getUsimServiceTable()Lcom/android/internal/telephony/gsm/UsimServiceTable;
    .locals 1

    .prologue
    .line 3179
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getUsimServiceTable()Lcom/android/internal/telephony/gsm/UsimServiceTable;

    move-result-object v0

    return-object v0
.end method

.method public getVTSimulatedMode()Z
    .locals 1

    .prologue
    .line 1614
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVTSimulatedMode()Z

    move-result v0

    return v0
.end method

.method public getVoiceCallForwardingStatus()Z
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceCallForwardingStatus()Z

    move-result v0

    return v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 944
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 935
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMessageCount()I
    .locals 1

    .prologue
    .line 940
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v0

    return v0
.end method

.method public getVoiceServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 1
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 842
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 21
    .parameter "msg"

    .prologue
    .line 219
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    sparse-switch v18, :sswitch_data_0

    .line 521
    const-string v18, "PHONE"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error! This handler was not registered for this message type. Message: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_0
    :goto_0
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 526
    return-void

    .line 222
    :sswitch_0
    sget-short v18, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v19, 0x61

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    sget-short v18, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v19, 0x49

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneProxy;->mOutgoingPhone:Ljava/lang/String;

    .line 229
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Switching phone from "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mOutgoingPhone:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "Phone to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mOutgoingPhone:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v20, "GSM"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    const-string v18, "CDMAPhone"

    :goto_1
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    .line 231
    const/4 v15, 0x0

    .line 232
    .local v15, oldPowerState:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mResetModemOnRadioTechnologyChange:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 234
    const/4 v15, 0x1

    .line 235
    const-string v18, "Setting Radio Power to Off"

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 241
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/IccCardProxy;->dispose()V

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->setHtcIccCardProxy(Lcom/android/internal/telephony/IccCardProxy;)V

    .line 248
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mOutgoingPhone:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "GSM"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 249
    const-string v18, "Make a new CDMAPhone and destroy the old GSMPhone."

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    .line 252
    const/16 v16, 0x0

    .line 253
    .local v16, pendingMO_dialString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v10

    .line 254
    .local v10, ct:Lcom/android/internal/telephony/CallTracker;
    if-eqz v10, :cond_6

    .line 255
    invoke-virtual {v10}, Lcom/android/internal/telephony/CallTracker;->getCurrentPendingMO()Lcom/android/internal/telephony/Connection;

    move-result-object v9

    .line 256
    .local v9, conn:Lcom/android/internal/telephony/Connection;
    if-eqz v9, :cond_6

    .line 257
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v16

    .line 258
    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    if-gtz v18, :cond_4

    .line 259
    :cond_3
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getDialString()Ljava/lang/String;

    move-result-object v16

    .line 261
    :cond_4
    if-eqz v16, :cond_5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    if-gtz v18, :cond_6

    .line 262
    :cond_5
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v16

    .line 267
    .end local v9           #conn:Lcom/android/internal/telephony/Connection;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->dispose()V

    .line 268
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .line 276
    .local v14, oldPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .line 277
    check-cast v14, Lcom/android/internal/telephony/gsm/GSMPhone;

    .end local v14           #oldPhone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->removeReferences()V

    .line 278
    const/4 v14, 0x0

    .line 280
    .restart local v14       #oldPhone:Lcom/android/internal/telephony/Phone;
    if-eqz v16, :cond_7

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v10

    .line 282
    if-eqz v10, :cond_d

    .line 283
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/android/internal/telephony/CallTracker;->assignPendingMO(Ljava/lang/String;)V

    .line 348
    :cond_7
    :goto_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 349
    new-instance v19, Lcom/android/internal/telephony/IccCardProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCardProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->setHtcIccCardProxy(Lcom/android/internal/telephony/IccCardProxy;)V

    .line 355
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mHtcTelephonyInternal:Lcom/android/internal/telephony/HtcTelephonyInternal;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mHtcTelephonyInternal:Lcom/android/internal/telephony/HtcTelephonyInternal;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/HtcTelephonyInternal;->setPhone(Lcom/android/internal/telephony/Phone;)V

    .line 358
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mHtcTelephony:Lcom/android/internal/telephony/HtcTelephony;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mHtcTelephony:Lcom/android/internal/telephony/HtcTelephony;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/HtcTelephony;->setPhone(Lcom/android/internal/telephony/Phone;)V

    .line 364
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mResetModemOnRadioTechnologyChange:Z

    move/from16 v18, v0

    if-eqz v18, :cond_b

    .line 365
    const-string v18, "Resetting Radio"

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v15, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 370
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mIccSmsInterfaceManagerProxy:Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->setmIccSmsInterfaceManager(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->setmIccPhoneBookInterfaceManager(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mPhoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->setmPhoneSubInfo(Lcom/android/internal/telephony/PhoneSubInfo;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 378
    new-instance v12, Landroid/content/Intent;

    const-string v18, "android.intent.action.RADIO_TECHNOLOGY"

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 379
    .local v12, intent:Landroid/content/Intent;
    const/high16 v18, 0x2000

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 380
    const-string v18, "phoneName"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-static {v12, v0}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 386
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    if-gez v18, :cond_15

    .line 387
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v18

    const/16 v20, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/PhoneProxy;->requestPhoneClassChangeDone(ZILandroid/os/Message;)Z

    goto/16 :goto_0

    .line 229
    .end local v10           #ct:Lcom/android/internal/telephony/CallTracker;
    .end local v12           #intent:Landroid/content/Intent;
    .end local v14           #oldPhone:Lcom/android/internal/telephony/Phone;
    .end local v15           #oldPowerState:Z
    .end local v16           #pendingMO_dialString:Ljava/lang/String;
    :cond_c
    const-string v18, "GSMPhone"

    goto/16 :goto_1

    .line 286
    .restart local v10       #ct:Lcom/android/internal/telephony/CallTracker;
    .restart local v14       #oldPhone:Lcom/android/internal/telephony/Phone;
    .restart local v15       #oldPowerState:Z
    .restart local v16       #pendingMO_dialString:Ljava/lang/String;
    :cond_d
    const-string v18, "Unable to transfer pending dialing call to CDMAPhone."

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 291
    .end local v10           #ct:Lcom/android/internal/telephony/CallTracker;
    .end local v14           #oldPhone:Lcom/android/internal/telephony/Phone;
    .end local v16           #pendingMO_dialString:Ljava/lang/String;
    :cond_e
    const-string v18, "Make a new GSMPhone and destroy the old CDMAPhone."

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    .line 294
    const/16 v16, 0x0

    .line 295
    .restart local v16       #pendingMO_dialString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v10

    .line 296
    .restart local v10       #ct:Lcom/android/internal/telephony/CallTracker;
    if-eqz v10, :cond_12

    .line 297
    invoke-virtual {v10}, Lcom/android/internal/telephony/CallTracker;->getCurrentPendingMO()Lcom/android/internal/telephony/Connection;

    move-result-object v9

    .line 298
    .restart local v9       #conn:Lcom/android/internal/telephony/Connection;
    if-eqz v9, :cond_12

    .line 299
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v16

    .line 300
    if-eqz v16, :cond_f

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    if-gtz v18, :cond_10

    .line 301
    :cond_f
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getDialString()Ljava/lang/String;

    move-result-object v16

    .line 303
    :cond_10
    if-eqz v16, :cond_11

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    if-gtz v18, :cond_12

    .line 304
    :cond_11
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v16

    .line 309
    .end local v9           #conn:Lcom/android/internal/telephony/Connection;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/CDMAPhone;->dispose()V

    .line 311
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .line 319
    .restart local v14       #oldPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getGsmPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .line 320
    check-cast v14, Lcom/android/internal/telephony/cdma/CDMAPhone;

    .end local v14           #oldPhone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/CDMAPhone;->removeReferences()V

    .line 321
    const/4 v14, 0x0

    .line 323
    .restart local v14       #oldPhone:Lcom/android/internal/telephony/Phone;
    if-eqz v16, :cond_13

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v10

    .line 325
    if-eqz v10, :cond_14

    .line 326
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/android/internal/telephony/CallTracker;->assignPendingMO(Ljava/lang/String;)V

    .line 343
    :cond_13
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->turnOnRadioDueToECC()V

    goto/16 :goto_2

    .line 329
    :cond_14
    const-string v18, "Unable to transfer pending dialing call to GSMPhone."

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    goto :goto_3

    .line 391
    .restart local v12       #intent:Landroid/content/Intent;
    :cond_15
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v18

    if-nez v18, :cond_16

    sget-boolean v18, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG:Z

    if-eqz v18, :cond_0

    .line 393
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->requestPhoneClassChangeDone(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 399
    .end local v10           #ct:Lcom/android/internal/telephony/CallTracker;
    .end local v12           #intent:Landroid/content/Intent;
    .end local v14           #oldPhone:Lcom/android/internal/telephony/Phone;
    .end local v15           #oldPowerState:Z
    .end local v16           #pendingMO_dialString:Ljava/lang/String;
    :sswitch_1
    const-string v18, "PHONE"

    const-string v19, "Message EVENT_REQUESET_PHONE_CLASS_CHANGE_DONE "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 405
    :sswitch_2
    const-string v18, "PHONE"

    const-string v19, "Radio available"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/PhoneProxy;->notifyModemStorageAvalibility()V

    .line 407
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v18

    if-nez v18, :cond_17

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v18

    if-nez v18, :cond_17

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_LTE_CONFIG()Z

    move-result v18

    if-nez v18, :cond_17

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 411
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x65

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->getDeviceIdentity(Landroid/os/Message;)V

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x66

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->getIMEI(Landroid/os/Message;)V

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x67

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->getIMEISV(Landroid/os/Message;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x69

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 419
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 421
    .local v7, ar:Landroid/os/AsyncResult;
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 424
    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [Ljava/lang/String;

    move-object/from16 v17, v18

    check-cast v17, [Ljava/lang/String;

    .line 425
    .local v17, respId:[Ljava/lang/String;
    const/16 v18, 0x2

    aget-object v18, v17, v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneProxy;->mEsn:Ljava/lang/String;

    .line 426
    const/16 v18, 0x3

    aget-object v18, v17, v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneProxy;->mMeid:Ljava/lang/String;

    .line 427
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mEsn "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mEsn:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " mMeid "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mMeid:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    .line 429
    const-string v18, "ro.cdma.meid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mMeid:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 434
    .end local v7           #ar:Landroid/os/AsyncResult;
    .end local v17           #respId:[Ljava/lang/String;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 436
    .restart local v7       #ar:Landroid/os/AsyncResult;
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_18

    .line 437
    const-string v18, "PHONE"

    const-string v19, "Get IMEI fail"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 440
    :cond_18
    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneProxy;->mImei:Ljava/lang/String;

    .line 441
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mImei "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mImei:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    .line 443
    const-string v18, "ro.gsm.imei"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mImei:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 448
    .end local v7           #ar:Landroid/os/AsyncResult;
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 450
    .restart local v7       #ar:Landroid/os/AsyncResult;
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_19

    .line 451
    const-string v18, "PHONE"

    const-string v19, "Get EVENT_GET_IMEISV_DONE fail"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 454
    :cond_19
    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneProxy;->mImeiSv:Ljava/lang/String;

    .line 455
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mImeiSv "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mImeiSv:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 461
    .end local v7           #ar:Landroid/os/AsyncResult;
    :sswitch_6
    const-string v18, "PHONE"

    const-string v19, "Message EVENT_ENTER_LPM"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    new-instance v13, Landroid/content/Intent;

    const-string v18, "com.android.internal.telephony.enter_lpm"

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 464
    .local v13, intent_lpm:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 470
    .end local v13           #intent_lpm:Landroid/content/Intent;
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 471
    .restart local v7       #ar:Landroid/os/AsyncResult;
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-nez v18, :cond_1a

    .line 472
    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [Ljava/lang/String;

    move-object/from16 v8, v18

    check-cast v8, [Ljava/lang/String;

    .line 473
    .local v8, cdmaSubscription:[Ljava/lang/String;
    if-eqz v8, :cond_0

    array-length v0, v8

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_0

    .line 474
    const/16 v18, 0x0

    aget-object v5, v8, v18

    .line 475
    .local v5, Mdn:Ljava/lang/String;
    const/16 v18, 0x3

    aget-object v6, v8, v18

    .line 476
    .local v6, Min:Ljava/lang/String;
    const-string v18, "ril.cdmaphoneapp.mdn"

    move-object/from16 v0, v18

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string v18, "ril.cdmaphoneapp.min"

    move-object/from16 v0, v18

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string v18, "PHONE"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "CDMA mdn "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v5}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "min "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v6}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 481
    .end local v5           #Mdn:Ljava/lang/String;
    .end local v6           #Min:Ljava/lang/String;
    .end local v8           #cdmaSubscription:[Ljava/lang/String;
    :cond_1a
    const-string v18, "PHONE"

    const-string v19, "Error for poll state "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 487
    .end local v7           #ar:Landroid/os/AsyncResult;
    :sswitch_8
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [Ljava/lang/Object;

    check-cast v18, [Ljava/lang/Object;

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v18

    move-object/from16 v3, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/PhoneProxy;->getPdnSettings2_handling(I[Ljava/lang/Object;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 490
    :sswitch_9
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v18

    move-object/from16 v4, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/PhoneProxy;->getPdnSettings2Cont_handling(IILandroid/os/AsyncResult;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 493
    :sswitch_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/PhoneProxy;->getPdnSettings2Result_handling(IILandroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 496
    :sswitch_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [Ljava/lang/Object;

    check-cast v18, [Ljava/lang/Object;

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v18

    move-object/from16 v3, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/PhoneProxy;->setPdnSettings2_handling(I[Ljava/lang/Object;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 499
    :sswitch_c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/PhoneProxy;->setPdnSettings2Result_handling(IILandroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 505
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v11

    .line 507
    .local v11, currentRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneProxy;->mDeviceMfgCodeRequested:Ljava/lang/Integer;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    sget-object v18, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-object/from16 v0, v18

    if-eq v11, v0, :cond_0

    sget-object v18, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-object/from16 v0, v18

    if-eq v11, v0, :cond_0

    sget-object v18, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-object/from16 v0, v18

    if-eq v11, v0, :cond_0

    .line 511
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/PhoneProxy;->htcRequestMfgCode()Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneProxy;->mDeviceMfgCodeRequested:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 516
    .end local v11           #currentRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;->htcParseMfgCode(Landroid/os/AsyncResult;)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneProxy;->mDeviceMfgCodeRequested:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 219
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_6
        0x4 -> :sswitch_d
        0x64 -> :sswitch_1
        0x65 -> :sswitch_3
        0x66 -> :sswitch_4
        0x67 -> :sswitch_5
        0x68 -> :sswitch_2
        0x69 -> :sswitch_7
        0x6a -> :sswitch_8
        0x6b -> :sswitch_9
        0x6c -> :sswitch_a
        0x6d -> :sswitch_b
        0x6e -> :sswitch_c
        0x6f -> :sswitch_e
    .end sparse-switch
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 1
    .parameter "dialString"

    .prologue
    .line 838
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->handlePinMmi(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public htcCdmaExitRadioPowerSaveMode()V
    .locals 1

    .prologue
    .line 1860
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->htcCdmaExitRadioPowerSaveMode()V

    .line 1861
    return-void
.end method

.method public htcGetCdmaEriCallGuard()I
    .locals 1

    .prologue
    .line 1894
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->htcGetCdmaEriCallGuard()I

    move-result v0

    return v0
.end method

.method public htcGetCdmaEriDistinctiveRinger()I
    .locals 1

    .prologue
    .line 1898
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->htcGetCdmaEriDistinctiveRinger()I

    move-result v0

    return v0
.end method

.method public htcModemLinkOn()Z
    .locals 1

    .prologue
    .line 1864
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->htcModemLinkOn()Z

    move-result v0

    return v0
.end method

.method public htcNotifyDataConnectionDisconnect(Z)Z
    .locals 1
    .parameter "dis"

    .prologue
    .line 1903
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->htcNotifyDataConnectionDisconnect(Z)Z

    move-result v0

    return v0
.end method

.method public initSpecificDialNumbers()V
    .locals 1

    .prologue
    .line 1555
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->initSpecificDialNumbers()V

    .line 1556
    return-void
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 1
    .parameter "data"
    .parameter "response"

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1065
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "strings"
    .parameter "response"

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 1069
    return-void
.end method

.method public isActEnabled()Z
    .locals 1

    .prologue
    .line 3105
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isActEnabled()Z

    move-result v0

    return v0
.end method

.method public isCspPlmnEnabled()Z
    .locals 1

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isCspPlmnEnabled()Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossible()Z
    .locals 2

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    const-string v1, "default"

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossible(Ljava/lang/String;)Z
    .locals 1
    .parameter "apnType"

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDefaultTypeStillActive()Z
    .locals 1

    .prologue
    .line 2900
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDefaultTypeStillActive()Z

    move-result v0

    return v0
.end method

.method public isDnsCheckDisabled()Z
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v0

    return v0
.end method

.method public isMinInfoReady()Z
    .locals 1

    .prologue
    .line 901
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isMinInfoReady()Z

    move-result v0

    return v0
.end method

.method public isNetworkSelectionEnabled()Z
    .locals 1

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isNetworkSelectionEnabled()Z

    move-result v0

    return v0
.end method

.method public isOtaSpNumber(Ljava/lang/String;)Z
    .locals 1
    .parameter "dialStr"

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 1

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->needsOtaServiceProvisioning()Z

    move-result v0

    return v0
.end method

.method public notifyDataActivity()V
    .locals 1

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->notifyDataActivity()V

    .line 1254
    return-void
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryAvailableBandMode(Landroid/os/Message;)V

    .line 1101
    return-void
.end method

.method public queryAvoidNetwork(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 3353
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryAvoidNetwork(Landroid/os/Message;)V

    .line 3354
    return-void
.end method

.method public queryCAVE(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 2972
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryCAVE(Landroid/os/Message;)V

    .line 2973
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    .line 1119
    return-void
.end method

.method public queryMD5(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 2993
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryMD5(Landroid/os/Message;)V

    .line 2994
    return-void
.end method

.method public querySSDUpdate(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 2978
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->querySSDUpdate(Landroid/os/Message;)V

    .line 2979
    return-void
.end method

.method public querySubsidyLock(ILandroid/os/Message;)V
    .locals 1
    .parameter "querySetting"
    .parameter "response"

    .prologue
    .line 1568
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->querySubsidyLock(ILandroid/os/Message;)V

    .line 1569
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryTTYMode(Landroid/os/Message;)V

    .line 1238
    return-void
.end method

.method public queryUIMAUTH(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 2996
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryUIMAUTH(Landroid/os/Message;)V

    .line 2997
    return-void
.end method

.method public queryVPM(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 2987
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryVPM(Landroid/os/Message;)V

    .line 2988
    return-void
.end method

.method public reEnableDataRoamingGuardDialog()V
    .locals 1

    .prologue
    .line 1876
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->reEnableDataRoamingGuardDialog()V

    .line 1877
    return-void
.end method

.method public registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1370
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1371
    return-void
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1323
    return-void
.end method

.method public registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 715
    return-void
.end method

.method public registerForCollidedDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2873
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCollidedDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2874
    return-void
.end method

.method public registerForDataRoamingGuardNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1880
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForDataRoamingGuardNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1881
    return-void
.end method

.method public registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 643
    return-void
.end method

.method public registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1339
    return-void
.end method

.method public registerForERIInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1828
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForERIInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1829
    return-void
.end method

.method public registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 730
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 731
    return-void
.end method

.method public registerForFailEntitlementCheck(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1986
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForFailEntitlementCheck(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1987
    return-void
.end method

.method public registerForHTCECCStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2918
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForHTCECCStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2919
    return-void
.end method

.method public registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 706
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 707
    return-void
.end method

.method public registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 698
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 699
    return-void
.end method

.method public registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 635
    return-void
.end method

.method public registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1363
    return-void
.end method

.method public registerForLoopBackMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1673
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForLoopBackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1674
    return-void
.end method

.method public registerForMIPFailCause(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1636
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMIPFailCause(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1637
    return-void
.end method

.method public registerForMMLocationUpdateInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMMLocationUpdateInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1502
    return-void
.end method

.method public registerForManualState(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3040
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForManualState(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3041
    return-void
.end method

.method public registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 659
    return-void
.end method

.method public registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 651
    return-void
.end method

.method public registerForNBPCDInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1756
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNBPCDInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1757
    return-void
.end method

.method public registerForNetworkBusy(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1627
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNetworkBusy(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1628
    return-void
.end method

.method public registerForNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1836
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1837
    return-void
.end method

.method public registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 627
    return-void
.end method

.method public registerForNoDunDataPlan(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2098
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNoDunDataPlan(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2099
    return-void
.end method

.method public registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1347
    return-void
.end method

.method public registerForPhoneModeChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1976
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForPhoneModeChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1977
    return-void
.end method

.method public registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 619
    return-void
.end method

.method public registerForRSSI_Report(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3066
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRSSI_Report(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3067
    return-void
.end method

.method public registerForRadioOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRadioOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1510
    return-void
.end method

.method public registerForRadioTechnologyChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1907
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRadioTechnologyChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1908
    return-void
.end method

.method public registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1355
    return-void
.end method

.method public registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 746
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 747
    return-void
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 738
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 739
    return-void
.end method

.method public registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 674
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 675
    return-void
.end method

.method public registerForSignalFade(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1655
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSignalFade(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1656
    return-void
.end method

.method public registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1331
    return-void
.end method

.method public registerForSmartDataRoamingStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1584
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSmartDataRoamingStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1585
    return-void
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 722
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 723
    return-void
.end method

.method public registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 690
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 691
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 682
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 683
    return-void
.end method

.method public registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1378
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1379
    return-void
.end method

.method public registerForToneSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1697
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForToneSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1698
    return-void
.end method

.method public registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 611
    return-void
.end method

.method public registerForVoiceCallConnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1517
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVoiceCallConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1518
    return-void
.end method

.method public registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2089
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2090
    return-void
.end method

.method public registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2081
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2082
    return-void
.end method

.method public rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 782
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->rejectCall()V

    .line 783
    return-void
.end method

.method public requesetSetPhoneType(ILandroid/os/Message;)V
    .locals 4
    .parameter "phonetype"
    .parameter "response"

    .prologue
    const/4 v3, 0x1

    .line 1941
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mOutgoingPhone:Ljava/lang/String;

    .line 1942
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    .line 1943
    .local v0, outgoingPhoneType:I
    if-nez p1, :cond_1

    .line 1944
    const-string v1, "Please speicify the phone type"

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    .line 1972
    :cond_0
    :goto_0
    return-void

    .line 1949
    :cond_1
    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    .line 1950
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p2}, Lcom/android/internal/telephony/PhoneProxy;->requestPhoneClassChangeDone(ZILandroid/os/Message;)Z

    .line 1951
    if-eqz p2, :cond_0

    .line 1952
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1957
    :cond_2
    if-eq v0, p1, :cond_4

    .line 1958
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Switch phone type ougoing phone:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mOutgoingPhone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-ne p1, v3, :cond_3

    const-string v1, "GSM"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    .line 1964
    iget v1, p2, Landroid/os/Message;->arg1:I

    iget v2, p2, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PhoneProxy;->handleMessage(Landroid/os/Message;)V

    .line 1966
    if-eqz p2, :cond_0

    .line 1967
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1958
    :cond_3
    const-string v1, "CDMA"

    goto :goto_1

    .line 1970
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No need to change mode outgoing phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mOutgoingPhone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " switch type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestCAVE(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "randu"
    .parameter "response"

    .prologue
    .line 2969
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requestCAVE(Ljava/lang/String;Landroid/os/Message;)V

    .line 2970
    return-void
.end method

.method public requestCW_UW_DREG(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 2963
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestCW_UW_DREG(Landroid/os/Message;)V

    .line 2964
    return-void
.end method

.method public requestCW_UW_REG(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 2959
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestCW_UW_REG(Landroid/os/Message;)V

    .line 2960
    return-void
.end method

.method public requestClearAvoidNetwork(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 3357
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestClearAvoidNetwork(Landroid/os/Message;)V

    .line 3358
    return-void
.end method

.method public requestEhrpdDomainNameChangeState(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 2886
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestEhrpdDomainNameChangeState(Landroid/os/Message;)V

    .line 2887
    return-void
.end method

.method public requestGetEhrpdDeviceCapability(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 2894
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestGetEhrpdDeviceCapability(Landroid/os/Message;)V

    .line 2895
    return-void
.end method

.method public requestGetEhrpdDisableCapability(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 2890
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestGetEhrpdDisableCapability(Landroid/os/Message;)V

    .line 2891
    return-void
.end method

.method public requestGetGID1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3085
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->requestGetGID1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestGetNBPCD(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1745
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestGetNBPCD(Landroid/os/Message;)V

    .line 1746
    return-void
.end method

.method public requestGetPcscfAddresses(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "ifc_name"
    .parameter "response"

    .prologue
    .line 3060
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requestGetPcscfAddresses(Ljava/lang/String;Landroid/os/Message;)V

    .line 3061
    return-void
.end method

.method public requestGetSIMType()I
    .locals 1

    .prologue
    .line 3120
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->requestGetSIMType()I

    move-result v0

    return v0
.end method

.method public requestGetSmartDataRoamingStatus(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1580
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestGetSmartDataRoamingStatus(Landroid/os/Message;)V

    .line 1581
    return-void
.end method

.method public requestGetVolteSipRegFailure(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 3056
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestGetVolteSipRegFailure(Landroid/os/Message;)V

    .line 3057
    return-void
.end method

.method public requestHtcDMCommand(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "command"
    .parameter "response"

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requestHtcDMCommand(Ljava/lang/String;Landroid/os/Message;)V

    .line 1296
    return-void
.end method

.method public requestHtcDmCommandEx(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .parameter "command"
    .parameter "modemId"
    .parameter "response"

    .prologue
    .line 3114
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->requestHtcDmCommandEx(Ljava/lang/String;ILandroid/os/Message;)V

    .line 3115
    return-void
.end method

.method public requestHtcGetDDTMMode(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1722
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestHtcGetDDTMMode(Landroid/os/Message;)V

    .line 1723
    return-void
.end method

.method public requestHtcGetGPSOneMode(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestHtcGetGPSOneMode(Landroid/os/Message;)V

    .line 1425
    return-void
.end method

.method public requestHtcSetDDTMMode(ILandroid/os/Message;)V
    .locals 1
    .parameter "selectDDTM"
    .parameter "response"

    .prologue
    .line 1731
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requestHtcSetDDTMMode(ILandroid/os/Message;)V

    .line 1732
    return-void
.end method

.method public requestHtcSetGPSOneMode(ILandroid/os/Message;)V
    .locals 1
    .parameter "gpsOneMode"
    .parameter "response"

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requestHtcSetGPSOneMode(ILandroid/os/Message;)V

    .line 1431
    return-void
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "nonce"
    .parameter "response"

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V

    .line 1403
    return-void
.end method

.method public requestMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "chapid"
    .parameter "chapchallengelength"
    .parameter "chpachallenge"
    .parameter "result"

    .prologue
    .line 2990
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->requestMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2991
    return-void
.end method

.method public requestOTAProvisionStatus(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1850
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestOTAProvisionStatus(Landroid/os/Message;)V

    .line 1851
    return-void
.end method

.method public requestReleaseAllVoiceCalls(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1620
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestReleaseAllVoiceCalls(Landroid/os/Message;)V

    .line 1621
    return-void
.end method

.method public requestSSDUpdate(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "randssd"
    .parameter "response"

    .prologue
    .line 2975
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requestSSDUpdate(Ljava/lang/String;Landroid/os/Message;)V

    .line 2976
    return-void
.end method

.method public requestSSDUpdateConfirm(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "authbs"
    .parameter "response"

    .prologue
    .line 2981
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requestSSDUpdateConfirm(Ljava/lang/String;Landroid/os/Message;)V

    .line 2982
    return-void
.end method

.method public requestSelectNextNetwork(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 3349
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestSelectNextNetwork(Landroid/os/Message;)V

    .line 3350
    return-void
.end method

.method public requestSetEhrpdDisableCapability(ILandroid/os/Message;)V
    .locals 1
    .parameter "ehrpdmode"
    .parameter "response"

    .prologue
    .line 2882
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requestSetEhrpdDisableCapability(ILandroid/os/Message;)V

    .line 2883
    return-void
.end method

.method public requestSetLBSNTFY(I)V
    .locals 1
    .parameter "lbsvalue"

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestSetLBSNTFY(I)V

    .line 1040
    return-void
.end method

.method public requestSetPushMailDormantTime(IILandroid/os/Message;)V
    .locals 1
    .parameter "activate"
    .parameter "time"
    .parameter "response"

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->requestSetPushMailDormantTime(IILandroid/os/Message;)V

    .line 1303
    return-void
.end method

.method public requestSetSmartDataRoaming(ILandroid/os/Message;)V
    .locals 1
    .parameter "enable"
    .parameter "response"

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requestSetSmartDataRoaming(ILandroid/os/Message;)V

    .line 1577
    return-void
.end method

.method public requestSetVoiceRoamingMode(IILandroid/os/Message;)V
    .locals 1
    .parameter "domestic"
    .parameter "international"
    .parameter "response"

    .prologue
    .line 2950
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->requestSetVoiceRoamingMode(IILandroid/os/Message;)V

    .line 2951
    return-void
.end method

.method public requestVPM(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 2984
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requestVPM(Landroid/os/Message;)V

    .line 2985
    return-void
.end method

.method public requesthTcGetHybridMode(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1812
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requesthTcGetHybridMode(Landroid/os/Message;)V

    .line 1813
    return-void
.end method

.method public requesthTcGetSystemNAM(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1787
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->requesthTcGetSystemNAM(Landroid/os/Message;)V

    .line 1788
    return-void
.end method

.method public requesthTcSetHybridMode(ILandroid/os/Message;)V
    .locals 1
    .parameter "hybridMode"
    .parameter "response"

    .prologue
    .line 1821
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requesthTcSetHybridMode(ILandroid/os/Message;)V

    .line 1822
    return-void
.end method

.method public requesthTcSetSystemNAM(ILandroid/os/Message;)V
    .locals 1
    .parameter "numAssignModule"
    .parameter "response"

    .prologue
    .line 1796
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requesthTcSetSystemNAM(ILandroid/os/Message;)V

    .line 1797
    return-void
.end method

.method public resetPdnForSettingsChange()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2812
    sget-boolean v2, Lcom/android/internal/telephony/PhoneProxy;->ENABLE_PDN_SETTING_INTERFACE:Z

    if-eqz v2, :cond_1

    .line 2813
    const-string v2, " changePdnSettings"

    invoke-static {v2}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    .line 2814
    const/4 v0, 0x0

    .line 2815
    .local v0, mmdt:Lcom/android/internal/telephony/MMDataConnectionTracker;
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 2816
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v2, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .end local v0           #mmdt:Lcom/android/internal/telephony/MMDataConnectionTracker;
    check-cast v0, Lcom/android/internal/telephony/MMDataConnectionTracker;

    .line 2821
    .restart local v0       #mmdt:Lcom/android/internal/telephony/MMDataConnectionTracker;
    :goto_0
    if-eqz v0, :cond_1

    .line 2822
    const/4 v1, 0x0

    .line 2824
    .local v1, phoneSST:Lcom/android/internal/telephony/ServiceStateTracker;
    invoke-virtual {v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->resetRadioForDisconnectingPdn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2825
    const-string v2, " Need reset the Radio due to LTE VZWIMS has been modified"

    invoke-static {v2}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    .line 2826
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    if-eqz v2, :cond_0

    .line 2827
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    instance-of v2, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v2, :cond_3

    .line 2828
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    .line 2835
    :cond_0
    :goto_1
    if-nez v1, :cond_4

    .line 2836
    const-string v2, "getNewMPDNTable"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->disconnectAllConnections(Ljava/lang/String;)V

    .line 2847
    .end local v0           #mmdt:Lcom/android/internal/telephony/MMDataConnectionTracker;
    .end local v1           #phoneSST:Lcom/android/internal/telephony/ServiceStateTracker;
    :cond_1
    :goto_2
    return-void

    .line 2819
    .restart local v0       #mmdt:Lcom/android/internal/telephony/MMDataConnectionTracker;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v2, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .end local v0           #mmdt:Lcom/android/internal/telephony/MMDataConnectionTracker;
    check-cast v0, Lcom/android/internal/telephony/MMDataConnectionTracker;

    .restart local v0       #mmdt:Lcom/android/internal/telephony/MMDataConnectionTracker;
    goto :goto_0

    .line 2830
    .restart local v1       #phoneSST:Lcom/android/internal/telephony/ServiceStateTracker;
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    instance-of v2, v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v2, :cond_0

    .line 2831
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    goto :goto_1

    .line 2839
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v0, v4, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->setDataConnectionAsDesired(ZLandroid/os/Message;)V

    .line 2842
    invoke-virtual {v1, v4, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->lockUntilRadioPower(ZLcom/android/internal/telephony/DataConnectionTracker;)Ljava/lang/Boolean;

    goto :goto_2
.end method

.method public restoreSavedNetworkSelection(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->restoreSavedNetworkSelection(Landroid/os/Message;)V

    .line 1573
    return-void
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 1
    .parameter "network"
    .parameter "response"

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    .line 1010
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 1
    .parameter "dtmfString"
    .parameter "on"
    .parameter "off"
    .parameter "onComplete"

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    .line 1307
    return-void
.end method

.method public sendDtmf(C)V
    .locals 1
    .parameter "c"

    .prologue
    .line 846
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->sendDtmf(C)V

    .line 847
    return-void
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 1
    .parameter "ussdMessge"

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->sendUssdResponse(Ljava/lang/String;)V

    .line 671
    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 1
    .parameter "bandMode"
    .parameter "response"

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setBandMode(ILandroid/os/Message;)V

    .line 1097
    return-void
.end method

.method public setCBMsgIdEFcbmi([BLandroid/os/Message;)V
    .locals 1
    .parameter "msgId"
    .parameter "onComplete"

    .prologue
    .line 1526
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCBMsgIdEFcbmi([BLandroid/os/Message;)V

    .line 1528
    return-void
.end method

.method public setCFUNumber(ZLjava/lang/String;)Z
    .locals 1
    .parameter "enable"
    .parameter "dialNumber"

    .prologue
    .line 2076
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCFUNumber(ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setCallBarringOption(IZLjava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "commandInterfaceCBFacility"
    .parameter "lockState"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 1532
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->setCallBarringOption(IZLjava/lang/String;Landroid/os/Message;)V

    .line 1533
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .parameter "commandInterfaceCFReason"
    .parameter "commandInterfaceCFAction"
    .parameter "dialingNumber"
    .parameter "timerSeconds"
    .parameter "onComplete"

    .prologue
    .line 969
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 971
    return-void
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 1
    .parameter "enable"
    .parameter "onComplete"

    .prologue
    .line 997
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    .line 998
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 1
    .parameter "cdmaRoamingType"
    .parameter "response"

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 1123
    return-void
.end method

.method public setCdmaSubscription(ILandroid/os/Message;)V
    .locals 1
    .parameter "cdmaSubscriptionType"
    .parameter "response"

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCdmaSubscription(ILandroid/os/Message;)V

    .line 1127
    return-void
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 1
    .parameter "configValuesArray"
    .parameter "response"

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCellBroadcastSmsConfig([ILandroid/os/Message;)V

    .line 1250
    return-void
.end method

.method public setDataCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .parameter "commandInterfaceCFReason"
    .parameter "commandInterfaceCFAction"
    .parameter "dialingNumber"
    .parameter "timerSeconds"
    .parameter "onComplete"

    .prologue
    .line 977
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setDataCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 979
    return-void
.end method

.method public setDataEnabled(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 3144
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setDataEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setDataNationalRoamingMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setDataNationalRoamingMode(I)V

    .line 1114
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 1109
    return-void
.end method

.method public setDataRoamingGuardResponse(ZZ)V
    .locals 1
    .parameter "accept"
    .parameter "remember"

    .prologue
    .line 1872
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setDataRoamingGuardResponse(ZZ)V

    .line 1873
    return-void
.end method

.method public setDataRoamingGuardSetting(I)V
    .locals 1
    .parameter "setting"

    .prologue
    .line 1868
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setDataRoamingGuardSetting(I)V

    .line 1869
    return-void
.end method

.method public setEchoSuppressionEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setEchoSuppressionEnabled(Z)V

    .line 1061
    return-void
.end method

.method public setEmergencyRadioOn()V
    .locals 0

    .prologue
    .line 3136
    return-void
.end method

.method public setForceEmergencyMode(Z)V
    .locals 0
    .parameter "force"

    .prologue
    .line 3135
    return-void
.end method

.method public setGlobalDataRoamingOption(I)V
    .locals 3
    .parameter "roamingOption"

    .prologue
    .line 3027
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGlobalDataRoamingOption:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3028
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setGlobalDataRoamingOption(I)V

    .line 3029
    return-void
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "alphaTag"
    .parameter "number"
    .parameter "onComplete"

    .prologue
    .line 931
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 932
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .parameter "muted"

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setMute(Z)V

    .line 1053
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 1006
    return-void
.end method

.method public setNetworkSelectionRejectStatus(Z)V
    .locals 1
    .parameter "reject"

    .prologue
    .line 3125
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionRejectStatus(Z)V

    .line 3126
    return-void
.end method

.method public setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1387
    return-void
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1049
    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 1
    .parameter "commandInterfaceCLIRMode"
    .parameter "onComplete"

    .prologue
    .line 988
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    .line 990
    return-void
.end method

.method public setPdnSettings(ILjava/lang/String;Landroid/os/Message;)V
    .locals 12
    .parameter "profileSlot"
    .parameter "settings"
    .parameter "response"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2153
    const/4 v4, 0x7

    new-array v2, v4, [Ljava/lang/String;

    .line 2154
    .local v2, request:[Ljava/lang/String;
    if-ltz p1, :cond_1

    if-gt p1, v10, :cond_1

    .line 2155
    const/16 v4, 0xd

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    .line 2156
    add-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    .line 2170
    :goto_0
    aget-object v4, v2, v8

    if-eqz v4, :cond_0

    .line 2171
    const-string v4, ","

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2172
    .local v0, apnSettings:[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v4, v0

    if-lez v4, :cond_0

    .line 2174
    const/4 v4, 0x2

    const/4 v5, 0x0

    :try_start_0
    aget-object v5, v0, v5

    aput-object v5, v2, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 2177
    :goto_1
    const/4 v4, 0x3

    const/4 v5, 0x1

    :try_start_1
    aget-object v5, v0, v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2182
    :goto_2
    const/4 v4, 0x4

    :try_start_2
    sget-object v5, Lcom/android/internal/telephony/PhoneProxy;->pdnIpTypes:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget-object v5, v5, v6

    aput-object v5, v2, v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2187
    :goto_3
    const/4 v4, 0x5

    const/4 v5, 0x3

    :try_start_3
    aget-object v5, v0, v5

    aput-object v5, v2, v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 2190
    :goto_4
    const/4 v4, 0x6

    const/4 v5, 0x4

    :try_start_4
    aget-object v5, v0, v5

    aput-object v5, v2, v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 2195
    .end local v0           #apnSettings:[Ljava/lang/String;
    :cond_0
    :goto_5
    new-array v3, v11, [Ljava/lang/Object;

    .line 2196
    .local v3, requestArray:[Ljava/lang/Object;
    aput-object v2, v3, v7

    .line 2197
    aput-object p3, v3, v8

    .line 2198
    const/16 v4, 0x6d

    invoke-virtual {p0, v4, v8, v7, v3}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/PhoneProxy;->sendMessage(Landroid/os/Message;)Z

    .line 2199
    return-void

    .line 2158
    .end local v3           #requestArray:[Ljava/lang/Object;
    :cond_1
    const/4 v4, 0x5

    if-gt v4, p1, :cond_2

    const/16 v4, 0x9

    if-gt p1, v4, :cond_2

    .line 2159
    const/16 v4, 0xe

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    .line 2160
    add-int/lit8 v4, p1, -0x5

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    goto :goto_0

    .line 2162
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0xc8

    if-gt v4, p1, :cond_3

    const/16 v4, 0xcc

    if-gt p1, v4, :cond_3

    .line 2164
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    .line 2165
    add-int/lit16 v4, p1, -0xc8

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    goto/16 :goto_0

    .line 2168
    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    goto/16 :goto_0

    .line 2178
    .restart local v0       #apnSettings:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2179
    .local v1, ex:Ljava/lang/Exception;
    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v9

    goto :goto_2

    .line 2183
    .end local v1           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 2184
    .restart local v1       #ex:Ljava/lang/Exception;
    sget-object v4, Lcom/android/internal/telephony/PhoneProxy;->pdnIpTypes:[Ljava/lang/String;

    aget-object v4, v4, v7

    aput-object v4, v2, v10

    goto :goto_3

    .line 2191
    .end local v1           #ex:Ljava/lang/Exception;
    :catch_2
    move-exception v4

    goto :goto_5

    .line 2188
    :catch_3
    move-exception v4

    goto :goto_4

    .line 2175
    :catch_4
    move-exception v4

    goto/16 :goto_1
.end method

.method public setPdnSettings2([Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .parameter "profile"
    .parameter "response"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 2614
    new-array v0, v3, [Ljava/lang/Object;

    .line 2615
    .local v0, requestArray:[Ljava/lang/Object;
    aput-object p1, v0, v2

    .line 2616
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 2617
    const/16 v1, 0x6d

    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PhoneProxy;->sendMessage(Landroid/os/Message;)Z

    .line 2618
    return-void
.end method

.method public setPolicyDataEnabled(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 3152
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setPolicyDataEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 1
    .parameter "networkType"
    .parameter "response"

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1014
    return-void
.end method

.method public setRSSI_Logging(Ljava/lang/Boolean;Landroid/os/Message;)V
    .locals 1
    .parameter "isEnabled"
    .parameter "response"

    .prologue
    .line 3070
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setRSSI_Logging(Ljava/lang/Boolean;Landroid/os/Message;)V

    .line 3071
    return-void
.end method

.method public setRX_Diversity(IILandroid/os/Message;)V
    .locals 1
    .parameter "rxInterface"
    .parameter "enabledFlag"
    .parameter "response"

    .prologue
    .line 3075
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setRX_Diversity(IILandroid/os/Message;)V

    .line 3076
    return-void
.end method

.method public setRadioPower(Z)V
    .locals 1
    .parameter "power"

    .prologue
    .line 858
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 859
    return-void
.end method

.method public setRadioPowerExt(Z)V
    .locals 1
    .parameter "power"

    .prologue
    .line 864
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setRadioPowerExt(Z)V

    .line 865
    return-void
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "address"
    .parameter "result"

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    .line 1262
    return-void
.end method

.method public setSubsidyLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "subsidyType"
    .parameter "passWord"
    .parameter "response"

    .prologue
    .line 1564
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setSubsidyLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1565
    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 1
    .parameter "ttyMode"
    .parameter "onComplete"

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    .line 1234
    return-void
.end method

.method public setTempCLIR(I)V
    .locals 1
    .parameter "tempCLIR"

    .prologue
    .line 3130
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setTempCLIR(I)V

    .line 3131
    return-void
.end method

.method public setTestIcc(Ljava/lang/String;Z)V
    .locals 1
    .parameter "plmn"
    .parameter "ef_ad"

    .prologue
    .line 1537
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1538
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    if-eqz v0, :cond_0

    .line 1539
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccCardProxy;->setTestIcc(Ljava/lang/String;Z)V

    .line 1545
    :cond_0
    :goto_0
    return-void

    .line 1542
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setTestIcc(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public setUSSDVerificationStatus(Ljava/lang/String;)V
    .locals 1
    .parameter "status"

    .prologue
    .line 2931
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setUSSDVerificationStatus(Ljava/lang/String;)V

    .line 2932
    return-void
.end method

.method public setUSSDVerificationStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "ussd"
    .parameter "hexCode"
    .parameter "digits"

    .prologue
    .line 2941
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setUSSDVerificationStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2942
    return-void
.end method

.method public setUnitTestMode(Z)V
    .locals 1
    .parameter "f"

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setUnitTestMode(Z)V

    .line 1089
    return-void
.end method

.method public setUserDataEnabled(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 3149
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setUserDataEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setVTSimulatedMode(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 1609
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setVTSimulatedMode(Z)V

    .line 1610
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "alphaTag"
    .parameter "voiceMailNumber"
    .parameter "onComplete"

    .prologue
    .line 949
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 950
    return-void
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 1
    .parameter "line"
    .parameter "countWaiting"

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setVoiceMessageWaiting(II)V

    .line 1416
    return-void
.end method

.method public startDtmf(C)V
    .locals 1
    .parameter "c"

    .prologue
    .line 850
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->startDtmf(C)V

    .line 851
    return-void
.end method

.method public stopDtmf()V
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->stopDtmf()V

    .line 855
    return-void
.end method

.method public switchHoldingAndActive()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 786
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 787
    return-void
.end method

.method public turnOnRadioDueToECC()V
    .locals 1

    .prologue
    .line 1436
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->turnOnRadioDueToECC()V

    .line 1437
    return-void
.end method

.method public uiccAkaAuthenticate([B[BLandroid/os/Message;)V
    .locals 1
    .parameter "rand"
    .parameter "autn"
    .parameter "response"

    .prologue
    .line 2067
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->uiccAkaAuthenticate([B[BLandroid/os/Message;)V

    .line 2068
    return-void
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1326
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 1327
    return-void
.end method

.method public unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    .line 719
    return-void
.end method

.method public unregisterForCollidedDisconnect(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2877
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCollidedDisconnect(Landroid/os/Handler;)V

    .line 2878
    return-void
.end method

.method public unregisterForDataRoamingGuardNotification(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1884
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForDataRoamingGuardNotification(Landroid/os/Handler;)V

    .line 1885
    return-void
.end method

.method public unregisterForDisconnect(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 647
    return-void
.end method

.method public unregisterForDisplayInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    .line 1343
    return-void
.end method

.method public unregisterForERIInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1832
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForERIInfo(Landroid/os/Handler;)V

    .line 1833
    return-void
.end method

.method public unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 734
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForEcmTimerReset(Landroid/os/Handler;)V

    .line 735
    return-void
.end method

.method public unregisterForFailEntitlementCheck(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1989
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForFailEntitlementCheck(Landroid/os/Handler;)V

    .line 1990
    return-void
.end method

.method public unregisterForHTCECCStatus(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2922
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForHTCECCStatus(Landroid/os/Handler;)V

    .line 2923
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 710
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    .line 711
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 702
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    .line 703
    return-void
.end method

.method public unregisterForIncomingRing(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 639
    return-void
.end method

.method public unregisterForLineControlInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForLineControlInfo(Landroid/os/Handler;)V

    .line 1367
    return-void
.end method

.method public unregisterForLoopBackMode(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1681
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForLoopBackMode(Landroid/os/Handler;)V

    .line 1682
    return-void
.end method

.method public unregisterForMIPFailCause(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1644
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMIPFailCause(Landroid/os/Handler;)V

    .line 1645
    return-void
.end method

.method public unregisterForMMLocationUpdateInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMMLocationUpdateInfo(Landroid/os/Handler;)V

    .line 1506
    return-void
.end method

.method public unregisterForManualState(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3044
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForManualState(Landroid/os/Handler;)V

    .line 3045
    return-void
.end method

.method public unregisterForMmiComplete(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 663
    return-void
.end method

.method public unregisterForMmiInitiate(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 654
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 655
    return-void
.end method

.method public unregisterForNBPCDInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1764
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNBPCDInfo(Landroid/os/Handler;)V

    .line 1765
    return-void
.end method

.method public unregisterForNetworkBusy(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1631
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNetworkBusy(Landroid/os/Handler;)V

    .line 1632
    return-void
.end method

.method public unregisterForNetworkStateChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1840
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNetworkStateChanged(Landroid/os/Handler;)V

    .line 1841
    return-void
.end method

.method public unregisterForNewRingingConnection(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    .line 631
    return-void
.end method

.method public unregisterForNoDunDataPlan(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2102
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNoDunDataPlan(Landroid/os/Handler;)V

    .line 2103
    return-void
.end method

.method public unregisterForNumberInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNumberInfo(Landroid/os/Handler;)V

    .line 1351
    return-void
.end method

.method public unregisterForPhoneModeChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1980
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForPhoneModeChanged(Landroid/os/Handler;)V

    .line 1981
    return-void
.end method

.method public unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 623
    return-void
.end method

.method public unregisterForRSSI_Report(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3079
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRSSI_Report(Landroid/os/Handler;)V

    .line 3080
    return-void
.end method

.method public unregisterForRadioOn(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1513
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRadioOn(Landroid/os/Handler;)V

    .line 1514
    return-void
.end method

.method public unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V

    .line 1359
    return-void
.end method

.method public unregisterForResendIncallMute(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 750
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForResendIncallMute(Landroid/os/Handler;)V

    .line 751
    return-void
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 742
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 743
    return-void
.end method

.method public unregisterForServiceStateChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 678
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 679
    return-void
.end method

.method public unregisterForSignalFade(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1663
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSignalFade(Landroid/os/Handler;)V

    .line 1664
    return-void
.end method

.method public unregisterForSignalInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1334
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSignalInfo(Landroid/os/Handler;)V

    .line 1335
    return-void
.end method

.method public unregisterForSmartDataRoamingStatus(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1588
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSmartDataRoamingStatus(Landroid/os/Handler;)V

    .line 1589
    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 726
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V

    .line 727
    return-void
.end method

.method public unregisterForSuppServiceFailed(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    .line 695
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 686
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    .line 687
    return-void
.end method

.method public unregisterForT53AudioControlInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForT53AudioControlInfo(Landroid/os/Handler;)V

    .line 1383
    return-void
.end method

.method public unregisterForT53ClirInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForT53ClirInfo(Landroid/os/Handler;)V

    .line 1375
    return-void
.end method

.method public unregisterForToneSignalInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1705
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForToneSignalInfo(Landroid/os/Handler;)V

    .line 1706
    return-void
.end method

.method public unregisterForUnknownConnection(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    .line 615
    return-void
.end method

.method public unregisterForVoiceCallConnected(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1521
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVoiceCallConnected(Landroid/os/Handler;)V

    .line 1523
    return-void
.end method

.method public unregisterForVoiceCallEnded(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2093
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 2094
    return-void
.end method

.method public unregisterForVoiceCallStarted(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2085
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 2086
    return-void
.end method

.method public unsetOnEcbModeExitResponse(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1390
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    .line 1391
    return-void
.end method

.method public updateServiceLocation()V
    .locals 1

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->updateServiceLocation()V

    .line 1077
    return-void
.end method

.method public wifi2GRetry()V
    .locals 1

    .prologue
    .line 3200
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->wifi2GRetry()V

    .line 3201
    return-void
.end method
