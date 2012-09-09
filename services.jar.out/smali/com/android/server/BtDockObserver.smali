.class Lcom/android/server/BtDockObserver;
.super Landroid/os/UEventObserver;
.source "BtDockObserver.java"


# static fields
.field private static final BT_DOCK_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/bt_dock/state"

.field private static final BT_DOCK_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/bt_dock"

.field private static final LOG:Z

.field private static final MSG_BT_DOCK_STATE:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBtDockState:I

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mPowerManager:Lcom/android/server/PowerManagerService;

.field private mPreviousBtDockState:I

.field private mSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/android/server/BtDockObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BtDockObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    .locals 1
    .parameter "context"
    .parameter "pm"

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 54
    iput v0, p0, Lcom/android/server/BtDockObserver;->mBtDockState:I

    .line 55
    iput v0, p0, Lcom/android/server/BtDockObserver;->mPreviousBtDockState:I

    .line 129
    new-instance v0, Lcom/android/server/BtDockObserver$1;

    invoke-direct {v0, p0}, Lcom/android/server/BtDockObserver$1;-><init>(Lcom/android/server/BtDockObserver;)V

    iput-object v0, p0, Lcom/android/server/BtDockObserver;->mHandler:Landroid/os/Handler;

    .line 64
    iput-object p1, p0, Lcom/android/server/BtDockObserver;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/android/server/BtDockObserver;->mPowerManager:Lcom/android/server/PowerManagerService;

    .line 66
    invoke-direct {p0}, Lcom/android/server/BtDockObserver;->init()V

    .line 67
    const-string v0, "DEVPATH=/devices/virtual/switch/bt_dock"

    invoke-virtual {p0, v0}, Lcom/android/server/BtDockObserver;->startObserving(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/server/BtDockObserver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/BtDockObserver;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/server/BtDockObserver;->mBtDockState:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/BtDockObserver;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/BtDockObserver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/BtDockObserver;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/server/BtDockObserver;->mPreviousBtDockState:I

    return v0
.end method

.method private final init()V
    .locals 6

    .prologue
    const/16 v4, 0x400

    .line 101
    new-array v0, v4, [C

    .line 104
    .local v0, buffer:[C
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    const-string v4, "/sys/class/switch/bt_dock/state"

    invoke-direct {v2, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 105
    .local v2, file:Ljava/io/FileReader;
    const/4 v4, 0x0

    const/16 v5, 0x400

    invoke-virtual {v2, v0, v4, v5}, Ljava/io/FileReader;->read([CII)I

    move-result v3

    .line 106
    .local v3, len:I
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/server/BtDockObserver;->mBtDockState:I

    iput v4, p0, Lcom/android/server/BtDockObserver;->mPreviousBtDockState:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 113
    .end local v2           #file:Ljava/io/FileReader;
    .end local v3           #len:I
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, e:Ljava/io/FileNotFoundException;
    sget-object v4, Lcom/android/server/BtDockObserver;->TAG:Ljava/lang/String;

    const-string v5, "This kernel does not have btdock station support"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 111
    .local v1, e:Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/BtDockObserver;->TAG:Ljava/lang/String;

    const-string v5, ""

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private final update()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/BtDockObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 127
    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 72
    sget-object v2, Lcom/android/server/BtDockObserver;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    sget-object v2, Lcom/android/server/BtDockObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BtDock UEVENT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    monitor-enter p0

    .line 78
    :try_start_0
    const-string v2, "SWITCH_STATE"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 79
    .local v1, newState:I
    iget v2, p0, Lcom/android/server/BtDockObserver;->mBtDockState:I

    if-eq v1, v2, :cond_3

    .line 80
    iget v2, p0, Lcom/android/server/BtDockObserver;->mBtDockState:I

    iput v2, p0, Lcom/android/server/BtDockObserver;->mPreviousBtDockState:I

    .line 81
    iput v1, p0, Lcom/android/server/BtDockObserver;->mBtDockState:I

    .line 82
    iget-boolean v2, p0, Lcom/android/server/BtDockObserver;->mSystemReady:Z

    if-eqz v2, :cond_3

    .line 86
    iget v2, p0, Lcom/android/server/BtDockObserver;->mPreviousBtDockState:I

    if-ne v2, v5, :cond_1

    iget v2, p0, Lcom/android/server/BtDockObserver;->mBtDockState:I

    if-eqz v2, :cond_2

    .line 88
    :cond_1
    iget-object v2, p0, Lcom/android/server/BtDockObserver;->mPowerManager:Lcom/android/server/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/PowerManagerService;->userActivityWithForce(JZZ)V

    .line 91
    :cond_2
    invoke-direct {p0}, Lcom/android/server/BtDockObserver;->update()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v1           #newState:I
    :cond_3
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 98
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-object v2, Lcom/android/server/BtDockObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse switch state from event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 97
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method systemReady()V
    .locals 1

    .prologue
    .line 116
    monitor-enter p0

    .line 118
    :try_start_0
    iget v0, p0, Lcom/android/server/BtDockObserver;->mBtDockState:I

    if-eqz v0, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/android/server/BtDockObserver;->update()V

    .line 121
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/BtDockObserver;->mSystemReady:Z

    .line 122
    monitor-exit p0

    .line 123
    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
