.class public Lcom/android/internal/telephony/DefaultPhoneNotifier;
.super Ljava/lang/Object;
.source "DefaultPhoneNotifier.java"

# interfaces
.implements Lcom/android/internal/telephony/PhoneNotifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DefaultPhoneNotifier$1;,
        Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "DATA"


# instance fields
.field private latest_any_DCState:I

.field private latest_apnType:Ljava/lang/String;

.field private latest_each_DCState:I

.field private latest_ipv:Lcom/android/internal/telephony/Phone$IPVersion;

.field private latest_ipv_DCState:I

.field private latest_isDCPossible:Z

.field private latest_techIcon:I

.field private mCombineServiceState:Landroid/telephony/ServiceState;

.field private mDataServiceState:Landroid/telephony/ServiceState;

.field private mNotifyDcParamList:[Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;

.field private mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

.field private mVoiceServiceState:Landroid/telephony/ServiceState;


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x11

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mVoiceServiceState:Landroid/telephony/ServiceState;

    .line 57
    iput-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mDataServiceState:Landroid/telephony/ServiceState;

    .line 58
    iput-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mCombineServiceState:Landroid/telephony/ServiceState;

    .line 61
    iput-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->latest_apnType:Ljava/lang/String;

    .line 62
    iput-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->latest_ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    .line 63
    iput v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->latest_any_DCState:I

    .line 64
    iput v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->latest_each_DCState:I

    .line 67
    iput v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->latest_ipv_DCState:I

    .line 68
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->latest_isDCPossible:Z

    .line 69
    iput v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->latest_techIcon:I

    .line 985
    iput-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mNotifyDcParamList:[Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;

    .line 76
    const-string v1, "telephony.registry"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 79
    new-array v1, v4, [Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;

    iput-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mNotifyDcParamList:[Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;

    .line 80
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 81
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mNotifyDcParamList:[Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;

    new-instance v2, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;-><init>(Lcom/android/internal/telephony/DefaultPhoneNotifier;Lcom/android/internal/telephony/DefaultPhoneNotifier$1;)V

    aput-object v2, v1, v0

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_0
    return-void
.end method

.method private HtcDupNotifyDcParam(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;ZIZLandroid/net/LinkProperties;Landroid/net/LinkCapabilities;Lcom/android/internal/telephony/Phone$IPVersion;IIII)Z
    .locals 12
    .parameter "sender"
    .parameter "reason"
    .parameter "apnType"
    .parameter "state"
    .parameter "possible"
    .parameter "tech"
    .parameter "roaming"
    .parameter "linkProperties"
    .parameter "linkCapabilities"
    .parameter "ipv"
    .parameter "converDataResultAll"
    .parameter "converApnTypeState"
    .parameter "converRealIpApnTypeState"
    .parameter "errorCause"

    .prologue
    .line 316
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-static {p3}, Lcom/android/internal/telephony/DataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v11

    .line 318
    .local v11, apnId:I
    const/4 v0, -0x1

    if-ne v11, v0, :cond_0

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HtcDupNotifyDcParam get invalid id from type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->log(Ljava/lang/String;)V

    .line 320
    const/4 v0, 0x1

    .line 344
    :goto_0
    return v0

    .line 323
    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_MM_CONFIG:Z

    if-eqz v0, :cond_2

    .line 324
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mNotifyDcParamList:[Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;

    aget-object v0, v0, v11

    move/from16 v1, p5

    move/from16 v2, p6

    move-object/from16 v3, p10

    move/from16 v4, p11

    move/from16 v5, p12

    move/from16 v6, p13

    #calls: Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->HtcDupNotifyDcParam(ZILcom/android/internal/telephony/Phone$IPVersion;III)Z
    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->access$100(Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;ZILcom/android/internal/telephony/Phone$IPVersion;III)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    const-string v0, "MM HtcDupNotifyDcParam: the same notification, ignore"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->log(Ljava/lang/String;)V

    .line 327
    const/4 v0, 0x1

    goto :goto_0

    .line 329
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MM update DcParam of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->log(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mNotifyDcParamList:[Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;

    aget-object v0, v0, v11

    move/from16 v1, p5

    move/from16 v2, p6

    move-object/from16 v3, p10

    move/from16 v4, p11

    move/from16 v5, p12

    move/from16 v6, p13

    #calls: Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->configNotifyDcParam(ZILcom/android/internal/telephony/Phone$IPVersion;III)V
    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->access$200(Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;ZILcom/android/internal/telephony/Phone$IPVersion;III)V

    .line 332
    const/4 v0, 0x0

    goto :goto_0

    .line 336
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mNotifyDcParamList:[Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;

    aget-object v0, v0, v11

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p14

    #calls: Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->HtcDupNotifyDcParam(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;ZIZLandroid/net/LinkProperties;Landroid/net/LinkCapabilities;I)Z
    invoke-static/range {v0 .. v10}, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->access$300(Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;ZIZLandroid/net/LinkProperties;Landroid/net/LinkCapabilities;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 338
    const-string v0, "HtcDupNotifyDcParam: the same notification, ignore"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->log(Ljava/lang/String;)V

    .line 339
    const/4 v0, 0x1

    goto :goto_0

    .line 341
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update DcParam of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->log(Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mNotifyDcParamList:[Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;

    aget-object v0, v0, v11

    invoke-interface {p1, p3}, Lcom/android/internal/telephony/Phone;->getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v1, p4

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move/from16 v4, p5

    move/from16 v5, p7

    move/from16 v6, p6

    move/from16 v7, p14

    move-object v9, p2

    #calls: Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->configNotifyDcParam(Lcom/android/internal/telephony/Phone$DataState;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;ZZIILjava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v9}, Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;->access$400(Lcom/android/internal/telephony/DefaultPhoneNotifier$notifyDcParam;Lcom/android/internal/telephony/Phone$DataState;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;ZZIILjava/lang/String;Ljava/lang/String;)V

    .line 344
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/DefaultPhoneNotifier;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->latest_isDCPossible:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/DefaultPhoneNotifier;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->latest_techIcon:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/DefaultPhoneNotifier;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static convertCallState(Lcom/android/internal/telephony/Phone$State;)I
    .locals 2
    .parameter "state"

    .prologue
    .line 471
    sget-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier$1;->$SwitchMap$com$android$internal$telephony$Phone$State:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 477
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 473
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 475
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 471
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static convertCallState(I)Lcom/android/internal/telephony/Phone$State;
    .locals 1
    .parameter "state"

    .prologue
    .line 486
    packed-switch p0, :pswitch_data_0

    .line 492
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    :goto_0
    return-object v0

    .line 488
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    goto :goto_0

    .line 490
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    goto :goto_0

    .line 486
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static convertDataActivityState(Lcom/android/internal/telephony/Phone$DataActivityState;)I
    .locals 2
    .parameter "state"

    .prologue
    .line 535
    sget-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier$1;->$SwitchMap$com$android$internal$telephony$Phone$DataActivityState:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone$DataActivityState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 545
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 537
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 539
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 541
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 543
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 535
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static convertDataActivityState(I)Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1
    .parameter "state"

    .prologue
    .line 554
    packed-switch p0, :pswitch_data_0

    .line 564
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    :goto_0
    return-object v0

    .line 556
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAIN:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    .line 558
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    .line 560
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAINANDOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    .line 562
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DORMANT:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    .line 554
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static convertDataState(Lcom/android/internal/telephony/Phone$DataState;)I
    .locals 2
    .parameter "state"

    .prologue
    .line 501
    sget-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier$1;->$SwitchMap$com$android$internal$telephony$Phone$DataState:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone$DataState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 509
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 503
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 505
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 507
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 501
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static convertDataState(I)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter "state"

    .prologue
    .line 518
    packed-switch p0, :pswitch_data_0

    .line 526
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    :goto_0
    return-object v0

    .line 520
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 522
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 524
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 518
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static convertDataStateLTE(Lcom/android/internal/telephony/Phone$DataState;)I
    .locals 2
    .parameter "state"

    .prologue
    .line 792
    sget-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier$1;->$SwitchMap$com$android$internal$telephony$Phone$DataState:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone$DataState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 800
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 794
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 796
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 798
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 792
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static convertDataStateLTE(I)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter "state"

    .prologue
    .line 808
    packed-switch p0, :pswitch_data_0

    .line 816
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    :goto_0
    return-object v0

    .line 810
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 812
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 814
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 808
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private doNotifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V
    .locals 31
    .parameter "sender"
    .parameter "reason"
    .parameter "apnType"
    .parameter "state"

    .prologue
    .line 354
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v30

    .line 355
    .local v30, telephony:Landroid/telephony/TelephonyManager;
    const/4 v10, 0x0

    .line 356
    .local v10, linkProperties:Landroid/net/LinkProperties;
    const/4 v11, 0x0

    .line 357
    .local v11, linkCapabilities:Landroid/net/LinkCapabilities;
    const/4 v9, 0x0

    .line 359
    .local v9, roaming:Z
    sget-object v2, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    move-object/from16 v0, p4

    if-ne v0, v2, :cond_0

    .line 360
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v10

    .line 361
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;

    move-result-object v11

    .line 363
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v29

    .line 364
    .local v29, ss:Landroid/telephony/ServiceState;
    if-eqz v29, :cond_1

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v9

    .line 366
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->HtcisDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v7

    .line 367
    .local v7, possible:Z
    if-eqz v30, :cond_3

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v8

    .line 370
    .local v8, tech:I
    :goto_0
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getEntitleErrorCause()I

    move-result v16

    .line 373
    .local v16, errorCause:I
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getActiveApnCarrier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 376
    .local v28, apnCarrier:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DPN] state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " possible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " apn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lp=<<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v10, :cond_4

    invoke-virtual {v10}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " tech="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " roaming="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " errorCause="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " carrier="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->log(Ljava/lang/String;)V

    .line 385
    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v2 .. v16}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->HtcDupNotifyDcParam(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;ZIZLandroid/net/LinkProperties;Landroid/net/LinkCapabilities;Lcom/android/internal/telephony/Phone$IPVersion;IIII)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 434
    :cond_2
    :goto_2
    return-void

    .line 367
    .end local v8           #tech:I
    .end local v16           #errorCause:I
    .end local v28           #apnCarrier:Ljava/lang/String;
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 376
    .restart local v8       #tech:I
    .restart local v16       #errorCause:I
    .restart local v28       #apnCarrier:Ljava/lang/String;
    :cond_4
    const-string v2, "null"

    goto :goto_1

    .line 410
    :cond_5
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    move-object/from16 v17, v0

    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(Lcom/android/internal/telephony/Phone$DataState;)I

    move-result v18

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move/from16 v19, v7

    move-object/from16 v20, p2

    move-object/from16 v22, p3

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    move/from16 v25, v8

    move/from16 v26, v9

    move/from16 v27, v16

    invoke-interface/range {v17 .. v28}, Lcom/android/internal/telephony/ITelephonyRegistry;->HtcNotifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZILjava/lang/String;)V

    .line 424
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getActiveCid()I

    move-result v2

    const/16 v3, 0xa0

    if-ne v2, v3, :cond_2

    .line 425
    const-string v2, "notifyCWDataConnection"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->log(Ljava/lang/String;)V

    .line 426
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(Lcom/android/internal/telephony/Phone$DataState;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCWDataConnection(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 430
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 463
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneNotifier] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    return-void
.end method


# virtual methods
.method UpdateVoiceCallAttrFileForDrivers(Lcom/android/internal/telephony/Phone$State;)V
    .locals 9
    .parameter "state"

    .prologue
    .line 642
    const-string v2, "/sys/camera_led_status/led_ril_status"

    .line 643
    .local v2, FLASH_LIGHT_AP:Ljava/lang/String;
    const-string v3, "/sys/module/msm_flashlight/parameters/phone_status"

    .line 644
    .local v3, FLASH_LIGHT_DRV:Ljava/lang/String;
    const-string v4, "/sys/module/gpio_event/parameters/phone_call_status"

    .line 645
    .local v4, GPIO_EVENT:Ljava/lang/String;
    const-string v6, "/sys/class/power_supply/battery/charger_control"

    .line 646
    .local v6, SLOW_CHARGE:Ljava/lang/String;
    const-string v0, "/sys/module/htc_battery_8x60/parameters/phone_call"

    .line 647
    .local v0, BATTERY_CALCULATION:Ljava/lang/String;
    const-string v1, "/sys/class/power_supply/battery/phone_call"

    .line 648
    .local v1, BATTERY_CALCULATION_NEW:Ljava/lang/String;
    const-string v5, "/sys/class/htc_accessory/phonein/flag"

    .line 650
    .local v5, HTC_ACCESSORY_PHONEIN:Ljava/lang/String;
    sget-object v7, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq p1, v7, :cond_0

    .line 652
    const-string v7, "/sys/camera_led_status/led_ril_status"

    const-string v8, "1\n"

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const-string v7, "/sys/module/msm_flashlight/parameters/phone_status"

    const-string v8, "1\n"

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const-string v7, "/sys/module/gpio_event/parameters/phone_call_status"

    const-string v8, "1\n"

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const-string v7, "/sys/class/power_supply/battery/charger_control"

    const-string v8, "2\n"

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    const-string v7, "/sys/module/htc_battery_8x60/parameters/phone_call"

    const-string v8, "1\n"

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const-string v7, "/sys/class/power_supply/battery/phone_call"

    const-string v8, "1\n"

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const-string v7, "/sys/class/htc_accessory/phonein/flag"

    const-string v8, "phonein\n"

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    :goto_0
    return-void

    .line 664
    :cond_0
    const-string v7, "/sys/camera_led_status/led_ril_status"

    const-string v8, "0\n"

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const-string v7, "/sys/module/msm_flashlight/parameters/phone_status"

    const-string v8, "0\n"

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    const-string v7, "/sys/module/gpio_event/parameters/phone_call_status"

    const-string v8, "0\n"

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    const-string v7, "/sys/class/power_supply/battery/charger_control"

    const-string v8, "3\n"

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    const-string v7, "/sys/module/htc_battery_8x60/parameters/phone_call"

    const-string v8, "0\n"

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    const-string v7, "/sys/class/power_supply/battery/phone_call"

    const-string v8, "0\n"

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    const-string v7, "/sys/class/htc_accessory/phonein/flag"

    const-string v8, "phoneoff\n"

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method convertPreciseCallState(Lcom/android/internal/telephony/Call$State;)I
    .locals 3
    .parameter "state"

    .prologue
    const/4 v0, 0x1

    .line 613
    sget-object v1, Lcom/android/internal/telephony/DefaultPhoneNotifier$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 635
    :goto_0
    :pswitch_0
    return v0

    .line 618
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 620
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 622
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 624
    :pswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 626
    :pswitch_5
    const/4 v0, 0x6

    goto :goto_0

    .line 628
    :pswitch_6
    const/4 v0, 0x7

    goto :goto_0

    .line 630
    :pswitch_7
    const/16 v0, 0x8

    goto :goto_0

    .line 632
    :pswitch_8
    const/16 v0, 0x9

    goto :goto_0

    .line 613
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
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method dataRadioTechMapToDataIcon(I)I
    .locals 4
    .parameter "getRadioDataTechnology"

    .prologue
    const/4 v0, 0x4

    .line 827
    const-string v1, "DATA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[QCTMM]dataRadioTechMapToDataIcon   getRadioDataTechnology= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    packed-switch p1, :pswitch_data_0

    .line 860
    const/4 v0, 0x0

    :goto_0
    :pswitch_0
    return v0

    .line 831
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 833
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 835
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 841
    :pswitch_4
    const/4 v0, 0x7

    goto :goto_0

    .line 843
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 845
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 847
    :pswitch_7
    const/16 v0, 0x8

    goto :goto_0

    .line 849
    :pswitch_8
    const/16 v0, 0x9

    goto :goto_0

    .line 851
    :pswitch_9
    const/16 v0, 0xa

    goto :goto_0

    .line 853
    :pswitch_a
    const/16 v0, 0xc

    goto :goto_0

    .line 855
    :pswitch_b
    const/16 v0, 0xe

    goto :goto_0

    .line 857
    :pswitch_c
    const/16 v0, 0xd

    goto :goto_0

    .line 829
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
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

.method public notifyCallDisconnected(Lcom/android/internal/telephony/Connection;)V
    .locals 2
    .parameter "cn"

    .prologue
    .line 577
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, number:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/ITelephonyRegistry;->htcNotifyCallDisconnected(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    .end local v0           #number:Ljava/lang/String;
    :goto_0
    return-void

    .line 579
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public notifyCallForwardingChanged(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "sender"

    .prologue
    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCallForwardingChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyCellLocation(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "sender"

    .prologue
    .line 445
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 446
    .local v0, data:Landroid/os/Bundle;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 448
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCellLocation(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    :goto_0
    return-void

    .line 449
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public notifyDataActivity(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "sender"

    .prologue
    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataActivityState(Lcom/android/internal/telephony/Phone$DataActivityState;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataActivity(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    return-void

    .line 231
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V
    .locals 1
    .parameter "sender"
    .parameter "reason"
    .parameter "apnType"
    .parameter "state"

    .prologue
    .line 301
    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_MM_CONFIG:Z

    if-eqz v0, :cond_0

    .line 307
    :goto_0
    return-void

    .line 306
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->doNotifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V

    goto :goto_0
.end method

.method public notifyDataConnectionDisconnected(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;[Ljava/lang/String;)V
    .locals 0
    .parameter "sender"
    .parameter "reason"
    .parameter "dataConnectionState"
    .parameter "activeApnTypes"

    .prologue
    .line 238
    return-void
.end method

.method public notifyDataConnectionFailed(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "sender"
    .parameter "reason"
    .parameter "apnType"

    .prologue
    .line 438
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p2, p3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    :goto_0
    return-void

    .line 439
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyDataConnectionFailedLTE(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V
    .locals 2
    .parameter "sender"
    .parameter "reason"

    .prologue
    .line 780
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    const-string v0, "DATA"

    const-string v1, "[QCTMM] !!! Need Fix on AIDL notifyDataConnectionFailedLTE "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 785
    :goto_0
    return-void

    .line 782
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyDataConnectionLTE(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;)V
    .locals 32
    .parameter "sender"
    .parameter "apnType"
    .parameter "ipv"
    .parameter "reason"

    .prologue
    .line 716
    if-nez p1, :cond_0

    .line 717
    const-string v2, "DATA"

    const-string v3, "notifyDataConnectionLTE: sender is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v31

    .line 722
    .local v31, telephony:Landroid/telephony/TelephonyManager;
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataStateLTE(Lcom/android/internal/telephony/Phone$DataState;)I

    move-result v13

    .line 724
    .local v13, converDataResultAll:I
    invoke-interface/range {p1 .. p3}, Lcom/android/internal/telephony/Phone;->getDataConnectionState(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataStateLTE(Lcom/android/internal/telephony/Phone$DataState;)I

    move-result v14

    .line 726
    .local v14, converApnTypeState:I
    invoke-interface/range {p1 .. p3}, Lcom/android/internal/telephony/Phone;->getDataConnectionRealIpState(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataStateLTE(Lcom/android/internal/telephony/Phone$DataState;)I

    move-result v15

    .line 727
    .local v15, converRealIpApnTypeState:I
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible()Z

    move-result v7

    .line 728
    .local v7, possible:Z
    const-string v2, "gsm.RadioDataTechnology"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v30

    .line 729
    .local v30, getRadioDataTechnology:I
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->dataRadioTechMapToDataIcon(I)I

    move-result v8

    .line 742
    .local v8, tech:I
    const-string v2, "DATA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DPN] type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " anyState(TM)="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " eachState(TM)="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " eachIPState(TM)="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ipv="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/Phone$IPVersion;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " profile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p1 .. p3}, Lcom/android/internal/telephony/Phone;->getActiveApn(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " if="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p1 .. p3}, Lcom/android/internal/telephony/Phone;->getInterfaceName(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ip="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p1 .. p3}, Lcom/android/internal/telephony/Phone;->getIpAddress(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " gw="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p1 .. p3}, Lcom/android/internal/telephony/Phone;->getGateway(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " possible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tech="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v16, -0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p2

    move-object/from16 v12, p3

    invoke-direct/range {v2 .. v16}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->HtcDupNotifyDcParam(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;ZIZLandroid/net/LinkProperties;Landroid/net/LinkCapabilities;Lcom/android/internal/telephony/Phone$IPVersion;IIII)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 774
    :goto_0
    return-void

    .line 756
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    move-object/from16 v16, v0

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/Phone$IPVersion;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {p1 .. p3}, Lcom/android/internal/telephony/Phone;->getActiveApn(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {p1 .. p3}, Lcom/android/internal/telephony/Phone;->getInterfaceName(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {p1 .. p3}, Lcom/android/internal/telephony/Phone;->getIpAddress(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {p1 .. p3}, Lcom/android/internal/telephony/Phone;->getGateway(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v24

    move/from16 v17, v13

    move-object/from16 v18, p2

    move/from16 v20, v14

    move/from16 v25, v7

    move/from16 v26, v8

    move/from16 v27, v15

    move-object/from16 v28, p4

    invoke-interface/range {v16 .. v28}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataConnectionLTE(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 770
    :catch_0
    move-exception v29

    .line 772
    .local v29, ex:Landroid/os/RemoteException;
    const-string v2, "DATA"

    const-string v3, "notifyDataConnectionLTE Exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public notifyDataConnectionVZWLTE(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V
    .locals 4
    .parameter "sender"
    .parameter "reason"

    .prologue
    .line 243
    const-string v1, "DATA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PhoneNotifier] OLD notifyDataConnection, reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_WPHONE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    :goto_0
    return-void

    .line 247
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .local v0, telephony:Landroid/telephony/TelephonyManager;
    goto :goto_0
.end method

.method public notifyMessageWaitingChanged(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "sender"

    .prologue
    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicatorEnhanced()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyMessageWaitingChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    return-void

    .line 214
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyOtaspChanged(Lcom/android/internal/telephony/Phone;I)V
    .locals 1
    .parameter "sender"
    .parameter "otaspMode"

    .prologue
    .line 456
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyOtaspChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    :goto_0
    return-void

    .line 457
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyPhoneState(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter "sender"

    .prologue
    .line 87
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 88
    .local v1, ringingCall:Lcom/android/internal/telephony/Call;
    const-string v0, ""

    .line 89
    .local v0, incomingNumber:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 90
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 93
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(Lcom/android/internal/telephony/Phone$State;)I

    move-result v3

    invoke-interface {v2, v3, v0}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCallState(ILjava/lang/String;)V

    .line 95
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->UpdateVoiceCallAttrFileForDrivers(Lcom/android/internal/telephony/Phone$State;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public notifyPrecisePhoneState(Lcom/android/internal/telephony/Phone;)V
    .locals 6
    .parameter "sender"

    .prologue
    .line 585
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 586
    .local v2, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 587
    .local v1, foregroundCall:Lcom/android/internal/telephony/Call;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 588
    .local v0, backgroundCall:Lcom/android/internal/telephony/Call;
    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    .line 590
    .local v3, state:Lcom/android/internal/telephony/Call$State;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 592
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 604
    :cond_0
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertPreciseCallState(Lcom/android/internal/telephony/Call$State;)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/ITelephonyRegistry;->htcNotifyPreciseCallStateChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    :goto_1
    return-void

    .line 594
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_2

    .line 596
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    goto :goto_0

    .line 598
    :cond_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_0

    .line 600
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    goto :goto_0

    .line 605
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public notifyServiceState(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "sender"

    .prologue
    .line 175
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 176
    .local v0, ss:Landroid/telephony/ServiceState;
    if-nez v0, :cond_0

    .line 177
    new-instance v0, Landroid/telephony/ServiceState;

    .end local v0           #ss:Landroid/telephony/ServiceState;
    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    .line 178
    .restart local v0       #ss:Landroid/telephony/ServiceState;
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 181
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setPhoneType(I)V

    .line 186
    :cond_0
    :try_start_0
    sget-boolean v1, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_MM_CONFIG:Z

    if-eqz v1, :cond_1

    .line 187
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->notifyServiceStateVZWLTE(Lcom/android/internal/telephony/Phone;)V

    .line 196
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyServiceState(Landroid/telephony/ServiceState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 193
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public notifyServiceStateAndSeparate(Lcom/android/internal/telephony/Phone;)V
    .locals 7
    .parameter "sender"

    .prologue
    const/4 v6, 0x1

    .line 113
    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getVoiceServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 114
    new-instance v3, Landroid/telephony/ServiceState;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getVoiceServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    iput-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mVoiceServiceState:Landroid/telephony/ServiceState;

    .line 116
    :cond_0
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 117
    new-instance v3, Landroid/telephony/ServiceState;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    iput-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mDataServiceState:Landroid/telephony/ServiceState;

    .line 125
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    move-object v3, v0

    iget-object v4, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mVoiceServiceState:Landroid/telephony/ServiceState;

    iget-object v5, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mDataServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->combineVoiceDataServiceStates(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mCombineServiceState:Landroid/telephony/ServiceState;

    .line 126
    const-string v3, "DATA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "combineServiceStates ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mVoiceServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mDataServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] => ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mCombineServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_MM_CONFIG:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v2, 0x0

    .line 133
    .local v2, vss:[Landroid/telephony/ServiceState;
    const/4 v1, 0x0

    .line 134
    .local v1, dss:[Landroid/telephony/ServiceState;
    sget-boolean v3, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_MM_CONFIG:Z

    if-eqz v3, :cond_2

    .line 136
    iget-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mVoiceServiceState:Landroid/telephony/ServiceState;

    if-eqz v3, :cond_4

    .line 137
    const/4 v3, 0x1

    new-array v2, v3, [Landroid/telephony/ServiceState;

    .line 138
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mVoiceServiceState:Landroid/telephony/ServiceState;

    aput-object v4, v2, v3

    .line 151
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mDataServiceState:Landroid/telephony/ServiceState;

    if-eqz v3, :cond_2

    .line 152
    const/4 v3, 0x1

    new-array v1, v3, [Landroid/telephony/ServiceState;

    .line 153
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mDataServiceState:Landroid/telephony/ServiceState;

    aput-object v4, v1, v3

    .line 160
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, v6, :cond_5

    iget-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mVoiceServiceState:Landroid/telephony/ServiceState;

    :goto_1
    invoke-interface {v4, v3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyServiceState(Landroid/telephony/ServiceState;)V

    .line 164
    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 165
    iget-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v3, v2, v1}, Lcom/android/internal/telephony/ITelephonyRegistry;->htcNotifySeparateServiceState([Landroid/telephony/ServiceState;[Landroid/telephony/ServiceState;)V

    .line 171
    .end local v1           #dss:[Landroid/telephony/ServiceState;
    .end local v2           #vss:[Landroid/telephony/ServiceState;
    :cond_3
    :goto_2
    return-void

    .line 142
    .restart local v1       #dss:[Landroid/telephony/ServiceState;
    .restart local v2       #vss:[Landroid/telephony/ServiceState;
    :cond_4
    new-instance v3, Landroid/telephony/ServiceState;

    invoke-direct {v3}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mVoiceServiceState:Landroid/telephony/ServiceState;

    .line 143
    iget-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mVoiceServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 146
    iget-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mVoiceServiceState:Landroid/telephony/ServiceState;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/ServiceState;->setPhoneType(I)V

    goto :goto_0

    .line 168
    .end local v1           #dss:[Landroid/telephony/ServiceState;
    .end local v2           #vss:[Landroid/telephony/ServiceState;
    :catch_0
    move-exception v3

    goto :goto_2

    .line 160
    .restart local v1       #dss:[Landroid/telephony/ServiceState;
    .restart local v2       #vss:[Landroid/telephony/ServiceState;
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mCombineServiceState:Landroid/telephony/ServiceState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public notifyServiceStateVZWLTE(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter "sender"

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->notifyServiceStateAndSeparate(Lcom/android/internal/telephony/Phone;)V

    .line 106
    return-void
.end method

.method public notifySignalStrength(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "sender"

    .prologue
    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifySignalStrength(Landroid/telephony/SignalStrength;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "filename"
    .parameter "value"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 678
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 680
    .local v3, file:Ljava/io/File;
    if-eqz v3, :cond_0

    .line 682
    const/4 v0, 0x0

    .line 685
    .local v0, bufferWriter:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 v5, 0x80

    invoke-direct {v1, v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 686
    .end local v0           #bufferWriter:Ljava/io/BufferedWriter;
    .local v1, bufferWriter:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 698
    if-eqz v1, :cond_0

    .line 702
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 711
    .end local v1           #bufferWriter:Ljava/io/BufferedWriter;
    :cond_0
    :goto_0
    return-void

    .line 688
    .restart local v0       #bufferWriter:Ljava/io/BufferedWriter;
    :catch_0
    move-exception v2

    .line 690
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v4, "FileNotFoundException : %s "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 698
    if-eqz v0, :cond_0

    .line 702
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 704
    :catch_1
    move-exception v2

    .line 706
    .local v2, e:Ljava/io/IOException;
    const-string v4, "close file to cause IOException : %s "

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .end local v0           #bufferWriter:Ljava/io/BufferedWriter;
    :goto_2
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 692
    .end local v2           #e:Ljava/io/IOException;
    .restart local v0       #bufferWriter:Ljava/io/BufferedWriter;
    :catch_2
    move-exception v2

    .line 694
    .restart local v2       #e:Ljava/io/IOException;
    :goto_3
    :try_start_5
    const-string v4, "IOException: %s "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->log(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 698
    if-eqz v0, :cond_0

    .line 702
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 704
    :catch_3
    move-exception v2

    .line 706
    const-string v4, "close file to cause IOException : %s "

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 698
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_4
    if-eqz v0, :cond_1

    .line 702
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 698
    :cond_1
    :goto_5
    throw v4

    .line 704
    :catch_4
    move-exception v2

    .line 706
    .restart local v2       #e:Ljava/io/IOException;
    const-string v5, "close file to cause IOException : %s "

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->log(Ljava/lang/String;)V

    goto :goto_5

    .line 704
    .end local v0           #bufferWriter:Ljava/io/BufferedWriter;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #bufferWriter:Ljava/io/BufferedWriter;
    :catch_5
    move-exception v2

    .line 706
    .restart local v2       #e:Ljava/io/IOException;
    const-string v4, "close file to cause IOException : %s "

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 698
    .end local v2           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #bufferWriter:Ljava/io/BufferedWriter;
    .restart local v0       #bufferWriter:Ljava/io/BufferedWriter;
    goto :goto_4

    .line 692
    .end local v0           #bufferWriter:Ljava/io/BufferedWriter;
    .restart local v1       #bufferWriter:Ljava/io/BufferedWriter;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1           #bufferWriter:Ljava/io/BufferedWriter;
    .restart local v0       #bufferWriter:Ljava/io/BufferedWriter;
    goto :goto_3

    .line 688
    .end local v0           #bufferWriter:Ljava/io/BufferedWriter;
    .restart local v1       #bufferWriter:Ljava/io/BufferedWriter;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1           #bufferWriter:Ljava/io/BufferedWriter;
    .restart local v0       #bufferWriter:Ljava/io/BufferedWriter;
    goto/16 :goto_1
.end method
