.class public Lcom/android/internal/telephony/HtcSequentialRadioPower;
.super Landroid/os/Handler;
.source "HtcSequentialRadioPower.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;
    }
.end annotation


# static fields
.field private static final DEBUG_DETAIL:Z = false

.field private static final EVENT_CMD_CELLUAR:I = 0x5

.field private static final EVENT_CMD_CELLULAR:I = 0x6

.field private static final EVENT_CMD_COMPLETE:I = 0x7

.field private static final EVENT_CMD_MSG_TIMEOUT:I = 0x8

.field private static final EVENT_CMD_RADIO:I = 0x4

.field private static final EVENT_INIT:I = 0x1

.field private static final EVENT_QUEUE_INSERT:I = 0x3

.field private static final EVENT_STOP:I = 0x2

.field private static final INTENT_COMMAND_ALARM:Ljava/lang/String; = "com.android.internal.telephony.seq-radio"

.field private static final INTENT_COMMAND_EXTEA:Ljava/lang/String; = "seqNo"

.field private static final LOG_PREFIX:Ljava/lang/String; = "SeqRdo-"

.field private static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field private static final TIMEOUT_COMMAND_MS:I = 0x9c40

.field private static mReflectDetectComplete:Z

.field private static mReflectInterface:Ljava/lang/Object;

.field private static mRilFuncPowerControlObj:Ljava/lang/reflect/Method;


# instance fields
.field private mBcaseReceiver:Landroid/content/BroadcastReceiver;

.field private mBlockingCommandQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockingCommandUntilQuickbootOn:Z

.field private mCommandAlarmIntent:Landroid/app/PendingIntent;

.field private mCommandRegistrants:Landroid/os/RegistrantList;

.field private mContext:Landroid/content/Context;

.field private mLast_PartialControl_Radio:Ljava/lang/Boolean;

.field private mPartialControlQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;",
            ">;"
        }
    .end annotation
.end field

.field private mPartialControl_Radio:[Ljava/lang/Boolean;

.field private mPartialControl_Sim:[Ljava/lang/Boolean;

.field private mProcessingIndex:I

.field private mProcessingRadioPartCommand:Ljava/lang/Boolean;

.field private mProcessingSimPartCommand:Ljava/lang/Boolean;

.field private mRil:Lcom/android/internal/telephony/CommandsInterface;

.field private mRilFuncCelluarPower:Ljava/lang/reflect/Method;

.field private mRilFuncCellularPower:Ljava/lang/reflect/Method;

.field private mStateMonitor:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 182
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mReflectInterface:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 10
    .parameter "context"
    .parameter "ril"

    .prologue
    const/4 v4, 0x2

    const/4 v9, 0x1

    .line 191
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 185
    new-instance v3, Ljava/lang/Object;

    invoke-direct/range {v3 .. v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mStateMonitor:Ljava/lang/Object;

    .line 186
    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mCommandRegistrants:Landroid/os/RegistrantList;

    .line 257
    new-array v3, v4, [Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    .line 258
    new-array v3, v9, [Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    .line 259
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControlQueue:Ljava/util/LinkedList;

    .line 262
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mBlockingCommandQueue:Ljava/util/LinkedList;

    .line 192
    iput-object p1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mContext:Landroid/content/Context;

    .line 193
    iput-object p2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRil:Lcom/android/internal/telephony/CommandsInterface;

    .line 195
    const/4 v0, 0x0

    .line 197
    .local v0, cls:Ljava/lang/Class;
    :try_start_0
    const-string v3, "com.android.internal.telephony.CommandsInterface"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 201
    :goto_0
    if-eqz v0, :cond_1

    .line 202
    sget-object v4, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mReflectInterface:Ljava/lang/Object;

    monitor-enter v4

    .line 204
    :try_start_1
    const-string v3, "htcSequentialRadioControl"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/Object;

    aput-object v7, v5, v6

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRilFuncPowerControlObj:Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 208
    :goto_1
    :try_start_2
    sget-object v3, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRilFuncPowerControlObj:Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_0

    .line 210
    :try_start_3
    sget-object v3, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRilFuncPowerControlObj:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRil:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p0, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 215
    :cond_0
    :goto_2
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 217
    :cond_1
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->sendEmptyMessage(I)Z

    .line 218
    return-void

    .line 198
    :catch_0
    move-exception v1

    .line 199
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SeqRdo-CommandsInterface ex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 205
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 206
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_5
    const-string v3, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SeqRdo-htcSequentialRadioControl ex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 215
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v3

    .line 211
    :catch_2
    move-exception v2

    .line 212
    .local v2, ex:Ljava/lang/Exception;
    :try_start_6
    const-string v3, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SeqRdo-Unable to setup HTC power control : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/HtcSequentialRadioPower;Ljava/lang/Boolean;)C
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->charLogBooleanValue(Ljava/lang/Boolean;)C

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/HtcSequentialRadioPower;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    return v0
.end method

.method static synthetic access$208(Lcom/android/internal/telephony/HtcSequentialRadioPower;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/HtcSequentialRadioPower;Ljava/lang/Integer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->commandTimer(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/HtcSequentialRadioPower;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mLast_PartialControl_Radio:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/HtcSequentialRadioPower;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mBlockingCommandUntilQuickbootOn:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/HtcSequentialRadioPower;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mBlockingCommandUntilQuickbootOn:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/HtcSequentialRadioPower;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mStateMonitor:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/HtcSequentialRadioPower;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mBlockingCommandQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/HtcSequentialRadioPower;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mBlockingCommandQueue:Ljava/util/LinkedList;

    return-object p1
.end method

.method private celluarPowerFailSuppliment(Ljava/lang/Boolean;I)V
    .locals 4
    .parameter "celluarState"
    .parameter "sequenceNo"

    .prologue
    .line 713
    iput-object p1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingSimPartCommand:Ljava/lang/Boolean;

    .line 714
    iput-object p1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mLast_PartialControl_Radio:Ljava/lang/Boolean;

    .line 715
    iget-object v0, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRil:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p2, v3}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 716
    return-void
.end method

.method private cellularPowerFailSuppliment(Ljava/lang/Boolean;I)V
    .locals 7
    .parameter "cellularState"
    .parameter "sequenceNo"

    .prologue
    .line 696
    const/4 v0, 0x1

    .line 697
    .local v0, cellularPowerFail:Z
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRilFuncCelluarPower:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 699
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRilFuncCelluarPower:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRil:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-virtual {p0, v5, p2, v6, p1}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    const/4 v0, 0x0

    .line 704
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 708
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->celluarPowerFailSuppliment(Ljava/lang/Boolean;I)V

    .line 710
    :cond_1
    return-void

    .line 702
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private charLogBooleanValue(Ljava/lang/Boolean;)C
    .locals 1
    .parameter "value"

    .prologue
    .line 765
    if-eqz p1, :cond_1

    .line 766
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x31

    .line 768
    :goto_0
    return v0

    .line 766
    :cond_0
    const/16 v0, 0x30

    goto :goto_0

    .line 768
    :cond_1
    const/16 v0, 0x2d

    goto :goto_0
.end method

.method private commandTimer(Ljava/lang/Integer;)V
    .locals 8
    .parameter "seqNo"

    .prologue
    const-wide/32 v6, 0x9c40

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 858
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->removeMessages(I)V

    .line 860
    iget-object v2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 861
    .local v0, am:Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mCommandAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    .line 862
    iget-object v2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mCommandAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 863
    iget-object v2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mCommandAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->cancel()V

    .line 864
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mCommandAlarmIntent:Landroid/app/PendingIntent;

    .line 868
    :cond_0
    if-eqz p1, :cond_1

    .line 869
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v5, v2, v4}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2, v6, v7}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 872
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.telephony.seq-radio"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 873
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "seqNo"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 874
    iget-object v2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mCommandAlarmIntent:Landroid/app/PendingIntent;

    .line 875
    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long/2addr v3, v6

    iget-object v5, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mCommandAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 879
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/HtcSequentialRadioPower;
    .locals 3
    .parameter "context"
    .parameter "ril"

    .prologue
    .line 93
    invoke-static {p1}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->getObject(Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/HtcSequentialRadioPower;

    move-result-object v0

    .line 94
    .local v0, seqPower:Lcom/android/internal/telephony/HtcSequentialRadioPower;
    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;

    .end local v0           #seqPower:Lcom/android/internal/telephony/HtcSequentialRadioPower;
    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/HtcSequentialRadioPower;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 100
    .restart local v0       #seqPower:Lcom/android/internal/telephony/HtcSequentialRadioPower;
    :goto_0
    return-object v0

    .line 98
    :cond_0
    const-string v1, "PHONE"

    const-string v2, "SeqRdo-This RIL has been registerred."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static dispose(Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 8
    .parameter "ril"

    .prologue
    const/4 v7, 0x2

    .line 107
    invoke-static {p0}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->getObject(Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/HtcSequentialRadioPower;

    move-result-object v1

    .line 108
    .local v1, seqPower:Lcom/android/internal/telephony/HtcSequentialRadioPower;
    if-eqz v1, :cond_1

    .line 109
    sget-object v3, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mReflectInterface:Ljava/lang/Object;

    monitor-enter v3

    .line 110
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRilFuncPowerControlObj:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 112
    :try_start_1
    sget-object v4, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRilFuncPowerControlObj:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x1

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 117
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->sendEmptyMessage(I)Z

    .line 120
    :cond_1
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, ex:Ljava/lang/Exception;
    :try_start_3
    const-string v2, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SeqRdo-Unable to clear HTC power control : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public static getObject(Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/HtcSequentialRadioPower;
    .locals 7
    .parameter "ril"

    .prologue
    const/4 v2, 0x0

    .line 126
    sget-object v3, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mReflectInterface:Ljava/lang/Object;

    monitor-enter v3

    .line 127
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRilFuncPowerControlObj:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 128
    const/4 v0, 0x0

    .line 130
    .local v0, obj:Ljava/lang/Object;
    :try_start_1
    sget-object v4, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRilFuncPowerControlObj:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x1

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 132
    .end local v0           #obj:Ljava/lang/Object;
    :goto_0
    if-eqz v0, :cond_0

    .line 133
    :try_start_2
    check-cast v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;

    monitor-exit v3

    .line 137
    :goto_1
    return-object v0

    .line 136
    :cond_0
    monitor-exit v3

    move-object v0, v2

    .line 137
    goto :goto_1

    .line 136
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 131
    .restart local v0       #obj:Ljava/lang/Object;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private lock_clearPartialControlIntoOne([Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2
    .parameter "givenPartialControl"
    .parameter "givenState"

    .prologue
    .line 779
    const/4 v1, 0x0

    aput-object p2, p1, v1

    .line 780
    const/4 v0, 0x1

    .local v0, index:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 781
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 780
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 783
    :cond_0
    return-void
.end method

.method private lock_clearQueueAndSendBackNotifyAll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 798
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_clearPartialControlIntoOne([Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 799
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_clearPartialControlIntoOne([Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 801
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControlQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 802
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControlQueue:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;

    .line 803
    .local v0, cmd:Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;
    if-eqz v0, :cond_0

    .line 804
    iget-object v1, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->response:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 805
    iget-object v1, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->response:Landroid/os/Message;

    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    .line 806
    iget-object v1, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->response:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 811
    .end local v0           #cmd:Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mCommandRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 812
    return-void
.end method

.method private lock_getLatestPartialControlState([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 5
    .parameter "partialControlStatus"

    .prologue
    .line 786
    const/4 v2, 0x0

    .line 787
    .local v2, latestState:Ljava/lang/Boolean;
    if-eqz p1, :cond_1

    .line 788
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/Boolean;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 789
    .local v4, status:Ljava/lang/Boolean;
    if-eqz v4, :cond_0

    .line 790
    move-object v2, v4

    .line 788
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 794
    .end local v0           #arr$:[Ljava/lang/Boolean;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v4           #status:Ljava/lang/Boolean;
    :cond_1
    return-object v2
.end method

.method private lock_logPartialControlCommands()Ljava/lang/String;
    .locals 7

    .prologue
    .line 815
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 817
    .local v5, strBuf:Ljava/lang/StringBuffer;
    const-string v6, "Cmd "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 819
    iget-object v0, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    .local v0, arr$:[Ljava/lang/Boolean;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 820
    .local v1, cmdRadio:Ljava/lang/Boolean;
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->charLogBooleanValue(Ljava/lang/Boolean;)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 819
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 822
    .end local v1           #cmdRadio:Ljava/lang/Boolean;
    :cond_0
    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 823
    iget-object v0, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 824
    .local v2, cmdSim:Ljava/lang/Boolean;
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->charLogBooleanValue(Ljava/lang/Boolean;)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 823
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 827
    .end local v2           #cmdSim:Ljava/lang/Boolean;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private lock_logQueueCommands()V
    .locals 5

    .prologue
    .line 831
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 833
    .local v2, strBuf:Ljava/lang/StringBuffer;
    const-string v3, "SeqRdo-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 834
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_logPartialControlCommands()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 835
    const-string v3, " queue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 837
    const/4 v1, 0x0

    .line 838
    .local v1, index:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControlQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 839
    iget-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControlQueue:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;

    .line 840
    .local v0, cmd:Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;
    if-eqz v0, :cond_0

    .line 841
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 842
    invoke-virtual {v0}, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 844
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 845
    goto :goto_0

    .line 846
    .end local v0           #cmd:Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;
    :cond_1
    const-string v3, "PHONE"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    return-void
.end method

.method private lock_removeFirstPartialControl([Ljava/lang/Boolean;)V
    .locals 3
    .parameter "givenPartialControl"

    .prologue
    const/4 v2, 0x1

    .line 772
    array-length v0, p1

    if-le v0, v2, :cond_0

    .line 773
    const/4 v0, 0x0

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 775
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 776
    return-void
.end method

.method public static needToMaintainSimWhenRadioOff()Z
    .locals 9

    .prologue
    .line 66
    const/4 v3, 0x0

    .line 67
    .local v3, hasSimCard:Z
    sget-object v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_ACCOUNT_CAPABILITIES:[I

    .line 68
    .local v1, accounts:[I
    move-object v2, v1

    .local v2, arr$:[I
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_2

    aget v0, v2, v4

    .line 69
    .local v0, account:I
    and-int/lit8 v7, v0, 0x1

    if-nez v7, :cond_0

    and-int/lit8 v7, v0, 0x4

    if-nez v7, :cond_0

    and-int/lit8 v7, v0, 0x8

    if-nez v7, :cond_0

    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_1

    .line 74
    :cond_0
    const/4 v3, 0x1

    .line 68
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 78
    .end local v0           #account:I
    :cond_2
    const/4 v6, 0x0

    .line 79
    .local v6, needSimActive:Z
    if-eqz v3, :cond_3

    .line 80
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v8, 0x51

    if-ne v7, v8, :cond_3

    .line 81
    const/4 v6, 0x1

    .line 84
    :cond_3
    return v6
.end method

.method private processQueueCommands(Z)V
    .locals 21
    .parameter "initialIssue"

    .prologue
    .line 533
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingSimPartCommand:Ljava/lang/Boolean;

    if-eqz v13, :cond_1

    .line 693
    :cond_0
    :goto_0
    return-void

    .line 539
    :cond_1
    const/4 v10, 0x0

    .line 540
    .local v10, queueBeforeDecision:Ljava/lang/String;
    const/4 v9, 0x0

    .line 541
    .local v9, queueAfterDecision:Ljava/lang/String;
    const/4 v11, 0x0

    .line 542
    .local v11, rilState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v14

    .line 543
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    const/4 v15, 0x0

    aget-object v13, v13, v15

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    const/4 v15, 0x0

    aget-object v13, v13, v15

    if-nez v13, :cond_2

    .line 546
    monitor-exit v14

    goto :goto_0

    .line 639
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .line 549
    :cond_2
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_logPartialControlCommands()Ljava/lang/String;

    move-result-object v10

    .line 552
    if-eqz p1, :cond_e

    .line 553
    const/4 v6, 0x0

    .line 555
    .local v6, forceRadio:Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_getLatestPartialControlState([Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v8

    .line 556
    .local v8, lastSimCommand:Ljava/lang/Boolean;
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_4

    .line 558
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 559
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v15}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_clearPartialControlIntoOne([Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 560
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v15}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_clearPartialControlIntoOne([Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 624
    :goto_1
    if-eqz v6, :cond_3

    .line 625
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    .line 626
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingSimPartCommand:Ljava/lang/Boolean;

    .line 638
    .end local v6           #forceRadio:Ljava/lang/Boolean;
    .end local v8           #lastSimCommand:Ljava/lang/Boolean;
    :cond_3
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_logPartialControlCommands()Ljava/lang/String;

    move-result-object v9

    .line 639
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 641
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    .line 643
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 644
    .local v12, strBuf:Ljava/lang/StringBuffer;
    const-string v13, "SeqRdo-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 645
    const-string v13, "Issue command "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 646
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->charLogBooleanValue(Ljava/lang/Boolean;)C

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 647
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingSimPartCommand:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->charLogBooleanValue(Ljava/lang/Boolean;)C

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 648
    const/16 v13, 0x2f

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 649
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 650
    const-string v13, " ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 651
    invoke-virtual {v12, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 652
    const-string v13, "] "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 653
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mLast_PartialControl_Radio:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->charLogBooleanValue(Ljava/lang/Boolean;)C

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 654
    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->charLogBooleanValue(Ljava/lang/Boolean;)C

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 655
    invoke-static {}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->needToMaintainSimWhenRadioOff()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->charLogBooleanValue(Ljava/lang/Boolean;)C

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 656
    const/16 v13, 0x2f

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 657
    invoke-virtual {v12, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 658
    const-string v13, " ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 659
    invoke-virtual {v12, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 660
    const/16 v13, 0x5d

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 661
    const-string v13, "PHONE"

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingSimPartCommand:Ljava/lang/Boolean;

    if-eqz v13, :cond_10

    .line 664
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingSimPartCommand:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    .line 665
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mLast_PartialControl_Radio:Ljava/lang/Boolean;

    .line 666
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRil:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingSimPartCommand:Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    const/4 v15, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    move/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->obtainMessage(III)Landroid/os/Message;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 668
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->commandTimer(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 563
    .end local v12           #strBuf:Ljava/lang/StringBuffer;
    .restart local v6       #forceRadio:Ljava/lang/Boolean;
    .restart local v8       #lastSimCommand:Ljava/lang/Boolean;
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_getLatestPartialControlState([Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v7

    .line 564
    .local v7, lastRadioCommand:Ljava/lang/Boolean;
    if-nez v8, :cond_5

    .line 565
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    .line 568
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_clearPartialControlIntoOne([Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_1

    .line 571
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    const/4 v15, 0x0

    aget-object v13, v13, v15

    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v13, v15}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 572
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    array-length v13, v13

    const/4 v15, 0x1

    if-le v13, v15, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    const/4 v15, 0x1

    aget-object v13, v13, v15

    if-eqz v13, :cond_6

    .line 573
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 574
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v15}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_clearPartialControlIntoOne([Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 575
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_clearPartialControlIntoOne([Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_1

    .line 578
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    array-length v13, v13

    const/4 v15, 0x1

    if-le v13, v15, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    const/4 v15, 0x1

    aget-object v13, v13, v15

    if-eqz v13, :cond_7

    .line 579
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 580
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_clearPartialControlIntoOne([Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_1

    .line 582
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    const/4 v15, 0x0

    aget-object v13, v13, v15

    if-nez v13, :cond_8

    .line 583
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 585
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    const/4 v15, 0x0

    aget-object v13, v13, v15

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 586
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 589
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mLast_PartialControl_Radio:Ljava/lang/Boolean;

    if-nez v13, :cond_a

    .line 590
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 592
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mLast_PartialControl_Radio:Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 593
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRil:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v13}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v11

    .line 594
    sget-object v13, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v11, v13, :cond_b

    .line 595
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 598
    :cond_b
    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    .line 599
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v15}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_clearPartialControlIntoOne([Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_1

    .line 604
    :cond_c
    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    .line 605
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v15}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_clearPartialControlIntoOne([Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_1

    .line 619
    :cond_d
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 630
    .end local v6           #forceRadio:Ljava/lang/Boolean;
    .end local v7           #lastRadioCommand:Ljava/lang/Boolean;
    .end local v8           #lastSimCommand:Ljava/lang/Boolean;
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    const/4 v15, 0x0

    aget-object v13, v13, v15

    if-eqz v13, :cond_f

    .line 631
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    const/4 v15, 0x0

    aget-object v13, v13, v15

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingSimPartCommand:Ljava/lang/Boolean;

    goto/16 :goto_2

    .line 634
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    const/4 v15, 0x0

    aget-object v13, v13, v15

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 670
    .restart local v12       #strBuf:Ljava/lang/StringBuffer;
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    if-eqz v13, :cond_0

    .line 671
    const/4 v5, 0x1

    .line 672
    .local v5, cellularPowerFail:Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mLast_PartialControl_Radio:Ljava/lang/Boolean;

    .line 673
    invoke-static {}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->needToMaintainSimWhenRadioOff()Z

    move-result v13

    if-eqz v13, :cond_13

    .line 674
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRilFuncCellularPower:Ljava/lang/reflect/Method;

    if-eqz v13, :cond_11

    .line 676
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRilFuncCellularPower:Ljava/lang/reflect/Method;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRil:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 678
    const/4 v5, 0x0

    .line 681
    :cond_11
    :goto_3
    if-eqz v5, :cond_12

    .line 685
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->cellularPowerFailSuppliment(Ljava/lang/Boolean;I)V

    .line 691
    :cond_12
    :goto_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->commandTimer(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 689
    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->cellularPowerFailSuppliment(Ljava/lang/Boolean;I)V

    goto :goto_4

    .line 679
    :catch_0
    move-exception v13

    goto :goto_3
.end method

.method private radioCommandComplete()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 719
    const/4 v0, 0x0

    .line 721
    .local v0, tryToSubmitCommand:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 722
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingSimPartCommand:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    if-eqz v1, :cond_0

    .line 724
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingSimPartCommand:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 725
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_removeFirstPartialControl([Ljava/lang/Boolean;)V

    .line 731
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 733
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 734
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    array-length v1, v1

    if-le v1, v6, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    if-nez v1, :cond_3

    .line 736
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_removeFirstPartialControl([Ljava/lang/Boolean;)V

    .line 746
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    if-nez v1, :cond_5

    .line 748
    const-string v1, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SeqRdo-Ends all commands - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_clearQueueAndSendBackNotifyAll()V

    .line 754
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 756
    iput-object v7, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingRadioPartCommand:Ljava/lang/Boolean;

    .line 757
    iput-object v7, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingSimPartCommand:Ljava/lang/Boolean;

    .line 758
    if-eqz v0, :cond_4

    .line 759
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SeqRdo-Check next "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->processQueueCommands(Z)V

    .line 762
    :cond_4
    return-void

    .line 752
    :cond_5
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_logPartialControlCommands()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 754
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public controlRadioPower(ZLjava/lang/Boolean;Landroid/os/Message;)V
    .locals 12
    .parameter "radioPartOn"
    .parameter "simPartOn"
    .parameter "response"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 268
    new-instance v0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;

    invoke-direct {v0, p0, v6}, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;-><init>(Lcom/android/internal/telephony/HtcSequentialRadioPower;Lcom/android/internal/telephony/HtcSequentialRadioPower$1;)V

    .line 270
    .local v0, cmd:Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;
    iput-boolean p1, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->radioOn:Z

    .line 271
    iput-object p2, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->simOn:Ljava/lang/Boolean;

    .line 272
    iput-object p3, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->response:Landroid/os/Message;

    .line 274
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    iput v6, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->pid:I

    .line 275
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    iput v6, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->uid:I

    .line 276
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v6

    iput v6, v0, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->tid:I

    .line 281
    const/4 v2, 0x0

    .line 282
    .local v2, cmd_RadioPart:Ljava/lang/Boolean;
    const/4 v3, 0x0

    .line 284
    .local v3, cmd_SimPart:Ljava/lang/Boolean;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 285
    invoke-static {}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->needToMaintainSimWhenRadioOff()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 286
    move-object v3, p2

    .line 288
    :cond_0
    if-nez v3, :cond_1

    .line 289
    move-object v3, v2

    .line 293
    :cond_1
    const/4 v4, 0x0

    .line 294
    .local v4, commandUpdate:Z
    iget-object v8, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v8

    .line 295
    :try_start_0
    iget-boolean v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mBlockingCommandUntilQuickbootOn:Z

    if-nez v6, :cond_b

    .line 296
    iget-object v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControlQueue:Ljava/util/LinkedList;

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 298
    iget-object v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    const/4 v9, 0x0

    aget-object v6, v6, v9

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    const/4 v9, 0x0

    aget-object v6, v6, v9

    if-nez v6, :cond_2

    .line 300
    const/4 v4, 0x1

    .line 303
    :cond_2
    const/4 v1, 0x0

    .line 304
    .local v1, cmdSimInQueue:I
    if-eqz v3, :cond_5

    .line 306
    iget-object v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    array-length v6, v6

    add-int/lit8 v1, v6, -0x1

    .line 308
    :goto_0
    if-ltz v1, :cond_3

    iget-object v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    aget-object v6, v6, v1

    if-nez v6, :cond_3

    .line 309
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 311
    :cond_3
    if-gez v1, :cond_7

    .line 312
    add-int/lit8 v1, v1, 0x1

    .line 313
    iget-object v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    aput-object v3, v6, v1

    .line 338
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 342
    :cond_5
    iget-object v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    const/4 v9, 0x0

    aput-object v2, v6, v9

    .line 344
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_logQueueCommands()V

    .line 346
    if-eqz v4, :cond_6

    .line 347
    iget-object v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mCommandRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 353
    .end local v1           #cmdSimInQueue:I
    :cond_6
    :goto_2
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    const/4 v8, 0x3

    if-eqz v4, :cond_c

    const/4 v6, 0x1

    :goto_3
    invoke-virtual {p0, v8, v6, v7}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->sendMessage(Landroid/os/Message;)Z

    .line 356
    return-void

    .line 315
    .restart local v1       #cmdSimInQueue:I
    :cond_7
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    aget-object v6, v6, v1

    invoke-virtual {v6, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 316
    if-lez v1, :cond_8

    .line 317
    iget-object v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    const/4 v9, 0x0

    aput-object v9, v6, v1

    .line 318
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 321
    :cond_8
    iget-object v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    aget-object v6, v6, v1

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v9}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 332
    :cond_9
    :goto_4
    iget-object v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    aput-object v3, v6, v1

    goto :goto_1

    .line 353
    .end local v1           #cmdSimInQueue:I
    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 325
    .restart local v1       #cmdSimInQueue:I
    :cond_a
    add-int/lit8 v1, v1, 0x1

    .line 326
    :try_start_2
    iget-object v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    array-length v6, v6

    if-lt v1, v6, :cond_9

    .line 327
    add-int/lit8 v6, v1, 0x1

    new-array v5, v6, [Ljava/lang/Boolean;

    .line 328
    .local v5, tmp:[Ljava/lang/Boolean;
    iget-object v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    array-length v11, v11

    invoke-static {v6, v9, v5, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 329
    iput-object v5, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    goto :goto_4

    .line 351
    .end local v1           #cmdSimInQueue:I
    .end local v5           #tmp:[Ljava/lang/Boolean;
    :cond_b
    iget-object v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mBlockingCommandQueue:Ljava/util/LinkedList;

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_c
    move v6, v7

    .line 355
    goto :goto_3
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v9, 0x7

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v12, 0x0

    .line 374
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 375
    .local v0, ar:Landroid/os/AsyncResult;
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 377
    :pswitch_0
    const/4 v1, 0x0

    .line 379
    .local v1, cls:Ljava/lang/Class;
    :try_start_0
    const-string v6, "com.android.internal.telephony.CommandsInterface"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 383
    :goto_1
    sget-object v7, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mReflectInterface:Ljava/lang/Object;

    monitor-enter v7

    .line 384
    const/4 v5, 0x0

    .line 385
    .local v5, setupSeqRadioCtl:Z
    if-eqz v1, :cond_2

    .line 386
    :try_start_1
    sget-object v6, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRilFuncPowerControlObj:Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_1

    .line 387
    const/4 v5, 0x1

    .line 389
    :try_start_2
    const-string v6, "htcSequentialRadioControl"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Ljava/lang/Object;

    aput-object v10, v8, v9

    invoke-virtual {v1, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRilFuncPowerControlObj:Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 395
    :cond_1
    :goto_2
    :try_start_3
    const-string v6, "setCelluarPower"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Landroid/os/Message;

    aput-object v10, v8, v9

    invoke-virtual {v1, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRilFuncCelluarPower:Ljava/lang/reflect/Method;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 400
    :goto_3
    :try_start_4
    const-string v6, "setCellularPower"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Landroid/os/Message;

    aput-object v10, v8, v9

    invoke-virtual {v1, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRilFuncCellularPower:Ljava/lang/reflect/Method;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 405
    :cond_2
    :goto_4
    if-eqz v5, :cond_3

    :try_start_5
    sget-object v6, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRilFuncPowerControlObj:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_3

    .line 406
    const-string v6, "PHONE"

    const-string v8, "SeqRdo-Late setup HTC power control"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 408
    :try_start_6
    sget-object v6, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRilFuncPowerControlObj:Ljava/lang/reflect/Method;

    iget-object v8, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mRil:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p0, v9, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 413
    :cond_3
    :goto_5
    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 415
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 416
    .local v4, filter:Landroid/content/IntentFilter;
    const-string v6, "com.android.internal.telephony.seq-radio"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 417
    const-string v6, "android.intent.action.QUICKBOOT_POWERON"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 418
    const-string v6, "android.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 419
    new-instance v6, Lcom/android/internal/telephony/HtcSequentialRadioPower$1;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/HtcSequentialRadioPower$1;-><init>(Lcom/android/internal/telephony/HtcSequentialRadioPower;)V

    iput-object v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mBcaseReceiver:Landroid/content/BroadcastReceiver;

    .line 462
    iget-object v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mBcaseReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v4, v12, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 380
    .end local v4           #filter:Landroid/content/IntentFilter;
    .end local v5           #setupSeqRadioCtl:Z
    :catch_0
    move-exception v2

    .line 381
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "PHONE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SeqRdo-CommandsInterface event ex: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 390
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v5       #setupSeqRadioCtl:Z
    :catch_1
    move-exception v2

    .line 391
    .restart local v2       #e:Ljava/lang/Exception;
    :try_start_8
    const-string v6, "PHONE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SeqRdo-htcSequentialRadioControl event ex: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 413
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v6

    .line 396
    :catch_2
    move-exception v2

    .line 397
    .restart local v2       #e:Ljava/lang/Exception;
    :try_start_9
    const-string v6, "PHONE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SeqRdo-setCellularPower ex: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 401
    .end local v2           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 402
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v6, "PHONE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SeqRdo-setCellularPower ex: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 409
    .end local v2           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v3

    .line 410
    .local v3, ex:Ljava/lang/Exception;
    const-string v6, "PHONE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SeqRdo-Unable to setup HTC power control : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_5

    .line 466
    .end local v1           #cls:Ljava/lang/Class;
    .end local v3           #ex:Ljava/lang/Exception;
    .end local v5           #setupSeqRadioCtl:Z
    :pswitch_1
    invoke-direct {p0, v12}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->commandTimer(Ljava/lang/Integer;)V

    .line 467
    iget-object v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mBcaseReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v6, :cond_0

    .line 468
    iget-object v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mBcaseReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 469
    iput-object v12, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mBcaseReceiver:Landroid/content/BroadcastReceiver;

    goto/16 :goto_0

    .line 473
    :pswitch_2
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-eqz v8, :cond_4

    :goto_6
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->processQueueCommands(Z)V

    goto/16 :goto_0

    :cond_4
    move v6, v7

    goto :goto_6

    .line 476
    :pswitch_3
    iget v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v7, :cond_0

    .line 477
    iget v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    .line 478
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->sendEmptyMessage(I)Z

    .line 479
    invoke-direct {p0, v12}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->commandTimer(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 483
    :pswitch_4
    iget v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v7, :cond_0

    .line 484
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_5

    .line 485
    const-string v6, "PHONE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SeqRdo-Execute cellular failure - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->cellularPowerFailSuppliment(Ljava/lang/Boolean;I)V

    goto/16 :goto_0

    .line 489
    :cond_5
    iget v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    .line 490
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->sendEmptyMessage(I)Z

    .line 491
    invoke-direct {p0, v12}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->commandTimer(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 496
    :pswitch_5
    iget v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v7, :cond_0

    .line 497
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_6

    .line 498
    const-string v6, "PHONE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SeqRdo-Execute celluar failure - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->celluarPowerFailSuppliment(Ljava/lang/Boolean;I)V

    goto/16 :goto_0

    .line 502
    :cond_6
    iget v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    .line 503
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->sendEmptyMessage(I)Z

    .line 504
    invoke-direct {p0, v12}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->commandTimer(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 509
    :pswitch_6
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->radioCommandComplete()V

    goto/16 :goto_0

    .line 512
    :pswitch_7
    iget v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v7, :cond_0

    .line 513
    iget v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I

    .line 514
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->sendEmptyMessage(I)Z

    .line 515
    invoke-direct {p0, v12}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->commandTimer(Ljava/lang/Integer;)V

    .line 516
    const-string v6, "PHONE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SeqRdo-Command timeout event - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 375
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public radioCommandExecuting()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 146
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Radio:[Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_getLatestPartialControlState([Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerForCommandUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 164
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 166
    .local v0, r:Landroid/os/Registrant;
    iget-object v2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mCommandRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 168
    monitor-exit v2

    .line 169
    return-void

    .line 168
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public simCommandExecuting()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 155
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mPartialControl_Sim:[Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->lock_getLatestPartialControlState([Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForCommandUpdate(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 175
    iget-object v1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower;->mCommandRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 177
    monitor-exit v1

    .line 178
    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
