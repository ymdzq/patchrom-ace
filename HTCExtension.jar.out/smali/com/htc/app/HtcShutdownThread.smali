.class public final Lcom/htc/app/HtcShutdownThread;
.super Ljava/lang/Thread;
.source "HtcShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/app/HtcShutdownThread$CloseDialogReceiver;
    }
.end annotation


# static fields
.field private static final FM_SERVICE_COMMAND:Ljava/lang/String; = "com.htc.fm.servicecommand"

.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_NUM_PHONE_STATE_READS:I = 0x40

.field private static final MAX_RESTART_WAIT_TIME:I = 0x2710

.field private static final MAX_SHUTDOWN_ANIMATION_TIME:I = 0x2710

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field private static final SHUTDOWN_CIQ:Ljava/lang/String; = "com.android.internal.policy.impl.SHUTDOWN_CIQ"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HtcShutdownThread"

.field private static mHibernate:Z

.field private static mReboot:Z

.field private static mRebootReason:Ljava/lang/String;

.field private static mResumeCount:I

.field private static mShutdownListener:Lcom/htc/shutdown/HtcShutdownScreen$OnShutdownListener;

.field private static pd:Landroid/app/ProgressDialog;

.field private static sInstance:Lcom/htc/app/HtcShutdownThread;

.field private static sIsAnimationCompleted:Z

.field private static sIsAnimationReady:Z

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;

.field private static shutdown:Lcom/htc/shutdown/HtcShutdownScreen;


# instance fields
.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/app/HtcShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 94
    sput-boolean v1, Lcom/htc/app/HtcShutdownThread;->sIsStarted:Z

    .line 95
    sput-boolean v1, Lcom/htc/app/HtcShutdownThread;->sIsAnimationCompleted:Z

    .line 96
    sput-boolean v1, Lcom/htc/app/HtcShutdownThread;->sIsAnimationReady:Z

    .line 117
    sput v1, Lcom/htc/app/HtcShutdownThread;->mResumeCount:I

    .line 455
    new-instance v0, Lcom/htc/app/HtcShutdownThread$4;

    invoke-direct {v0}, Lcom/htc/app/HtcShutdownThread$4;-><init>()V

    sput-object v0, Lcom/htc/app/HtcShutdownThread;->mShutdownListener:Lcom/htc/shutdown/HtcShutdownScreen$OnShutdownListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/app/HtcShutdownThread;->mStarted:Z

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/app/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 120
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    sput-boolean p0, Lcom/htc/app/HtcShutdownThread;->mReboot:Z

    return p0
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-static {p0}, Lcom/htc/app/HtcShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 73
    sget-boolean v0, Lcom/htc/app/HtcShutdownThread;->sIsAnimationReady:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    sput-boolean p0, Lcom/htc/app/HtcShutdownThread;->sIsAnimationCompleted:Z

    return p0
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .locals 15
    .parameter "context"

    .prologue
    const/16 v14, 0x7da

    const/4 v9, 0x2

    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 337
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.SHUTDOWN_ANIMATION"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 339
    sget-object v8, Lcom/htc/app/HtcShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v8

    .line 340
    :try_start_0
    sget-boolean v7, Lcom/htc/app/HtcShutdownThread;->sIsStarted:Z

    if-eqz v7, :cond_1

    .line 343
    const-string v7, "HtcShutdownThread"

    const-string v9, "Shutdown sequence already running, returning."

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    monitor-exit v8

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    const/4 v7, 0x1

    sput-boolean v7, Lcom/htc/app/HtcShutdownThread;->sIsStarted:Z

    .line 347
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 350
    .local v6, home:Landroid/content/Intent;
    const-string v7, "android.intent.category.HOME"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    const/high16 v7, 0x1000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 352
    invoke-virtual {p0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 354
    const/16 v7, 0xd8

    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v7, v8, :cond_2

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-eq v9, v7, :cond_4

    :cond_2
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v12, v7, :cond_3

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-eq v9, v7, :cond_4

    :cond_3
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v9, v7, :cond_6

    .line 358
    :cond_4
    const-string v7, "ctl.stop"

    const-string v8, "zchgd_onmode"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-wide/16 v9, 0x2710

    add-long v4, v7, v9

    .line 361
    .local v4, endRestartTime:J
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long v1, v4, v7

    .line 362
    .local v1, delay:J
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-gtz v7, :cond_9

    .line 380
    .end local v1           #delay:J
    .end local v4           #endRestartTime:J
    :cond_6
    :goto_1
    invoke-static {}, Lcom/htc/app/HtcShutdownThread;->isUseAnimation()Z

    move-result v0

    .line 381
    .local v0, bUseAnim:Z
    if-nez v0, :cond_a

    .line 384
    new-instance v7, Landroid/app/ProgressDialog;

    invoke-direct {v7, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v7, Lcom/htc/app/HtcShutdownThread;->pd:Landroid/app/ProgressDialog;

    .line 385
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->pd:Landroid/app/ProgressDialog;

    const v8, 0x1040124

    invoke-virtual {p0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 386
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->pd:Landroid/app/ProgressDialog;

    const v8, 0x1040128

    invoke-virtual {p0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 387
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v7, v12}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 388
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v7, v11}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 389
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v14}, Landroid/view/Window;->setType(I)V

    .line 391
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->show()V

    .line 392
    sput-boolean v12, Lcom/htc/app/HtcShutdownThread;->sIsAnimationCompleted:Z

    .line 393
    sput-boolean v12, Lcom/htc/app/HtcShutdownThread;->sIsAnimationReady:Z

    .line 412
    :goto_2
    new-instance v7, Lcom/htc/app/HtcShutdownThread;

    invoke-direct {v7}, Lcom/htc/app/HtcShutdownThread;-><init>()V

    sput-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    .line 413
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iput-object p0, v7, Lcom/htc/app/HtcShutdownThread;->mContext:Landroid/content/Context;

    .line 414
    sget-object v8, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    const-string v7, "power"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    iput-object v7, v8, Lcom/htc/app/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 415
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v7, v7, Lcom/htc/app/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v7, v11}, Landroid/os/PowerManager;->setAblActive(I)V

    .line 417
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iput-object v13, v7, Lcom/htc/app/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 419
    :try_start_1
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    sget-object v8, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v8, v8, Lcom/htc/app/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v9, 0x1

    const-string v10, "HtcShutdownThread-cpu"

    invoke-virtual {v8, v9, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    iput-object v8, v7, Lcom/htc/app/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 421
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v7, v7, Lcom/htc/app/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v7, :cond_7

    .line 422
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v7, v7, Lcom/htc/app/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 423
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v7, v7, Lcom/htc/app/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 432
    :cond_7
    :goto_3
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iput-object v13, v7, Lcom/htc/app/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 433
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v7, v7, Lcom/htc/app/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v7}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 435
    :try_start_2
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    sget-object v8, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v8, v8, Lcom/htc/app/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v9, 0x1a

    const-string v10, "HtcShutdownThread-screen"

    invoke-virtual {v8, v9, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    iput-object v8, v7, Lcom/htc/app/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 437
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v7, v7, Lcom/htc/app/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v7, :cond_8

    .line 438
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v7, v7, Lcom/htc/app/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 439
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v7, v7, Lcom/htc/app/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 447
    :cond_8
    :goto_4
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    new-instance v8, Lcom/htc/app/HtcShutdownThread$3;

    invoke-direct {v8}, Lcom/htc/app/HtcShutdownThread$3;-><init>()V

    iput-object v8, v7, Lcom/htc/app/HtcShutdownThread;->mHandler:Landroid/os/Handler;

    .line 449
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    invoke-virtual {v7}, Lcom/htc/app/HtcShutdownThread;->isAlive()Z

    move-result v7

    if-nez v7, :cond_0

    .line 450
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    invoke-virtual {v7}, Lcom/htc/app/HtcShutdownThread;->start()V

    goto/16 :goto_0

    .line 347
    .end local v0           #bUseAnim:Z
    .end local v6           #home:Landroid/content/Intent;
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7

    .line 371
    .restart local v1       #delay:J
    .restart local v4       #endRestartTime:J
    .restart local v6       #home:Landroid/content/Intent;
    :cond_9
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v7, 0x64

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    .line 375
    :goto_5
    const-string v7, "zchgd_onmode"

    const-string v8, "stopped"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "stopped"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto/16 :goto_1

    .line 398
    .end local v1           #delay:J
    .end local v4           #endRestartTime:J
    .restart local v0       #bUseAnim:Z
    :cond_a
    new-instance v7, Lcom/htc/shutdown/HtcShutdownScreen;

    const v8, 0x1030005

    invoke-direct {v7, p0, v8}, Lcom/htc/shutdown/HtcShutdownScreen;-><init>(Landroid/content/Context;I)V

    sput-object v7, Lcom/htc/app/HtcShutdownThread;->shutdown:Lcom/htc/shutdown/HtcShutdownScreen;

    .line 399
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->shutdown:Lcom/htc/shutdown/HtcShutdownScreen;

    sget-object v8, Lcom/htc/app/HtcShutdownThread;->mShutdownListener:Lcom/htc/shutdown/HtcShutdownScreen$OnShutdownListener;

    invoke-virtual {v7, v8}, Lcom/htc/shutdown/HtcShutdownScreen;->setShutdownListener(Lcom/htc/shutdown/HtcShutdownScreen$OnShutdownListener;)V

    .line 400
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->shutdown:Lcom/htc/shutdown/HtcShutdownScreen;

    invoke-virtual {v7}, Lcom/htc/shutdown/HtcShutdownScreen;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v14}, Landroid/view/Window;->setType(I)V

    .line 401
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->shutdown:Lcom/htc/shutdown/HtcShutdownScreen;

    invoke-virtual {v7}, Lcom/htc/shutdown/HtcShutdownScreen;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x400

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    .line 403
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->shutdown:Lcom/htc/shutdown/HtcShutdownScreen;

    invoke-virtual {v7}, Lcom/htc/shutdown/HtcShutdownScreen;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/high16 v8, -0x8000

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    .line 405
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->shutdown:Lcom/htc/shutdown/HtcShutdownScreen;

    invoke-virtual {v7, v11}, Lcom/htc/shutdown/HtcShutdownScreen;->setCancelable(Z)V

    .line 406
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->shutdown:Lcom/htc/shutdown/HtcShutdownScreen;

    invoke-virtual {v7}, Lcom/htc/shutdown/HtcShutdownScreen;->show()V

    .line 408
    sput-boolean v11, Lcom/htc/app/HtcShutdownThread;->sIsAnimationCompleted:Z

    goto/16 :goto_2

    .line 425
    :catch_0
    move-exception v3

    .line 428
    .local v3, e:Ljava/lang/SecurityException;
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iput-object v13, v7, Lcom/htc/app/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_3

    .line 441
    .end local v3           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v3

    .line 444
    .restart local v3       #e:Ljava/lang/SecurityException;
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iput-object v13, v7, Lcom/htc/app/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_4

    .line 373
    .end local v0           #bUseAnim:Z
    .end local v3           #e:Ljava/lang/SecurityException;
    .restart local v1       #delay:J
    .restart local v4       #endRestartTime:J
    :catch_2
    move-exception v7

    goto :goto_5
.end method

.method public static hibernate(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "confirm"

    .prologue
    const/4 v4, 0x1

    .line 318
    sput-boolean v4, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    .line 319
    const-string v2, "sys.shutdown.mode"

    const-string v3, "hibernate"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hibernate_nowait"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 328
    .local v1, nowait:I
    :goto_0
    if-ne v1, v4, :cond_0

    .line 329
    const-string v2, "sys.shutdown.nowait"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :cond_0
    invoke-static {p0, p1}, Lcom/htc/app/HtcShutdownThread;->shutdown(Landroid/content/Context;Z)V

    .line 332
    return-void

    .line 325
    .end local v1           #nowait:I
    :catch_0
    move-exception v0

    .line 326
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const/4 v1, 0x0

    .restart local v1       #nowait:I
    goto :goto_0
.end method

.method private static isUseAnimation()Z
    .locals 11

    .prologue
    .line 1019
    new-instance v6, Lcom/htc/shutdown/ConfigReader;

    invoke-direct {v6}, Lcom/htc/shutdown/ConfigReader;-><init>()V

    .line 1020
    .local v6, mReader:Lcom/htc/shutdown/ConfigReader;
    new-instance v5, Lcom/htc/shutdown/ConfigData;

    invoke-direct {v5}, Lcom/htc/shutdown/ConfigData;-><init>()V

    .line 1021
    .local v5, mData:Lcom/htc/shutdown/ConfigData;
    const/4 v8, 0x0

    .line 1022
    .local v8, useAnimation:Z
    const-string v9, "ro.cid"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1026
    .local v7, str_cid:Ljava/lang/String;
    const-string v3, "/data/data/cw/animation.xml"

    .line 1027
    .local v3, cw_config_path:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1028
    .local v2, cwConfig:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1031
    invoke-virtual {v6, v3}, Lcom/htc/shutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 1032
    invoke-virtual {v6}, Lcom/htc/shutdown/ConfigReader;->getConfigData()Lcom/htc/shutdown/ConfigData;

    move-result-object v5

    .line 1034
    iget-object v9, v5, Lcom/htc/shutdown/ConfigData;->image:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 1037
    const/4 v9, 0x1

    .line 1099
    :goto_0
    return v9

    .line 1041
    :cond_0
    if-eqz v7, :cond_6

    .line 1045
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/system/customize/CID/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".xml"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1049
    .local v1, config_path:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1050
    .local v0, config:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1051
    invoke-virtual {v6, v1}, Lcom/htc/shutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 1052
    invoke-virtual {v6}, Lcom/htc/shutdown/ConfigReader;->getConfigData()Lcom/htc/shutdown/ConfigData;

    move-result-object v5

    .line 1053
    iget-object v9, v5, Lcom/htc/shutdown/ConfigData;->image:Ljava/lang/String;

    if-nez v9, :cond_4

    .line 1056
    const-string v9, "/system/customize/CID/default.xml"

    invoke-virtual {v6, v9}, Lcom/htc/shutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 1057
    invoke-virtual {v6}, Lcom/htc/shutdown/ConfigReader;->getConfigData()Lcom/htc/shutdown/ConfigData;

    move-result-object v5

    .line 1058
    iget-object v9, v5, Lcom/htc/shutdown/ConfigData;->image:Ljava/lang/String;

    if-nez v9, :cond_3

    .line 1092
    .end local v0           #config:Ljava/io/File;
    .end local v1           #config_path:Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v9, v5, Lcom/htc/shutdown/ConfigData;->image:Ljava/lang/String;

    if-nez v9, :cond_2

    .line 1093
    new-instance v4, Ljava/io/File;

    const-string v9, "/system/customize/resource/shutdown.zip"

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1094
    .local v4, defaultFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1095
    const/4 v8, 0x1

    .end local v4           #defaultFile:Ljava/io/File;
    :cond_2
    move v9, v8

    .line 1099
    goto :goto_0

    .line 1062
    .restart local v0       #config:Ljava/io/File;
    .restart local v1       #config_path:Ljava/lang/String;
    :cond_3
    const/4 v8, 0x1

    goto :goto_1

    .line 1065
    :cond_4
    const/4 v8, 0x1

    goto :goto_1

    .line 1070
    :cond_5
    const-string v9, "/system/customize/CID/default.xml"

    invoke-virtual {v6, v9}, Lcom/htc/shutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 1071
    invoke-virtual {v6}, Lcom/htc/shutdown/ConfigReader;->getConfigData()Lcom/htc/shutdown/ConfigData;

    move-result-object v5

    .line 1072
    iget-object v9, v5, Lcom/htc/shutdown/ConfigData;->image:Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 1076
    const/4 v8, 0x1

    goto :goto_1

    .line 1082
    .end local v0           #config:Ljava/io/File;
    .end local v1           #config_path:Ljava/lang/String;
    :cond_6
    const-string v9, "/system/customize/CID/default.xml"

    invoke-virtual {v6, v9}, Lcom/htc/shutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 1083
    invoke-virtual {v6}, Lcom/htc/shutdown/ConfigReader;->getConfigData()Lcom/htc/shutdown/ConfigData;

    move-result-object v5

    .line 1084
    iget-object v9, v5, Lcom/htc/shutdown/ConfigData;->image:Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 1088
    const/4 v8, 0x1

    goto :goto_1
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .parameter "context"
    .parameter "reason"
    .parameter "confirm"

    .prologue
    .line 312
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/app/HtcShutdownThread;->mReboot:Z

    .line 313
    sput-object p1, Lcom/htc/app/HtcShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 314
    invoke-static {p0, p2}, Lcom/htc/app/HtcShutdownThread;->shutdown(Landroid/content/Context;Z)V

    .line 315
    return-void
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .locals 10
    .parameter "context"
    .parameter "confirm"

    .prologue
    .line 133
    sget-object v9, Lcom/htc/app/HtcShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v9

    .line 134
    :try_start_0
    sget-boolean v8, Lcom/htc/app/HtcShutdownThread;->sIsStarted:Z

    if-eqz v8, :cond_1

    .line 137
    monitor-exit v9

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    if-eqz p1, :cond_3

    .line 155
    sget-boolean v8, Lcom/htc/app/HtcShutdownThread;->mReboot:Z

    if-eqz v8, :cond_2

    .line 156
    const v5, 0x20c00c6

    .line 157
    .local v5, idTitle:I
    const v2, 0x20c00c7

    .line 158
    .local v2, idMessage:I
    const v4, 0x20c00c8

    .line 159
    .local v4, idPositive:I
    const v3, 0x1040009

    .line 167
    .local v3, idNegative:I
    :goto_1
    new-instance v0, Lcom/htc/app/HtcShutdownThread$CloseDialogReceiver;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 168
    .local v0, closer:Lcom/htc/app/HtcShutdownThread$CloseDialogReceiver;
    new-instance v8, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v8, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x1080027

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/htc/app/HtcShutdownThread$2;

    invoke-direct {v9, p0}, Lcom/htc/app/HtcShutdownThread$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v4, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/htc/app/HtcShutdownThread$1;

    invoke-direct {v9}, Lcom/htc/app/HtcShutdownThread$1;-><init>()V

    invoke-virtual {v8, v3, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 194
    .local v1, dialog:Lcom/htc/widget/HtcAlertDialog;
    iput-object v1, v0, Lcom/htc/app/HtcShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 195
    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 196
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d9

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .line 197
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 199
    sget-object v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 200
    .local v7, version:F
    const/high16 v8, 0x4000

    cmpl-float v8, v7, v8

    if-ltz v8, :cond_0

    .line 201
    invoke-static {p0, v1, v7}, Lcom/htc/app/HtcShutdownThread;->updateSkinResource(Landroid/content/Context;Lcom/htc/widget/HtcAlertDialog;F)V

    goto :goto_0

    .line 139
    .end local v0           #closer:Lcom/htc/app/HtcShutdownThread$CloseDialogReceiver;
    .end local v1           #dialog:Lcom/htc/widget/HtcAlertDialog;
    .end local v2           #idMessage:I
    .end local v3           #idNegative:I
    .end local v4           #idPositive:I
    .end local v5           #idTitle:I
    .end local v7           #version:F
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 161
    :cond_2
    const v5, 0x1040124

    .line 162
    .restart local v5       #idTitle:I
    const v2, 0x1040129

    .line 163
    .restart local v2       #idMessage:I
    const v4, 0x1040013

    .line 164
    .restart local v4       #idPositive:I
    const v3, 0x1040009

    .restart local v3       #idNegative:I
    goto :goto_1

    .line 205
    .end local v2           #idMessage:I
    .end local v3           #idNegative:I
    .end local v4           #idPositive:I
    .end local v5           #idTitle:I
    :cond_3
    sget-boolean v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcCIQFlag:Z

    if-eqz v8, :cond_4

    .line 207
    :try_start_2
    new-instance v6, Landroid/content/Intent;

    const-string v8, "com.android.internal.policy.impl.SHUTDOWN_CIQ"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    .local v6, intent:Landroid/content/Intent;
    invoke-virtual {p0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 214
    .end local v6           #intent:Landroid/content/Intent;
    :cond_4
    :goto_2
    invoke-static {p0}, Lcom/htc/app/HtcShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 209
    :catch_0
    move-exception v8

    goto :goto_2
.end method

.method private static updateSkinResource(Landroid/content/Context;Lcom/htc/widget/HtcAlertDialog;F)V
    .locals 16
    .parameter "context"
    .parameter "dialog"
    .parameter "version"

    .prologue
    .line 241
    if-nez p1, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    const-string v12, "HtcShutdownThread"

    const-string v13, "updateSkinResource(), dialog is not null"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 247
    .local v1, am:Landroid/app/IActivityManager;
    :try_start_0
    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 248
    .local v2, config:Landroid/content/res/Configuration;
    iget-object v10, v2, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    .line 251
    .local v10, skinPackage:Ljava/lang/String;
    const/4 v12, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    .line 252
    .local v6, positiveBtn:Landroid/widget/Button;
    const/4 v12, -0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    .line 259
    .local v5, negativeBtn:Landroid/widget/Button;
    const/high16 v12, 0x4060

    cmpl-float v12, p2, v12

    if-ltz v12, :cond_4

    .line 260
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const-string v13, "popup_bottom_left"

    const-string v14, "drawable"

    const-string v15, "com.htc"

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 261
    .local v3, leftBtnResId:I
    const-string v4, "popup_bottom_left"

    .line 262
    .local v4, leftBtnResStr:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const-string v13, "popup_bottom_right"

    const-string v14, "drawable"

    const-string v15, "com.htc"

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 263
    .local v8, rightBtnResId:I
    const-string v9, "popup_bottom_right"

    .line 270
    .local v9, rightBtnResStr:Ljava/lang/String;
    :goto_1
    const-string v12, ""

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    const-string v12, "default"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 272
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 274
    .local v7, res:Landroid/content/res/Resources;
    if-eqz v6, :cond_3

    .line 276
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 279
    :cond_3
    if-eqz v5, :cond_0

    .line 281
    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 297
    .end local v2           #config:Landroid/content/res/Configuration;
    .end local v3           #leftBtnResId:I
    .end local v4           #leftBtnResStr:Ljava/lang/String;
    .end local v5           #negativeBtn:Landroid/widget/Button;
    .end local v6           #positiveBtn:Landroid/widget/Button;
    .end local v7           #res:Landroid/content/res/Resources;
    .end local v8           #rightBtnResId:I
    .end local v9           #rightBtnResStr:Ljava/lang/String;
    .end local v10           #skinPackage:Ljava/lang/String;
    :catch_0
    move-exception v12

    goto :goto_0

    .line 265
    .restart local v2       #config:Landroid/content/res/Configuration;
    .restart local v5       #negativeBtn:Landroid/widget/Button;
    .restart local v6       #positiveBtn:Landroid/widget/Button;
    .restart local v10       #skinPackage:Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const-string v13, "command_bar_btn"

    const-string v14, "drawable"

    const-string v15, "com.htc"

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .restart local v3       #leftBtnResId:I
    move v8, v3

    .line 266
    .restart local v8       #rightBtnResId:I
    const-string v4, "command_bar_btn"

    .restart local v4       #leftBtnResStr:Ljava/lang/String;
    move-object v9, v4

    .restart local v9       #rightBtnResStr:Ljava/lang/String;
    goto :goto_1

    .line 285
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v11

    .line 287
    .local v11, themeres:Landroid/content/res/Resources;
    if-eqz v6, :cond_6

    .line 289
    const-string v12, "drawable"

    invoke-virtual {v11, v9, v12, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 292
    :cond_6
    if-eqz v5, :cond_0

    .line 294
    const-string v12, "drawable"

    invoke-virtual {v11, v4, v12, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method actionDone()V
    .locals 2

    .prologue
    .line 476
    iget-object v1, p0, Lcom/htc/app/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    .line 477
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/app/HtcShutdownThread;->mActionDone:Z

    .line 478
    iget-object v0, p0, Lcom/htc/app/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 479
    monitor-exit v1

    .line 480
    return-void

    .line 479
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method dismissDialog(Landroid/app/Dialog;)V
    .locals 8
    .parameter "dialog"

    .prologue
    .line 494
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/app/HtcShutdownThread;->mActionDone:Z

    .line 495
    iget-object v4, p0, Lcom/htc/app/HtcShutdownThread;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/htc/app/HtcShutdownThread$5;

    invoke-direct {v5, p0, p1}, Lcom/htc/app/HtcShutdownThread$5;-><init>(Lcom/htc/app/HtcShutdownThread;Landroid/app/Dialog;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 506
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    add-long v2, v4, v6

    .line 507
    .local v2, endTime:J
    iget-object v5, p0, Lcom/htc/app/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v5

    .line 508
    :goto_0
    :try_start_0
    iget-boolean v4, p0, Lcom/htc/app/HtcShutdownThread;->mActionDone:Z

    if-nez v4, :cond_0

    .line 509
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v0, v2, v6

    .line 510
    .local v0, delay:J
    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-gtz v4, :cond_1

    .line 520
    .end local v0           #delay:J
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    return-void

    .line 516
    .restart local v0       #delay:J
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/htc/app/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v4, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 517
    :catch_0
    move-exception v4

    goto :goto_0

    .line 520
    .end local v0           #delay:J
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method dismissProgressDialog()V
    .locals 1

    .prologue
    .line 489
    sget-object v0, Lcom/htc/app/HtcShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {p0, v0}, Lcom/htc/app/HtcShutdownThread;->dismissDialog(Landroid/app/Dialog;)V

    .line 490
    return-void
.end method

.method dismissShutdownScreen()V
    .locals 1

    .prologue
    .line 484
    sget-object v0, Lcom/htc/app/HtcShutdownThread;->shutdown:Lcom/htc/shutdown/HtcShutdownScreen;

    invoke-virtual {p0, v0}, Lcom/htc/app/HtcShutdownThread;->dismissDialog(Landroid/app/Dialog;)V

    .line 485
    return-void
.end method

.method public run()V
    .locals 46

    .prologue
    .line 529
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/app/HtcShutdownThread;->mStarted:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1015
    :goto_0
    return-void

    .line 531
    :cond_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/app/HtcShutdownThread;->mStarted:Z

    .line 535
    const/16 v41, 0x0

    .line 536
    .local v41, wifiOff:Z
    const/16 v39, 0x0

    .line 537
    .local v39, wifiApOff:Z
    const/16 v44, 0x0

    .line 539
    .local v44, wimaxOff:Z
    const/16 v34, 0x0

    .line 540
    .local v34, radioWasOn:Z
    const/16 v42, 0x0

    .line 541
    .local v42, wifiWasOn:Z
    const/16 v40, 0x0

    .line 542
    .local v40, wifiApWasOn:Z
    const/16 v45, 0x0

    .line 544
    .local v45, wimaxWasOn:Z
    const/4 v2, 0x1

    sput-boolean v2, Lcom/htc/app/HtcShutdownThread;->sIsAnimationReady:Z

    .line 546
    const/4 v2, 0x1

    const-string v3, "shutdown"

    invoke-static {v2, v3}, Landroid/os/Power;->acquireWakeLock(ILjava/lang/String;)V

    .line 548
    new-instance v5, Lcom/htc/app/HtcShutdownThread$6;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/htc/app/HtcShutdownThread$6;-><init>(Lcom/htc/app/HtcShutdownThread;)V

    .line 555
    .local v5, br:Landroid/content/BroadcastReceiver;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v11

    .line 557
    .local v11, alarm:Landroid/app/IAlarmManager;
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    if-eqz v2, :cond_24

    .line 559
    :try_start_0
    invoke-interface {v11}, Landroid/app/IAlarmManager;->startHibernate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_f

    .line 565
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.QUICKBOOT_POWEROFF"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/app/HtcShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 576
    :goto_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/app/HtcShutdownThread;->mActionDone:Z

    .line 577
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x2710

    add-long v24, v2, v6

    .line 578
    .local v24, endTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/app/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 579
    :goto_3
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/app/HtcShutdownThread;->mActionDone:Z

    if-nez v2, :cond_1

    .line 580
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v15, v24, v6

    .line 581
    .local v15, delay:J
    const-wide/16 v6, 0x0

    cmp-long v2, v15, v6

    if-gtz v2, :cond_25

    .line 591
    .end local v15           #delay:J
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 593
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v31

    .line 595
    .local v31, phone:Lcom/android/internal/telephony/ITelephony;
    const-string v2, "bluetooth"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v13

    .line 598
    .local v13, bluetooth:Landroid/bluetooth/IBluetooth;
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v29

    .line 602
    .local v29, mount:Landroid/os/storage/IMountService;
    const-string v2, "wifi"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v38

    .line 604
    .local v38, wifi:Landroid/net/wifi/IWifiManager;
    const-string v2, "wimax"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/net/wimax/IWimaxController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/net/wimax/IWimaxController;

    move-result-object v43

    .line 606
    .local v43, wimax:Lcom/htc/net/wimax/IWimaxController;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 608
    .local v10, IsAirplaneMode:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v37

    .line 612
    .local v37, screenBrightnessMode:I
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v36

    .line 618
    .local v36, screenBrightness:I
    :goto_4
    if-nez v37, :cond_26

    .line 619
    const-string v2, "sys.shutdown.brightness"

    new-instance v3, Ljava/lang/Integer;

    move/from16 v0, v36

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    :goto_5
    if-eqz v13, :cond_2

    :try_start_3
    invoke-interface {v13}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_27

    :cond_2
    const/4 v14, 0x1

    .line 628
    .local v14, bluetoothOff:Z
    :goto_6
    if-nez v14, :cond_3

    .line 631
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/bluetooth/IBluetooth;->disable(Z)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 640
    :cond_3
    :goto_7
    if-eqz v31, :cond_4

    :try_start_4
    invoke-interface/range {v31 .. v31}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v2

    if-nez v2, :cond_28

    :cond_4
    const/16 v33, 0x1

    .line 641
    .local v33, radioOff:Z
    :goto_8
    if-eqz v31, :cond_6

    .line 642
    if-nez v10, :cond_5

    .line 643
    const/16 v34, 0x1

    .line 646
    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 655
    :cond_6
    :goto_9
    if-eqz v38, :cond_7

    :try_start_5
    invoke-interface/range {v38 .. v38}, Landroid/net/wifi/IWifiManager;->getWifiEnabledState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_29

    :cond_7
    const/16 v41, 0x1

    .line 657
    :goto_a
    if-nez v41, :cond_8

    .line 660
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v38

    invoke-interface {v0, v2, v3}, Landroid/net/wifi/IWifiManager;->setWifiEnabledPersist(ZZ)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    .line 661
    const/16 v42, 0x1

    .line 670
    :cond_8
    :goto_b
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    if-eqz v2, :cond_2d

    .line 672
    if-eqz v38, :cond_9

    :try_start_6
    invoke-interface/range {v38 .. v38}, Landroid/net/wifi/IWifiManager;->getWifiApEnabledState()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_2a

    :cond_9
    const/16 v39, 0x1

    .line 674
    :goto_c
    if-nez v39, :cond_a

    .line 677
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v38

    invoke-interface {v0, v2, v3}, Landroid/net/wifi/IWifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5

    .line 678
    const/16 v40, 0x1

    .line 687
    :cond_a
    :goto_d
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIMAX_flag:Z

    if-eqz v2, :cond_2c

    .line 689
    if-eqz v43, :cond_b

    :try_start_7
    invoke-interface/range {v43 .. v43}, Lcom/htc/net/wimax/IWimaxController;->getWimaxState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2b

    :cond_b
    const/16 v44, 0x1

    .line 691
    :goto_e
    if-nez v44, :cond_c

    .line 694
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v43

    invoke-interface {v0, v2, v3}, Lcom/htc/net/wimax/IWimaxController;->setWimaxEnabledPersist(ZZ)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_6

    .line 695
    const/16 v45, 0x1

    .line 712
    :cond_c
    :goto_f
    new-instance v27, Landroid/content/Intent;

    const-string v2, "com.htc.fm.servicecommand"

    move-object/from16 v0, v27

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 713
    .local v27, fmPauseIntent:Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "stop"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 714
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mContext:Landroid/content/Context;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 720
    const/16 v28, 0x0

    .local v28, i:I
    :goto_10
    const/16 v2, 0x40

    move/from16 v0, v28

    if-ge v0, v2, :cond_12

    .line 721
    if-nez v14, :cond_d

    .line 723
    :try_start_8
    invoke-interface {v13}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_7

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2e

    const/4 v14, 0x1

    .line 731
    :cond_d
    :goto_11
    if-nez v33, :cond_e

    .line 733
    :try_start_9
    invoke-interface/range {v31 .. v31}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_8

    move-result v2

    if-nez v2, :cond_2f

    const/16 v33, 0x1

    .line 740
    :cond_e
    :goto_12
    if-nez v41, :cond_f

    .line 742
    :try_start_a
    invoke-interface/range {v38 .. v38}, Landroid/net/wifi/IWifiManager;->getWifiEnabledState()I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_9

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_30

    const/16 v41, 0x1

    .line 750
    :cond_f
    :goto_13
    if-nez v39, :cond_10

    .line 752
    :try_start_b
    invoke-interface/range {v38 .. v38}, Landroid/net/wifi/IWifiManager;->getWifiApEnabledState()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_a

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_31

    const/16 v39, 0x1

    .line 760
    :cond_10
    :goto_14
    if-nez v44, :cond_11

    .line 762
    :try_start_c
    invoke-interface/range {v43 .. v43}, Lcom/htc/net/wimax/IWimaxController;->getWimaxState()I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_b

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_32

    const/16 v44, 0x1

    .line 769
    :cond_11
    :goto_15
    if-eqz v33, :cond_33

    if-eqz v14, :cond_33

    if-eqz v41, :cond_33

    if-eqz v39, :cond_33

    if-eqz v44, :cond_33

    .line 777
    :cond_12
    const-string v2, "HtcShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "radioOff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bluetoothOff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", wifiOff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", wifiApOff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", wimaxOff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v44

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", IsAirplaneMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    if-eqz v33, :cond_13

    if-eqz v14, :cond_13

    if-eqz v41, :cond_13

    if-eqz v39, :cond_13

    if-nez v44, :cond_14

    .line 782
    :cond_13
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    if-eqz v2, :cond_14

    .line 783
    const-string v2, "HtcShutdownThread"

    const-string v3, "Radio off timed out, shutdown power"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    const/4 v2, 0x0

    sput-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    .line 785
    const-string v2, "sys.shutdown.mode"

    const-string v3, "normal"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    :cond_14
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    if-nez v2, :cond_17

    .line 791
    new-instance v30, Lcom/htc/app/HtcShutdownThread$7;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/app/HtcShutdownThread$7;-><init>(Lcom/htc/app/HtcShutdownThread;)V

    .line 802
    .local v30, observer:Landroid/os/storage/IMountShutdownObserver;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/app/HtcShutdownThread;->mActionDone:Z

    .line 803
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x4e20

    add-long v22, v2, v6

    .line 804
    .local v22, endShutdownTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/app/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 806
    if-eqz v29, :cond_15

    .line 807
    :try_start_d
    invoke-interface/range {v29 .. v30}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_10

    .line 816
    :cond_15
    :goto_16
    :try_start_e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/app/HtcShutdownThread;->mActionDone:Z

    if-nez v2, :cond_16

    .line 817
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v15, v22, v6

    .line 818
    .restart local v15       #delay:J
    const-wide/16 v6, 0x0

    cmp-long v2, v15, v6

    if-gtz v2, :cond_34

    .line 828
    .end local v15           #delay:J
    :cond_16
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 831
    .end local v22           #endShutdownTime:J
    .end local v30           #observer:Landroid/os/storage/IMountShutdownObserver;
    :cond_17
    const-string v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v12

    .line 837
    .local v12, am:Landroid/app/IActivityManager;
    if-eqz v12, :cond_18

    .line 839
    :try_start_f
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    if-eqz v2, :cond_35

    .line 840
    invoke-interface {v12}, Landroid/app/IActivityManager;->hibernate()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_d

    .line 850
    :cond_18
    :goto_17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x2710

    add-long v18, v2, v6

    .line 851
    .local v18, endAnimTime:J
    :goto_18
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->sIsAnimationCompleted:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_19

    .line 852
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v15, v18, v2

    .line 853
    .restart local v15       #delay:J
    const-wide/16 v2, 0x0

    cmp-long v2, v15, v2

    if-gtz v2, :cond_36

    .line 865
    .end local v15           #delay:J
    :cond_19
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->mReboot:Z

    if-eqz v2, :cond_1a

    .line 869
    :try_start_10
    sget-object v2, Lcom/htc/app/HtcShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Power;->reboot(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_19

    .line 885
    :cond_1a
    :goto_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1b

    .line 886
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 887
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1c

    .line 888
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 889
    :cond_1c
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v32

    .line 893
    .local v32, pm:Landroid/os/IPowerManager;
    :try_start_11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    move-object/from16 v0, v32

    invoke-interface {v0, v2, v3}, Landroid/os/IPowerManager;->goToSleep(J)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_18

    .line 900
    :goto_1a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/app/HtcShutdownThread;->dismissProgressDialog()V

    .line 902
    const-string v2, "sys.shutdown.resume.count"

    new-instance v3, Ljava/lang/Integer;

    sget v4, Lcom/htc/app/HtcShutdownThread;->mResumeCount:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/htc/app/HtcShutdownThread;->mResumeCount:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    invoke-virtual/range {p0 .. p0}, Lcom/htc/app/HtcShutdownThread;->dismissShutdownScreen()V

    .line 908
    invoke-static {}, Landroid/os/Power;->shutdown()V

    .line 913
    const-string v2, "shutdown"

    invoke-static {v2}, Landroid/os/Power;->releaseWakeLock(Ljava/lang/String;)V

    .line 916
    :try_start_12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, v32

    invoke-interface {v0, v2, v3, v4, v6}, Landroid/os/IPowerManager;->userActivityWithForce(JZZ)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_17

    .line 923
    :goto_1b
    const-string v2, "dev.bootreason"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "rtc_alarm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    .line 926
    .local v35, rtc_alarm:Z
    if-eqz v34, :cond_1d

    if-nez v35, :cond_1d

    .line 928
    const/4 v2, 0x1

    :try_start_13
    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_11

    .line 938
    :cond_1d
    :goto_1c
    if-eqz v42, :cond_1e

    .line 940
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_14
    move-object/from16 v0, v38

    invoke-interface {v0, v2, v3}, Landroid/net/wifi/IWifiManager;->setWifiEnabledPersist(ZZ)Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_12

    .line 950
    :cond_1e
    :goto_1d
    if-eqz v40, :cond_1f

    .line 952
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_15
    move-object/from16 v0, v38

    invoke-interface {v0, v2, v3}, Landroid/net/wifi/IWifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_13

    .line 962
    :cond_1f
    :goto_1e
    if-eqz v45, :cond_20

    .line 964
    const/4 v2, 0x1

    :try_start_16
    move-object/from16 v0, v43

    invoke-interface {v0, v2}, Lcom/htc/net/wimax/IWimaxController;->setWimaxEnabled(Z)Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_14

    .line 974
    :cond_20
    :goto_1f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x2710

    add-long v20, v2, v6

    .line 976
    .local v20, endRestartTime:J
    :cond_21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v15, v20, v2

    .line 977
    .restart local v15       #delay:J
    const-wide/16 v2, 0x0

    cmp-long v2, v15, v2

    if-gtz v2, :cond_37

    .line 992
    :goto_20
    const-string v2, "sys.shutdown.nowait"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hibernate_nowait"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 994
    const-string v2, "sys.shutdown.mode"

    const-string v3, "normal"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    const-string v2, "sys.shutdown.resume.date"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    const-string v2, "sys.shutdown.resume.timestamp"

    new-instance v3, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    if-eqz v12, :cond_22

    .line 999
    invoke-interface {v12}, Landroid/app/IActivityManager;->resumeFromHibernate()V

    .line 1002
    :cond_22
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    if-eqz v2, :cond_23

    .line 1004
    :try_start_17
    invoke-interface {v11}, Landroid/app/IAlarmManager;->stopHibernate()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_15

    .line 1009
    :cond_23
    :goto_21
    sget-object v3, Lcom/htc/app/HtcShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v3

    .line 1010
    const/4 v2, 0x0

    :try_start_18
    sput-boolean v2, Lcom/htc/app/HtcShutdownThread;->sIsStarted:Z

    .line 1011
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/app/HtcShutdownThread;->mStarted:Z

    .line 1012
    const/4 v2, 0x0

    sput-object v2, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    .line 1013
    const/4 v2, 0x0

    sput-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    .line 1014
    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    throw v2

    .line 572
    .end local v10           #IsAirplaneMode:I
    .end local v12           #am:Landroid/app/IActivityManager;
    .end local v13           #bluetooth:Landroid/bluetooth/IBluetooth;
    .end local v14           #bluetoothOff:Z
    .end local v15           #delay:J
    .end local v18           #endAnimTime:J
    .end local v20           #endRestartTime:J
    .end local v24           #endTime:J
    .end local v27           #fmPauseIntent:Landroid/content/Intent;
    .end local v28           #i:I
    .end local v29           #mount:Landroid/os/storage/IMountService;
    .end local v31           #phone:Lcom/android/internal/telephony/ITelephony;
    .end local v32           #pm:Landroid/os/IPowerManager;
    .end local v33           #radioOff:Z
    .end local v35           #rtc_alarm:Z
    .end local v36           #screenBrightness:I
    .end local v37           #screenBrightnessMode:I
    .end local v38           #wifi:Landroid/net/wifi/IWifiManager;
    .end local v43           #wimax:Lcom/htc/net/wimax/IWimaxController;
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/app/HtcShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_2

    .line 587
    .restart local v15       #delay:J
    .restart local v24       #endTime:J
    :cond_25
    :try_start_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-wide v0, v15

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_19} :catch_0

    goto/16 :goto_3

    .line 588
    :catch_0
    move-exception v2

    goto/16 :goto_3

    .line 591
    .end local v15           #delay:J
    :catchall_1
    move-exception v2

    :try_start_1a
    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    throw v2

    .line 614
    .restart local v10       #IsAirplaneMode:I
    .restart local v13       #bluetooth:Landroid/bluetooth/IBluetooth;
    .restart local v29       #mount:Landroid/os/storage/IMountService;
    .restart local v31       #phone:Lcom/android/internal/telephony/ITelephony;
    .restart local v37       #screenBrightnessMode:I
    .restart local v38       #wifi:Landroid/net/wifi/IWifiManager;
    .restart local v43       #wimax:Lcom/htc/net/wimax/IWimaxController;
    :catch_1
    move-exception v17

    .line 615
    .local v17, e:Landroid/provider/Settings$SettingNotFoundException;
    const/16 v36, 0x0

    .restart local v36       #screenBrightness:I
    goto/16 :goto_4

    .line 622
    .end local v17           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_26
    const-string v2, "sys.shutdown.brightness"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 626
    :cond_27
    const/4 v14, 0x0

    goto/16 :goto_6

    .line 633
    :catch_2
    move-exception v26

    .line 636
    .local v26, ex:Landroid/os/RemoteException;
    const/4 v14, 0x1

    .restart local v14       #bluetoothOff:Z
    goto/16 :goto_7

    .line 640
    .end local v26           #ex:Landroid/os/RemoteException;
    :cond_28
    const/16 v33, 0x0

    goto/16 :goto_8

    .line 648
    :catch_3
    move-exception v26

    .line 651
    .restart local v26       #ex:Landroid/os/RemoteException;
    const/16 v33, 0x1

    .restart local v33       #radioOff:Z
    goto/16 :goto_9

    .line 655
    .end local v26           #ex:Landroid/os/RemoteException;
    :cond_29
    const/16 v41, 0x0

    goto/16 :goto_a

    .line 664
    :catch_4
    move-exception v26

    .line 667
    .restart local v26       #ex:Landroid/os/RemoteException;
    const/16 v41, 0x1

    goto/16 :goto_b

    .line 672
    .end local v26           #ex:Landroid/os/RemoteException;
    :cond_2a
    const/16 v39, 0x0

    goto/16 :goto_c

    .line 681
    :catch_5
    move-exception v26

    .line 684
    .restart local v26       #ex:Landroid/os/RemoteException;
    const/16 v39, 0x1

    goto/16 :goto_d

    .line 689
    .end local v26           #ex:Landroid/os/RemoteException;
    :cond_2b
    const/16 v44, 0x0

    goto/16 :goto_e

    .line 698
    :catch_6
    move-exception v26

    .line 701
    .restart local v26       #ex:Landroid/os/RemoteException;
    const/16 v44, 0x1

    .line 702
    goto/16 :goto_f

    .line 705
    .end local v26           #ex:Landroid/os/RemoteException;
    :cond_2c
    const/16 v44, 0x1

    goto/16 :goto_f

    .line 708
    :cond_2d
    const/16 v39, 0x1

    .line 709
    const/16 v44, 0x1

    goto/16 :goto_f

    .line 723
    .restart local v27       #fmPauseIntent:Landroid/content/Intent;
    .restart local v28       #i:I
    :cond_2e
    const/4 v14, 0x0

    goto/16 :goto_11

    .line 725
    :catch_7
    move-exception v26

    .line 728
    .restart local v26       #ex:Landroid/os/RemoteException;
    const/4 v14, 0x1

    goto/16 :goto_11

    .line 733
    .end local v26           #ex:Landroid/os/RemoteException;
    :cond_2f
    const/16 v33, 0x0

    goto/16 :goto_12

    .line 734
    :catch_8
    move-exception v26

    .line 737
    .restart local v26       #ex:Landroid/os/RemoteException;
    const/16 v33, 0x1

    goto/16 :goto_12

    .line 742
    .end local v26           #ex:Landroid/os/RemoteException;
    :cond_30
    const/16 v41, 0x0

    goto/16 :goto_13

    .line 743
    :catch_9
    move-exception v26

    .line 746
    .restart local v26       #ex:Landroid/os/RemoteException;
    const/16 v41, 0x1

    goto/16 :goto_13

    .line 752
    .end local v26           #ex:Landroid/os/RemoteException;
    :cond_31
    const/16 v39, 0x0

    goto/16 :goto_14

    .line 753
    :catch_a
    move-exception v26

    .line 756
    .restart local v26       #ex:Landroid/os/RemoteException;
    const/16 v39, 0x1

    goto/16 :goto_14

    .line 762
    .end local v26           #ex:Landroid/os/RemoteException;
    :cond_32
    const/16 v44, 0x0

    goto/16 :goto_15

    .line 763
    :catch_b
    move-exception v26

    .line 766
    .restart local v26       #ex:Landroid/os/RemoteException;
    const/16 v44, 0x1

    goto/16 :goto_15

    .line 774
    .end local v26           #ex:Landroid/os/RemoteException;
    :cond_33
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 720
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_10

    .line 824
    .restart local v15       #delay:J
    .restart local v22       #endShutdownTime:J
    .restart local v30       #observer:Landroid/os/storage/IMountShutdownObserver;
    :cond_34
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-wide v0, v15

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1b} :catch_c

    goto/16 :goto_16

    .line 825
    :catch_c
    move-exception v2

    goto/16 :goto_16

    .line 828
    .end local v15           #delay:J
    :catchall_2
    move-exception v2

    :try_start_1c
    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    throw v2

    .line 843
    .end local v22           #endShutdownTime:J
    .end local v30           #observer:Landroid/os/storage/IMountShutdownObserver;
    .restart local v12       #am:Landroid/app/IActivityManager;
    :cond_35
    const/16 v2, 0x2710

    :try_start_1d
    invoke-interface {v12, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_d

    goto/16 :goto_17

    .line 844
    :catch_d
    move-exception v2

    goto/16 :goto_17

    .line 859
    .restart local v15       #delay:J
    .restart local v18       #endAnimTime:J
    :cond_36
    :try_start_1e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_1e} :catch_e

    goto/16 :goto_18

    .line 861
    :catch_e
    move-exception v2

    goto/16 :goto_18

    .line 985
    .restart local v20       #endRestartTime:J
    .restart local v32       #pm:Landroid/os/IPowerManager;
    .restart local v35       #rtc_alarm:Z
    :cond_37
    :try_start_1f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_1f} :catch_16

    .line 989
    :goto_22
    const-string v2, "init.svc.bootanim"

    const-string v3, "stopped"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "stopped"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    goto/16 :goto_20

    .line 560
    .end local v10           #IsAirplaneMode:I
    .end local v12           #am:Landroid/app/IActivityManager;
    .end local v13           #bluetooth:Landroid/bluetooth/IBluetooth;
    .end local v14           #bluetoothOff:Z
    .end local v15           #delay:J
    .end local v18           #endAnimTime:J
    .end local v20           #endRestartTime:J
    .end local v24           #endTime:J
    .end local v27           #fmPauseIntent:Landroid/content/Intent;
    .end local v28           #i:I
    .end local v29           #mount:Landroid/os/storage/IMountService;
    .end local v31           #phone:Lcom/android/internal/telephony/ITelephony;
    .end local v32           #pm:Landroid/os/IPowerManager;
    .end local v33           #radioOff:Z
    .end local v35           #rtc_alarm:Z
    .end local v36           #screenBrightness:I
    .end local v37           #screenBrightnessMode:I
    .end local v38           #wifi:Landroid/net/wifi/IWifiManager;
    .end local v43           #wimax:Lcom/htc/net/wimax/IWimaxController;
    :catch_f
    move-exception v2

    goto/16 :goto_1

    .line 812
    .restart local v10       #IsAirplaneMode:I
    .restart local v13       #bluetooth:Landroid/bluetooth/IBluetooth;
    .restart local v14       #bluetoothOff:Z
    .restart local v22       #endShutdownTime:J
    .restart local v24       #endTime:J
    .restart local v27       #fmPauseIntent:Landroid/content/Intent;
    .restart local v28       #i:I
    .restart local v29       #mount:Landroid/os/storage/IMountService;
    .restart local v30       #observer:Landroid/os/storage/IMountShutdownObserver;
    .restart local v31       #phone:Lcom/android/internal/telephony/ITelephony;
    .restart local v33       #radioOff:Z
    .restart local v36       #screenBrightness:I
    .restart local v37       #screenBrightnessMode:I
    .restart local v38       #wifi:Landroid/net/wifi/IWifiManager;
    .restart local v43       #wimax:Lcom/htc/net/wimax/IWimaxController;
    :catch_10
    move-exception v2

    goto/16 :goto_16

    .line 932
    .end local v22           #endShutdownTime:J
    .end local v30           #observer:Landroid/os/storage/IMountShutdownObserver;
    .restart local v12       #am:Landroid/app/IActivityManager;
    .restart local v18       #endAnimTime:J
    .restart local v32       #pm:Landroid/os/IPowerManager;
    .restart local v35       #rtc_alarm:Z
    :catch_11
    move-exception v2

    goto/16 :goto_1c

    .line 944
    :catch_12
    move-exception v2

    goto/16 :goto_1d

    .line 956
    :catch_13
    move-exception v2

    goto/16 :goto_1e

    .line 968
    :catch_14
    move-exception v2

    goto/16 :goto_1f

    .line 1005
    .restart local v15       #delay:J
    .restart local v20       #endRestartTime:J
    :catch_15
    move-exception v2

    goto/16 :goto_21

    .line 987
    :catch_16
    move-exception v2

    goto :goto_22

    .line 918
    .end local v15           #delay:J
    .end local v20           #endRestartTime:J
    .end local v35           #rtc_alarm:Z
    :catch_17
    move-exception v2

    goto/16 :goto_1b

    .line 895
    :catch_18
    move-exception v2

    goto/16 :goto_1a

    .line 870
    .end local v32           #pm:Landroid/os/IPowerManager;
    :catch_19
    move-exception v2

    goto/16 :goto_19
.end method
