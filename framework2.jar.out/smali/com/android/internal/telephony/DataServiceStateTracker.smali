.class public Lcom/android/internal/telephony/DataServiceStateTracker;
.super Landroid/os/Handler;
.source "DataServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DataServiceStateTracker$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0x10

.field private static final EVENT_DATA_NETWORK_STATE_CHANGED:I = 0x2

.field private static final EVENT_GET_CDMA_SUBSCRIPTION_INFO:I = 0xe

.field private static final EVENT_GET_CDMA_SUBSCRIPTION_SOURCE:I = 0xf

.field private static final EVENT_ICC_CHANGED:I = 0xa

.field private static final EVENT_NV_READY:I = 0x1b

.field private static final EVENT_POLL_STATE_REGISTRATION:I = 0x3

.field private static final EVENT_RADIO_STATE_CHANGED:I = 0x1

.field private static final EVENT_RESTRICTED_STATE_CHANGED:I = 0x14

.field private static final EVENT_RUIM_READY:I = 0x1a

.field private static final EVENT_RUIM_RECORDS_LOADED:I = 0x1d

.field private static final EVENT_SIM_READY:I = 0x19

.field private static final EVENT_SIM_RECORDS_LOADED:I = 0x1c

.field private static final LOG_TAG:Ljava/lang/String; = "DSST"

.field static final PS_DISABLED:I = 0x3ea

.field static final PS_ENABLED:I = 0x3e9

.field static final PS_NOTIFICATION:I = 0x378

.field private static final REGISTRATION_DENIED_AUTH:Ljava/lang/String; = "Authentication Failure"

.field private static final REGISTRATION_DENIED_GEN:Ljava/lang/String; = "General"


# instance fields
.field private cm:Lcom/android/internal/telephony/CommandsInterface;

.field private mCdmaRoaming:Z

.field private mCdmaRoamingInfo:Lcom/android/internal/telephony/cdma/CdmaRoamingInfoHelper;

.field private mCdmaSubscriptionInfo:Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;

.field public mCdmaSubscriptionSource:I

.field private mCdmaSubscriptionSourceChangedRegistrants:Landroid/os/RegistrantList;

.field private mContext:Landroid/content/Context;

.field private mDataConnectionAttachedRegistrants:Landroid/os/RegistrantList;

.field private mDataConnectionDetachedRegistrants:Landroid/os/RegistrantList;

.field private mDataConnectionState:I

.field private mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

.field private mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

.field private mDataServiceStateRegistrants:Landroid/os/RegistrantList;

.field private mDct:Lcom/android/internal/telephony/DataConnectionTracker;

.field private mGsmRoaming:Z

.field mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

.field private mNewDataConnectionState:I

.field private mNewSS:Landroid/telephony/ServiceState;

.field private mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

.field private mPollingContext:[I

.field private mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

.field private mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

.field private mRadioTechChangedRegistrants:Landroid/os/RegistrantList;

.field private mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

.field private mRs:Lcom/android/internal/telephony/RestrictedState;

.field private mSs:Landroid/telephony/ServiceState;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/DataConnectionTracker;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .parameter "dct"
    .parameter "context"
    .parameter "notifier"
    .parameter "ci"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 163
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 75
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    .line 76
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    .line 77
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionAttachedRegistrants:Landroid/os/RegistrantList;

    .line 78
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionDetachedRegistrants:Landroid/os/RegistrantList;

    .line 79
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    .line 81
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaSubscriptionSourceChangedRegistrants:Landroid/os/RegistrantList;

    .line 83
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    .line 84
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    .line 85
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataServiceStateRegistrants:Landroid/os/RegistrantList;

    .line 86
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRadioTechChangedRegistrants:Landroid/os/RegistrantList;

    .line 136
    iput v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionState:I

    .line 137
    iput v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewDataConnectionState:I

    .line 150
    iput v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaSubscriptionSource:I

    .line 153
    iput-boolean v3, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaRoaming:Z

    .line 159
    iput-boolean v3, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mGsmRoaming:Z

    .line 164
    iput-object p1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 165
    iput-object p4, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    .line 166
    iput-object p2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mContext:Landroid/content/Context;

    .line 167
    iput-object p3, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 174
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    .line 175
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 178
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaSubscriptionInfo:Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;

    .line 179
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaRoamingInfoHelper;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/CdmaRoamingInfoHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaRoamingInfo:Lcom/android/internal/telephony/cdma/CdmaRoamingInfoHelper;

    .line 181
    new-instance v0, Lcom/android/internal/telephony/RestrictedState;

    invoke-direct {v0}, Lcom/android/internal/telephony/RestrictedState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRs:Lcom/android/internal/telephony/RestrictedState;

    .line 183
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 184
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 187
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x14

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 194
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x10

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaSubscriptionChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 196
    return-void
.end method

.method private isCdmaRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z
    .locals 9
    .parameter "cdmaRoaming"
    .parameter "s"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 841
    const-string v7, "gsm.sim.operator.alpha"

    const-string v8, "empty"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 847
    .local v4, spn:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    .line 848
    .local v2, onsl:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v3

    .line 850
    .local v3, onss:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v0, v5

    .line 851
    .local v0, equalsOnsl:Z
    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v1, v5

    .line 853
    .local v1, equalsOnss:Z
    :goto_1
    if-eqz p1, :cond_2

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    :goto_2
    return v5

    .end local v0           #equalsOnsl:Z
    .end local v1           #equalsOnss:Z
    :cond_0
    move v0, v6

    .line 850
    goto :goto_0

    .restart local v0       #equalsOnsl:Z
    :cond_1
    move v1, v6

    .line 851
    goto :goto_1

    .restart local v1       #equalsOnss:Z
    :cond_2
    move v5, v6

    .line 853
    goto :goto_2
.end method

.method private isGsmRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z
    .locals 13
    .parameter "gsmRoaming"
    .parameter "s"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 864
    const-string v10, "gsm.sim.operator.alpha"

    const-string v11, "empty"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 866
    .local v7, spn:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    .line 867
    .local v3, onsl:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v4

    .line 869
    .local v4, onss:Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v1, v8

    .line 870
    .local v1, equalsOnsl:Z
    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move v2, v8

    .line 872
    .local v2, equalsOnss:Z
    :goto_1
    const-string v10, "gsm.sim.operator.numeric"

    const-string v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 874
    .local v6, simNumeric:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    .line 876
    .local v5, operatorNumeric:Ljava/lang/String;
    const/4 v0, 0x1

    .line 878
    .local v0, equalsMcc:Z
    const/4 v10, 0x0

    const/4 v11, 0x3

    :try_start_0
    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 883
    :goto_2
    if-eqz p1, :cond_3

    if-eqz v0, :cond_0

    if-nez v1, :cond_3

    if-nez v2, :cond_3

    :cond_0
    :goto_3
    return v8

    .end local v0           #equalsMcc:Z
    .end local v1           #equalsOnsl:Z
    .end local v2           #equalsOnss:Z
    .end local v5           #operatorNumeric:Ljava/lang/String;
    .end local v6           #simNumeric:Ljava/lang/String;
    :cond_1
    move v1, v9

    .line 869
    goto :goto_0

    .restart local v1       #equalsOnsl:Z
    :cond_2
    move v2, v9

    .line 870
    goto :goto_1

    .restart local v0       #equalsMcc:Z
    .restart local v2       #equalsOnss:Z
    .restart local v5       #operatorNumeric:Ljava/lang/String;
    .restart local v6       #simNumeric:Ljava/lang/String;
    :cond_3
    move v8, v9

    .line 883
    goto :goto_3

    .line 880
    :catch_0
    move-exception v10

    goto :goto_2
.end method

.method private isRoamIndForHomeSystem(Ljava/lang/String;)Z
    .locals 7
    .parameter "roamInd"

    .prologue
    const/4 v5, 0x0

    .line 814
    const-string v6, "ro.cdma.homesystem"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 816
    .local v2, homeRoamIndcators:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 819
    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 820
    .local v1, homeRoamInd:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 821
    const/4 v5, 0x1

    .line 829
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #homeRoamInd:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    return v5

    .line 819
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #homeRoamInd:Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static networkTypeToString(Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;)Ljava/lang/String;
    .locals 4
    .parameter "type"

    .prologue
    .line 1283
    const-string v0, "unknown"

    .line 1285
    .local v0, ret:Ljava/lang/String;
    sget-object v1, Lcom/android/internal/telephony/DataServiceStateTracker$1;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioTechnology:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1328
    const-string v1, "DSST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong network type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    :goto_0
    return-object v0

    .line 1287
    :pswitch_0
    const-string v0, "GPRS"

    .line 1288
    goto :goto_0

    .line 1290
    :pswitch_1
    const-string v0, "EDGE"

    .line 1291
    goto :goto_0

    .line 1293
    :pswitch_2
    const-string v0, "UMTS"

    .line 1294
    goto :goto_0

    .line 1297
    :pswitch_3
    const-string v0, "CDMA"

    .line 1298
    goto :goto_0

    .line 1300
    :pswitch_4
    const-string v0, "CDMA - 1xRTT"

    .line 1301
    goto :goto_0

    .line 1303
    :pswitch_5
    const-string v0, "CDMA - EvDo rev. 0"

    .line 1304
    goto :goto_0

    .line 1306
    :pswitch_6
    const-string v0, "CDMA - EvDo rev. A"

    .line 1307
    goto :goto_0

    .line 1309
    :pswitch_7
    const-string v0, "HSDPA"

    .line 1310
    goto :goto_0

    .line 1312
    :pswitch_8
    const-string v0, "HSUPA"

    .line 1313
    goto :goto_0

    .line 1315
    :pswitch_9
    const-string v0, "HSPA"

    .line 1316
    goto :goto_0

    .line 1318
    :pswitch_a
    const-string v0, "CDMA - EvDo rev. B"

    .line 1319
    goto :goto_0

    .line 1321
    :pswitch_b
    const-string v0, "CDMA - eHRPD"

    .line 1322
    goto :goto_0

    .line 1324
    :pswitch_c
    const-string v0, "LTE"

    .line 1325
    goto :goto_0

    .line 1285
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private notifyDataServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .parameter "ss"

    .prologue
    const/4 v2, 0x0

    .line 633
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-nez v1, :cond_0

    .line 634
    const-string v1, "DSST"

    const-string v2, "mDct.mPhone is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :goto_0
    return-void

    .line 639
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->notifyServiceStateChangedSeparatelyP()V

    .line 641
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 643
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataServiceStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 645
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyServiceStateChangedP(Landroid/telephony/ServiceState;)V

    goto :goto_0
.end method

.method private onRestrictedStateChanged(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    .line 959
    new-instance v1, Lcom/android/internal/telephony/RestrictedState;

    invoke-direct {v1}, Lcom/android/internal/telephony/RestrictedState;-><init>()V

    .line 961
    .local v1, newRs:Lcom/android/internal/telephony/RestrictedState;
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    .line 962
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    .line 963
    .local v0, ints:[I
    const/4 v3, 0x0

    aget v2, v0, v3

    .line 973
    .local v2, state:I
    iget-object v3, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRs:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 974
    iget-object v3, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 975
    const/16 v3, 0x3e9

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/DataServiceStateTracker;->setNotification(I)V

    .line 981
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRs:Lcom/android/internal/telephony/RestrictedState;

    .line 983
    .end local v0           #ints:[I
    .end local v2           #state:I
    :cond_1
    return-void

    .line 976
    .restart local v0       #ints:[I
    .restart local v2       #state:I
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRs:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v3

    if-nez v3, :cond_0

    .line 977
    iget-object v3, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 978
    const/16 v3, 0x3ea

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/DataServiceStateTracker;->setNotification(I)V

    goto :goto_0
.end method

.method private pollState(Ljava/lang/String;)V
    .locals 3
    .parameter "reason"

    .prologue
    const/4 v2, 0x0

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pollstate() : reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataServiceStateTracker;->logv(Ljava/lang/String;)V

    .line 308
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPollingContext:[I

    .line 309
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPollingContext:[I

    aput v2, v0, v2

    .line 311
    sget-object v0, Lcom/android/internal/telephony/DataServiceStateTracker$1;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 323
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPollingContext:[I

    aget v1, v0, v2

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v2

    .line 324
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/DataServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getDataRegistrationState(Landroid/os/Message;)V

    .line 329
    :goto_0
    return-void

    .line 313
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 314
    invoke-direct {p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->pollStateDone()V

    goto :goto_0

    .line 318
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 319
    invoke-direct {p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->pollStateDone()V

    goto :goto_0

    .line 311
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private pollStateDone()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 527
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[QCTMM]Poll ServiceState done: oldSS=["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] newSS=["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/DataServiceStateTracker;->logv(Ljava/lang/String;)V

    .line 529
    iget v12, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionState:I

    if-eqz v12, :cond_9

    iget v12, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewDataConnectionState:I

    if-nez v12, :cond_9

    move v1, v10

    .line 532
    .local v1, hasDataConnectionAttached:Z
    :goto_0
    iget v12, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionState:I

    if-nez v12, :cond_a

    iget v12, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewDataConnectionState:I

    if-eqz v12, :cond_a

    move v3, v10

    .line 535
    .local v3, hasDataConnectionDetached:Z
    :goto_1
    if-eqz v1, :cond_0

    iget-object v12, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v12

    invoke-static {v12}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->getRadioTechFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_UNKNOWN:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-ne v12, v13, :cond_0

    .line 538
    const-string v12, "Data connection has attached when data technology is uknown."

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/DataServiceStateTracker;->logw(Ljava/lang/String;)V

    .line 541
    :cond_0
    iget v12, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionState:I

    iget v13, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewDataConnectionState:I

    if-eq v12, v13, :cond_b

    move v2, v10

    .line 542
    .local v2, hasDataConnectionChanged:Z
    :goto_2
    iget-object v12, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-object v13, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v12, v13}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_c

    move v0, v10

    .line 543
    .local v0, hasChanged:Z
    :goto_3
    iget-object v12, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v12

    if-nez v12, :cond_d

    iget-object v12, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v12

    if-eqz v12, :cond_d

    move v6, v10

    .line 544
    .local v6, hasRoamingOn:Z
    :goto_4
    iget-object v12, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v12

    if-eqz v12, :cond_e

    iget-object v12, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v12

    if-nez v12, :cond_e

    move v5, v10

    .line 545
    .local v5, hasRoamingOff:Z
    :goto_5
    iget-object v12, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v12

    iget-object v13, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v13

    if-eq v12, v13, :cond_f

    move v4, v10

    .line 548
    .local v4, hasRadioTechChanged:Z
    :goto_6
    iget-object v9, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    .line 549
    .local v9, tss:Landroid/telephony/ServiceState;
    iget-object v11, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iput-object v11, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    .line 550
    iput-object v9, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 553
    iget-object v11, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 555
    iget v11, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewDataConnectionState:I

    iput v11, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionState:I

    .line 557
    if-eqz v0, :cond_1

    .line 558
    iget-object v11, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/DataServiceStateTracker;->notifyDataServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 561
    :cond_1
    if-eqz v1, :cond_2

    .line 562
    iget-object v11, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v11}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 565
    :cond_2
    if-eqz v3, :cond_3

    .line 566
    iget-object v11, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v11}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 568
    iget-object v11, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-nez v11, :cond_10

    .line 569
    const-string v11, "DSST"

    const-string v12, "DataConnectionDetached mDct.mPhone is null"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_3
    :goto_7
    if-eqz v2, :cond_4

    .line 577
    iget-object v11, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v11, :cond_11

    .line 580
    iget-object v11, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v11}, Lcom/android/internal/telephony/PhoneBase;->notifyServiceStateChangedSeparatelyP()V

    .line 588
    :cond_4
    if-eqz v4, :cond_6

    .line 592
    sget v11, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RIL_CAPABILITIES:I

    and-int/lit8 v11, v11, 0x2

    const/4 v12, 0x2

    if-ne v11, v12, :cond_5

    .line 595
    const/4 v7, 0x0

    .line 596
    .local v7, networkType:I
    const/4 v8, 0x0

    .line 597
    .local v8, rat:Z
    iget-object v11, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v7

    .line 598
    const-string v11, "DSST"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "networkType = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ,ServiceState = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getState()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v11, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-nez v11, :cond_12

    .line 601
    const-string v10, "DSST"

    const-string v11, "RadioTechChanged mDct.mPhone is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :goto_8
    const-string v10, "DSST"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " Update rat = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    if-nez v8, :cond_5

    .line 611
    const-string v10, "DSST"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "set property:[gsm.network.type]:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v12

    invoke-static {v12}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->getRadioTechFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v12

    invoke-static {v12}, Lcom/android/internal/telephony/DataServiceStateTracker;->networkTypeToString(Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const-string v10, "gsm.network.type"

    iget-object v11, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v11

    invoke-static {v11}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->getRadioTechFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/DataServiceStateTracker;->networkTypeToString(Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    .end local v7           #networkType:I
    .end local v8           #rat:Z
    :cond_5
    iget-object v10, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRadioTechChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v10}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 622
    :cond_6
    if-eqz v6, :cond_7

    .line 623
    iget-object v10, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v10}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 626
    :cond_7
    if-eqz v5, :cond_8

    .line 627
    iget-object v10, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v10}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 629
    :cond_8
    :goto_9
    return-void

    .end local v0           #hasChanged:Z
    .end local v1           #hasDataConnectionAttached:Z
    .end local v2           #hasDataConnectionChanged:Z
    .end local v3           #hasDataConnectionDetached:Z
    .end local v4           #hasRadioTechChanged:Z
    .end local v5           #hasRoamingOff:Z
    .end local v6           #hasRoamingOn:Z
    .end local v9           #tss:Landroid/telephony/ServiceState;
    :cond_9
    move v1, v11

    .line 529
    goto/16 :goto_0

    .restart local v1       #hasDataConnectionAttached:Z
    :cond_a
    move v3, v11

    .line 532
    goto/16 :goto_1

    .restart local v3       #hasDataConnectionDetached:Z
    :cond_b
    move v2, v11

    .line 541
    goto/16 :goto_2

    .restart local v2       #hasDataConnectionChanged:Z
    :cond_c
    move v0, v11

    .line 542
    goto/16 :goto_3

    .restart local v0       #hasChanged:Z
    :cond_d
    move v6, v11

    .line 543
    goto/16 :goto_4

    .restart local v6       #hasRoamingOn:Z
    :cond_e
    move v5, v11

    .line 544
    goto/16 :goto_5

    .restart local v5       #hasRoamingOff:Z
    :cond_f
    move v4, v11

    .line 545
    goto/16 :goto_6

    .line 571
    .restart local v4       #hasRadioTechChanged:Z
    .restart local v9       #tss:Landroid/telephony/ServiceState;
    :cond_10
    iget-object v11, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v11, v10, v14}, Lcom/android/internal/telephony/PhoneBase;->updateNetworkTypeGlobally(ZLjava/lang/Integer;)Z

    goto/16 :goto_7

    .line 583
    :cond_11
    const-string v10, "DSST"

    const-string v11, "mDct.mPhone is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 603
    .restart local v7       #networkType:I
    .restart local v8       #rat:Z
    :cond_12
    iget-object v11, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getState()I

    move-result v11

    if-nez v11, :cond_13

    .line 604
    iget-object v11, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Lcom/android/internal/telephony/PhoneBase;->updateNetworkTypeGlobally(ZLjava/lang/Integer;)Z

    move-result v8

    goto/16 :goto_8

    .line 606
    :cond_13
    iget-object v11, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v11, v10, v14}, Lcom/android/internal/telephony/PhoneBase;->updateNetworkTypeGlobally(ZLjava/lang/Integer;)Z

    move-result v8

    goto/16 :goto_8
.end method

.method private regCodeIsRoaming(I)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 802
    const/4 v0, 0x5

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private regCodeToServiceState(I)I
    .locals 4
    .parameter "code"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 766
    packed-switch p1, :pswitch_data_0

    .line 783
    :pswitch_0
    const-string v1, "DSST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected service state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    move v0, v1

    .line 770
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 780
    goto :goto_0

    .line 766
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private setNotification(I)V
    .locals 9
    .parameter "notifyType"

    .prologue
    .line 992
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 993
    .local v2, notification:Landroid/app/Notification;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v2, Landroid/app/Notification;->when:J

    .line 994
    const/16 v6, 0x10

    iput v6, v2, Landroid/app/Notification;->flags:I

    .line 995
    const v6, 0x108008a

    iput v6, v2, Landroid/app/Notification;->icon:I

    .line 996
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 998
    .local v1, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    const/high16 v8, 0x1000

    invoke-static {v6, v7, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1001
    const-string v0, ""

    .line 1002
    .local v0, details:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mContext:Landroid/content/Context;

    const v7, 0x10400e5

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1003
    .local v5, title:Ljava/lang/CharSequence;
    const/16 v3, 0x378

    .line 1005
    .local v3, notificationId:I
    packed-switch p1, :pswitch_data_0

    .line 1013
    :goto_0
    iput-object v5, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1014
    iget-object v6, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mContext:Landroid/content/Context;

    iget-object v7, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v6, v5, v0, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1016
    iget-object v6, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 1019
    .local v4, notificationManager:Landroid/app/NotificationManager;
    const/16 v6, 0x3ea

    if-ne p1, v6, :cond_0

    .line 1021
    invoke-virtual {v4, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1026
    :goto_1
    return-void

    .line 1007
    .end local v4           #notificationManager:Landroid/app/NotificationManager;
    :pswitch_0
    iget-object v6, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mContext:Landroid/content/Context;

    const v7, 0x10400e6

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1008
    goto :goto_0

    .line 1024
    .restart local v4       #notificationManager:Landroid/app/NotificationManager;
    :cond_0
    invoke-virtual {v4, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1

    .line 1005
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected cancelPollState()V
    .locals 1

    .prologue
    .line 651
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPollingContext:[I

    .line 652
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 1032
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDataNetworkStateChanged(Landroid/os/Handler;)V

    .line 1033
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnRestrictedStateChanged(Landroid/os/Handler;)V

    .line 1034
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaSubscriptionChanged(Landroid/os/Handler;)V

    .line 1038
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    if-eqz v0, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccCardProxy;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 1040
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccCardProxy;->unregisterForAbsent(Landroid/os/Handler;)V

    .line 1041
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccCardProxy;->unregisterForNetworkLocked(Landroid/os/Handler;)V

    .line 1042
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccCardProxy;->unregisterForLocked(Landroid/os/Handler;)V

    .line 1043
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccCardProxy;->unregisterForIccFail(Landroid/os/Handler;)V

    .line 1044
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccCardProxy;->unregisterForImeiLocked(Landroid/os/Handler;)V

    .line 1045
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccCardProxy;->unregisterForIccExpired(Landroid/os/Handler;)V

    .line 1046
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    .line 1082
    :cond_0
    return-void
.end method

.method public getDataServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x0

    .line 201
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 203
    .local v0, ar:Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 292
    const-string v1, "DSST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled message with number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 205
    :sswitch_0
    const-string v1, "radio state changed"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataServiceStateTracker;->pollState(Ljava/lang/String;)V

    .line 208
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    if-nez v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Lcom/android/internal/telephony/BaseCommands;

    invoke-virtual {v1}, Lcom/android/internal/telephony/BaseCommands;->getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    .line 210
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    const/16 v2, 0x1c

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/IccCardProxy;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 212
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    invoke-virtual {v1, p0, v4, v3}, Lcom/android/internal/telephony/IccCardProxy;->registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 213
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    invoke-virtual {v1, p0, v4, v3}, Lcom/android/internal/telephony/IccCardProxy;->registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 214
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    invoke-virtual {v1, p0, v4, v3}, Lcom/android/internal/telephony/IccCardProxy;->registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 215
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    invoke-virtual {v1, p0, v4, v3}, Lcom/android/internal/telephony/IccCardProxy;->registerForIccFail(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 216
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    invoke-virtual {v1, p0, v4, v3}, Lcom/android/internal/telephony/IccCardProxy;->registerForImeiLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 217
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    invoke-virtual {v1, p0, v4, v3}, Lcom/android/internal/telephony/IccCardProxy;->registerForIccExpired(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 255
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->updateIccAvailability()V

    .line 256
    const-string v1, "icc status changed"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataServiceStateTracker;->pollState(Ljava/lang/String;)V

    goto :goto_0

    .line 260
    :sswitch_2
    const-string v1, "ruim ready"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataServiceStateTracker;->pollState(Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :sswitch_3
    const-string v1, "nv ready"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataServiceStateTracker;->pollState(Ljava/lang/String;)V

    goto :goto_0

    .line 268
    :sswitch_4
    const-string v1, "sim ready"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataServiceStateTracker;->pollState(Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :sswitch_5
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 274
    const-string v1, "records loaded"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataServiceStateTracker;->pollState(Ljava/lang/String;)V

    goto :goto_0

    .line 279
    :sswitch_6
    const-string v1, "data network state changed"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataServiceStateTracker;->pollState(Ljava/lang/String;)V

    goto :goto_0

    .line 283
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #ar:Landroid/os/AsyncResult;
    check-cast v0, Landroid/os/AsyncResult;

    .line 284
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/DataServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    goto :goto_0

    .line 288
    :sswitch_8
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DataServiceStateTracker;->onRestrictedStateChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 203
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_6
        0x3 -> :sswitch_7
        0xa -> :sswitch_1
        0x14 -> :sswitch_8
        0x19 -> :sswitch_4
        0x1a -> :sswitch_2
        0x1b -> :sswitch_3
        0x1c -> :sswitch_5
        0x1d -> :sswitch_5
    .end sparse-switch
.end method

.method protected handlePollStateResult(ILandroid/os/AsyncResult;)V
    .locals 21
    .parameter "what"
    .parameter "ar"

    .prologue
    .line 333
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPollingContext:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    .line 337
    const/4 v7, 0x0

    .line 339
    .local v7, err:Lcom/android/internal/telephony/CommandException$Error;
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 340
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/CommandException;

    check-cast v18, Lcom/android/internal/telephony/CommandException;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v7

    .line 343
    :cond_2
    sget-object v18, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v18

    if-ne v7, v0, :cond_3

    .line 345
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->cancelPollState()V

    goto :goto_0

    .line 349
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v18

    if-nez v18, :cond_4

    .line 351
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->cancelPollState()V

    goto :goto_0

    .line 355
    :cond_4
    sget-object v18, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v18

    if-eq v7, v0, :cond_5

    sget-object v18, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v18

    if-eq v7, v0, :cond_5

    .line 357
    const-string v18, "DSST"

    const-string v19, "RIL implementation has returned an error where it must succeed"

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    invoke-static/range {v18 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 511
    .end local v7           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPollingContext:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v20, v18, v19

    add-int/lit8 v20, v20, -0x1

    aput v20, v18, v19

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPollingContext:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    if-nez v18, :cond_0

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->getRadioTechFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->isCdma()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 517
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaRoaming:Z

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaSubscriptionSource:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/DataServiceStateTracker;->updateCdmaRoamingInfoInServiceState(Ljava/lang/Boolean;ILandroid/telephony/ServiceState;)V

    .line 519
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->getRadioTechFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->isGsm()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 520
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/DataServiceStateTracker;->mGsmRoaming:Z

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/DataServiceStateTracker;->updateGsmRoamingInfoInServiceState(Ljava/lang/Boolean;Landroid/telephony/ServiceState;)V

    .line 522
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->pollStateDone()V

    goto/16 :goto_0

    .line 361
    :cond_8
    packed-switch p1, :pswitch_data_0

    .line 501
    :try_start_0
    const-string v18, "DSST"

    const-string v19, "RIL response handle in wrong phone! Expected CDMA RIL request and get GSM RIL request."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 506
    :catch_0
    move-exception v8

    .line 507
    .local v8, ex:Ljava/lang/RuntimeException;
    const-string v18, "DSST"

    const-string v19, "Exception while polling service state. Probably malformed RIL response."

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 363
    .end local v8           #ex:Ljava/lang/RuntimeException;
    :pswitch_0
    const/4 v15, 0x0

    .line 366
    .local v15, states:[Ljava/lang/String;
    :try_start_1
    sget v18, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RIL_CAPABILITIES:I

    and-int/lit8 v18, v18, 0x2

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 368
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [Ljava/lang/String;

    move-object/from16 v0, v18

    check-cast v0, [Ljava/lang/String;

    move-object v15, v0

    .line 375
    :goto_2
    if-nez v15, :cond_a

    .line 376
    const-string v18, "DSST"

    const-string v19, "states is null, return"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 372
    :cond_9
    const-string v18, "DSST"

    const-string v19, "**Notice Non MM feature should not use DataservicestateTracker**"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 379
    :cond_a
    const/4 v13, 0x4

    .line 380
    .local v13, registrationState:I
    const/4 v11, -0x1

    .line 381
    .local v11, radioTechnology:I
    const/4 v4, 0x0

    .line 382
    .local v4, cssIndicator:I
    const/16 v16, 0x0

    .line 383
    .local v16, systemId:I
    const/4 v10, 0x0

    .line 384
    .local v10, networkId:I
    const/4 v14, -0x1

    .line 385
    .local v14, roamingIndicator:I
    const/16 v17, 0x0

    .line 386
    .local v17, systemIsInPrl:I
    const/4 v6, 0x0

    .line 387
    .local v6, defaultRoamingIndicator:I
    const/4 v12, 0x0

    .line 391
    .local v12, reasonForDenial:I
    sget v18, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RIL_CAPABILITIES:I

    and-int/lit8 v18, v18, 0x2

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    .line 393
    array-length v0, v15

    move/from16 v18, v0

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_b

    .line 394
    new-instance v18, Ljava/lang/RuntimeException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Warning! Wrong number of parameters returned from RIL_REQUEST_DATA_REGISTRATION_STATE: expected 6 got "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    array-length v0, v15

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 401
    :cond_b
    const/16 v18, 0x0

    :try_start_2
    aget-object v18, v15, v18

    if-eqz v18, :cond_c

    const/16 v18, 0x0

    aget-object v18, v15, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_c

    .line 402
    const/16 v18, 0x0

    aget-object v18, v15, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 404
    :cond_c
    const/16 v18, 0x3

    aget-object v18, v15, v18

    if-eqz v18, :cond_d

    const/16 v18, 0x3

    aget-object v18, v15, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_d

    .line 405
    const/16 v18, 0x3

    aget-object v18, v15, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 407
    :cond_d
    const/16 v18, 0x4

    aget-object v18, v15, v18

    if-eqz v18, :cond_e

    const/16 v18, 0x4

    aget-object v18, v15, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_e

    .line 408
    const/16 v18, 0x4

    aget-object v18, v15, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v12

    .line 458
    :cond_e
    :goto_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/DataServiceStateTracker;->regCodeToServiceState(I)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/telephony/ServiceState;->setState(I)V

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/telephony/ServiceState;->setRadioTechnology(I)V

    .line 461
    const-string v18, "gsm.RadioDataTechnology"

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const-string v18, "DSST"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[QCTMM] SystemProperties DATA EVENT_POLL_STATE_REGISTRATION = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/DataServiceStateTracker;->regCodeToServiceState(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewDataConnectionState:I

    .line 467
    invoke-static {v11}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->getRadioTechFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->isCdma()Z

    move-result v18

    if-eqz v18, :cond_f

    .line 468
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/DataServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaRoaming:Z

    .line 470
    const-string v18, "DSST"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Broadcast ACTION_PS_ROAMING, isCdma() enable= "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaRoaming:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    new-instance v5, Landroid/content/Intent;

    const-string v18, "com.android.internal.telephony.DataConnectionTracker.INTENT_DATA_ROAM_STATUS"

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 472
    .local v5, dataRoamingStatusIntent:Landroid/content/Intent;
    const-string v18, "roam"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaRoaming:Z

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataServiceStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 477
    .end local v5           #dataRoamingStatusIntent:Landroid/content/Intent;
    :cond_f
    invoke-static {v11}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->getRadioTechFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->isGsm()Z

    move-result v18

    if-eqz v18, :cond_10

    .line 478
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/DataServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/DataServiceStateTracker;->mGsmRoaming:Z

    .line 479
    const-string v18, "DSST"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Broadcast ACTION_PS_ROAMING, isGsm() enable= "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/DataServiceStateTracker;->mGsmRoaming:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    new-instance v5, Landroid/content/Intent;

    const-string v18, "com.android.internal.telephony.DataConnectionTracker.INTENT_DATA_ROAM_STATUS"

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 481
    .restart local v5       #dataRoamingStatusIntent:Landroid/content/Intent;
    const-string v18, "roam"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/DataServiceStateTracker;->mGsmRoaming:Z

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataServiceStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 485
    .end local v5           #dataRoamingStatusIntent:Landroid/content/Intent;
    :cond_10
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v13, v0, :cond_5

    .line 486
    const-string v9, ""

    .line 487
    .local v9, mRegistrationDeniedReason:Ljava/lang/String;
    if-nez v12, :cond_1b

    .line 488
    const-string v9, "General"

    .line 496
    :goto_4
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Data Registration denied : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataServiceStateTracker;->logi(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 411
    .end local v9           #mRegistrationDeniedReason:Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 412
    .local v8, ex:Ljava/lang/NumberFormatException;
    const-string v18, "DSST"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "error parsing RegistrationState: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 417
    .end local v8           #ex:Ljava/lang/NumberFormatException;
    :cond_11
    array-length v0, v15

    move/from16 v18, v0

    const/16 v19, 0xe

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_12

    .line 418
    new-instance v18, Ljava/lang/RuntimeException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Warning! Wrong number of parameters returned from RIL_REQUEST_REGISTRATION_STATE: expected 14 got "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    array-length v0, v15

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 425
    :cond_12
    const/16 v18, 0x0

    :try_start_4
    aget-object v18, v15, v18

    if-eqz v18, :cond_13

    .line 426
    const/16 v18, 0x0

    aget-object v18, v15, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 428
    :cond_13
    const/16 v18, 0x3

    aget-object v18, v15, v18

    if-eqz v18, :cond_14

    .line 429
    const/16 v18, 0x3

    aget-object v18, v15, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 431
    :cond_14
    const/16 v18, 0x7

    aget-object v18, v15, v18

    if-eqz v18, :cond_15

    .line 432
    const/16 v18, 0x7

    aget-object v18, v15, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 434
    :cond_15
    invoke-static {v11}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->getRadioTechFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->isCdma()Z

    move-result v18

    if-eqz v18, :cond_1a

    .line 435
    const/16 v18, 0x8

    aget-object v18, v15, v18

    if-eqz v18, :cond_16

    .line 436
    const/16 v18, 0x8

    aget-object v18, v15, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 438
    :cond_16
    const/16 v18, 0x9

    aget-object v18, v15, v18

    if-eqz v18, :cond_17

    .line 439
    const/16 v18, 0x9

    aget-object v18, v15, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 441
    :cond_17
    const/16 v18, 0xa

    aget-object v18, v15, v18

    if-eqz v18, :cond_18

    .line 442
    const/16 v18, 0xa

    aget-object v18, v15, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 444
    :cond_18
    const/16 v18, 0xb

    aget-object v18, v15, v18

    if-eqz v18, :cond_19

    .line 445
    const/16 v18, 0xb

    aget-object v18, v15, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 447
    :cond_19
    const/16 v18, 0xc

    aget-object v18, v15, v18

    if-eqz v18, :cond_1a

    .line 448
    const/16 v18, 0xc

    aget-object v18, v15, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 451
    :cond_1a
    const/16 v18, 0xd

    aget-object v18, v15, v18

    if-eqz v18, :cond_e

    .line 452
    const/16 v18, 0xd

    aget-object v18, v15, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v12

    goto/16 :goto_3

    .line 454
    :catch_2
    move-exception v8

    .line 455
    .restart local v8       #ex:Ljava/lang/NumberFormatException;
    :try_start_5
    const-string v18, "DSST"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "error parsing RegistrationState: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 489
    .end local v8           #ex:Ljava/lang/NumberFormatException;
    .restart local v9       #mRegistrationDeniedReason:Ljava/lang/String;
    :cond_1b
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v12, v0, :cond_1c

    .line 490
    const-string v9, "Authentication Failure"

    goto/16 :goto_4

    .line 493
    :cond_1c
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Other : reasonForDenial = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v9

    goto/16 :goto_4

    .line 361
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method isConcurrentVoiceAndData()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 679
    iget-object v3, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->getRadioTechFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v0

    .line 680
    .local v0, r:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->isGsm()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EDGE:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq v0, v3, :cond_1

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_GPRS:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq v0, v3, :cond_1

    .line 694
    :cond_0
    :goto_0
    return v1

    .line 685
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->isGsm()Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_1xRTT:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq v0, v3, :cond_2

    const-string v3, "ro.config.svlte1x"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 690
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    if-eqz v3, :cond_3

    .line 691
    const-string v3, "DSST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSs.getCssIndicator()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getCssIndicator()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCssIndicator()I

    move-result v3

    if-eq v3, v1, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method logd(Ljava/lang/String;)V
    .locals 1
    .parameter "logString"

    .prologue
    .line 1260
    const-string v0, "DSST"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    return-void
.end method

.method loge(Ljava/lang/String;)V
    .locals 1
    .parameter "logString"

    .prologue
    .line 1279
    const-string v0, "DSST"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    return-void
.end method

.method logi(Ljava/lang/String;)V
    .locals 1
    .parameter "logString"

    .prologue
    .line 1271
    const-string v0, "DSST"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    return-void
.end method

.method logv(Ljava/lang/String;)V
    .locals 1
    .parameter "logString"

    .prologue
    .line 1266
    const-string v0, "DSST"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    return-void
.end method

.method logw(Ljava/lang/String;)V
    .locals 1
    .parameter "logString"

    .prologue
    .line 1275
    const-string v0, "DSST"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    return-void
.end method

.method public reRegisterNetwork(Landroid/os/Message;)V
    .locals 0
    .parameter "onComplete"

    .prologue
    .line 667
    return-void
.end method

.method public registerForCdmaSubscriptonSourceChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1193
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1194
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaSubscriptionSourceChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1195
    return-void
.end method

.method public registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1133
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1134
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1136
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 1137
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 1139
    :cond_0
    return-void
.end method

.method public registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1153
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1154
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1156
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1157
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 1159
    :cond_0
    return-void
.end method

.method public registerForDataRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1113
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1114
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1116
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1117
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 1119
    :cond_0
    return-void
.end method

.method public registerForDataRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1093
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1094
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1096
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1097
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 1099
    :cond_0
    return-void
.end method

.method registerForPsRestrictedDisabled(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1219
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1220
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1222
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRs:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1223
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 1225
    :cond_0
    return-void
.end method

.method registerForPsRestrictedEnabled(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1238
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1239
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1241
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRs:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1242
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 1244
    :cond_0
    return-void
.end method

.method public registerForRadioTechnologyChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1203
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1204
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRadioTechChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1205
    return-void
.end method

.method registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1173
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1174
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1185
    return-void
.end method

.method public registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataServiceStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1252
    return-void
.end method

.method public unRegisterForCdmaSubscriptonSourceChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaSubscriptionSourceChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1199
    return-void
.end method

.method public unRegisterForRadioTechnologyChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRadioTechChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1209
    return-void
.end method

.method public unregisterForDataConnectionAttached(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1143
    return-void
.end method

.method public unregisterForDataConnectionDetached(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1163
    return-void
.end method

.method public unregisterForDataRoamingOff(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1123
    return-void
.end method

.method public unregisterForDataRoamingOn(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1103
    return-void
.end method

.method unregisterForPsRestrictedDisabled(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1229
    return-void
.end method

.method unregisterForPsRestrictedEnabled(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1248
    return-void
.end method

.method unregisterForRecordsLoaded(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1189
    return-void
.end method

.method public unregisterForServiceStateChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataServiceStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1256
    return-void
.end method

.method public updateCdmaRoamingInfoInServiceState(Lcom/android/internal/telephony/cdma/CdmaRoamingInfoHelper;ILcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;Landroid/telephony/ServiceState;)V
    .locals 4
    .parameter "cdmaRoamingInfo"
    .parameter "cdmaSubscriptionSource"
    .parameter "cdmaSubscriptionInfo"
    .parameter "ss"

    .prologue
    const/4 v3, 0x2

    .line 906
    const/4 v1, 0x0

    .line 907
    .local v1, namMatch:Z
    invoke-virtual {p3}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->isSidsAllZeros()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p4}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v2

    invoke-virtual {p3, v2}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->isHomeSid(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 909
    const/4 v1, 0x1

    .line 913
    :cond_0
    if-nez p2, :cond_3

    .line 914
    iget-boolean v2, p1, Lcom/android/internal/telephony/cdma/CdmaRoamingInfoHelper;->mCdmaRoaming:Z

    invoke-direct {p0, v2, p4}, Lcom/android/internal/telephony/DataServiceStateTracker;->isCdmaRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z

    move-result v2

    invoke-virtual {p4, v2}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    .line 920
    :goto_0
    iget v2, p1, Lcom/android/internal/telephony/cdma/CdmaRoamingInfoHelper;->mDefaultRoamingIndicator:I

    invoke-virtual {p4, v2}, Landroid/telephony/ServiceState;->setCdmaDefaultRoamingIndicator(I)V

    .line 921
    iget v2, p1, Lcom/android/internal/telephony/cdma/CdmaRoamingInfoHelper;->mRoamingIndicator:I

    invoke-virtual {p4, v2}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    .line 923
    const/4 v0, 0x1

    .line 924
    .local v0, isPrlLoaded:Z
    if-eqz p3, :cond_1

    iget-object v2, p3, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mPrlVersion:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 925
    const/4 v0, 0x0

    .line 928
    :cond_1
    if-nez v0, :cond_4

    .line 929
    invoke-virtual {p4, v3}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    .line 949
    :cond_2
    :goto_1
    return-void

    .line 916
    .end local v0           #isPrlLoaded:Z
    :cond_3
    iget-boolean v2, p1, Lcom/android/internal/telephony/cdma/CdmaRoamingInfoHelper;->mCdmaRoaming:Z

    invoke-virtual {p4, v2}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    goto :goto_0

    .line 930
    .restart local v0       #isPrlLoaded:Z
    :cond_4
    invoke-virtual {p3}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->isSidsAllZeros()Z

    move-result v2

    if-nez v2, :cond_2

    .line 931
    if-nez v1, :cond_5

    iget-boolean v2, p1, Lcom/android/internal/telephony/cdma/CdmaRoamingInfoHelper;->mIsSystemInPrl:Z

    if-nez v2, :cond_5

    .line 933
    iget v2, p1, Lcom/android/internal/telephony/cdma/CdmaRoamingInfoHelper;->mDefaultRoamingIndicator:I

    invoke-virtual {p4, v2}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_1

    .line 934
    :cond_5
    if-eqz v1, :cond_6

    iget-boolean v2, p1, Lcom/android/internal/telephony/cdma/CdmaRoamingInfoHelper;->mIsSystemInPrl:Z

    if-nez v2, :cond_6

    .line 935
    invoke-virtual {p4, v3}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_1

    .line 936
    :cond_6
    if-nez v1, :cond_7

    iget-boolean v2, p1, Lcom/android/internal/telephony/cdma/CdmaRoamingInfoHelper;->mIsSystemInPrl:Z

    if-eqz v2, :cond_7

    .line 938
    iget v2, p1, Lcom/android/internal/telephony/cdma/CdmaRoamingInfoHelper;->mRoamingIndicator:I

    invoke-virtual {p4, v2}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_1

    .line 941
    :cond_7
    iget v2, p1, Lcom/android/internal/telephony/cdma/CdmaRoamingInfoHelper;->mRoamingIndicator:I

    if-gt v2, v3, :cond_8

    .line 942
    const/4 v2, 0x1

    invoke-virtual {p4, v2}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_1

    .line 945
    :cond_8
    iget v2, p1, Lcom/android/internal/telephony/cdma/CdmaRoamingInfoHelper;->mRoamingIndicator:I

    invoke-virtual {p4, v2}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_1
.end method

.method public updateCdmaRoamingInfoInServiceState(Ljava/lang/Boolean;ILandroid/telephony/ServiceState;)V
    .locals 1
    .parameter "roaming"
    .parameter "cdmaSubscriptionSource"
    .parameter "ss"

    .prologue
    .line 896
    if-nez p2, :cond_0

    .line 897
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/android/internal/telephony/DataServiceStateTracker;->isCdmaRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z

    move-result v0

    invoke-virtual {p3, v0}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    .line 901
    :goto_0
    return-void

    .line 899
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p3, v0}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    goto :goto_0
.end method

.method public updateGsmRoamingInfoInServiceState(Ljava/lang/Boolean;Landroid/telephony/ServiceState;)V
    .locals 1
    .parameter "roaming"
    .parameter "ss"

    .prologue
    .line 887
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/DataServiceStateTracker;->isGsmRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 888
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 890
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    .line 891
    return-void
.end method

.method updateIccAvailability()V
    .locals 0

    .prologue
    .line 762
    return-void
.end method
