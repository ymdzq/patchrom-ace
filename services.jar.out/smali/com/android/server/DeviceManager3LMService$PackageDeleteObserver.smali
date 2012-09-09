.class Lcom/android/server/DeviceManager3LMService$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "DeviceManager3LMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceManager3LMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field private doneFlag:Z

.field public succeeded:Z

.field final synthetic this$0:Lcom/android/server/DeviceManager3LMService;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceManager3LMService;)V
    .locals 1
    .parameter

    .prologue
    .line 1268
    iput-object p1, p0, Lcom/android/server/DeviceManager3LMService$PackageDeleteObserver;->this$0:Lcom/android/server/DeviceManager3LMService;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    .line 1270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceManager3LMService$PackageDeleteObserver;->doneFlag:Z

    return-void
.end method


# virtual methods
.method public isDone()Z
    .locals 1

    .prologue
    .line 1281
    iget-boolean v0, p0, Lcom/android/server/DeviceManager3LMService$PackageDeleteObserver;->doneFlag:Z

    return v0
.end method

.method public packageDeleted(Ljava/lang/String;I)V
    .locals 1
    .parameter "packageName"
    .parameter "returnCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1273
    monitor-enter p0

    .line 1274
    if-ne p2, v0, :cond_0

    :goto_0
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/DeviceManager3LMService$PackageDeleteObserver;->succeeded:Z

    .line 1275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DeviceManager3LMService$PackageDeleteObserver;->doneFlag:Z

    .line 1276
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1277
    monitor-exit p0

    .line 1278
    return-void

    .line 1274
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1277
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
