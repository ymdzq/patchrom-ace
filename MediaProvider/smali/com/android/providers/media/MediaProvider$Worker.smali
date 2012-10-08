.class Lcom/android/providers/media/MediaProvider$Worker;
.super Ljava/lang/Object;
.source "MediaProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mLooper:Landroid/os/Looper;

.field final synthetic this$0:Lcom/android/providers/media/MediaProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MediaProvider;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "name"

    .prologue
    .line 5775
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$Worker;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5772
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/providers/media/MediaProvider$Worker;->mLock:Ljava/lang/Object;

    .line 5776
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 5777
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 5778
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$Worker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5779
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider$Worker;->mLooper:Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 5781
    :try_start_1
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider$Worker;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 5782
    :catch_0
    move-exception v1

    goto :goto_0

    .line 5785
    :cond_0
    :try_start_2
    monitor-exit v2

    .line 5786
    return-void

    .line 5785
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 5789
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$Worker;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public quit()V
    .locals 1

    .prologue
    .line 5803
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$Worker;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 5804
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 5793
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider$Worker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5794
    const/16 v0, 0xa

    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 5795
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 5796
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider$Worker;->mLooper:Landroid/os/Looper;

    .line 5797
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$Worker;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 5798
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5799
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 5800
    return-void

    .line 5798
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
