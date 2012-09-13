.class public Landroid/webkit/HTML5VideoInline;
.super Landroid/webkit/HTML5VideoView;
.source "HTML5VideoInline.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureNames:[I

.field private wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(IIZ)V
    .locals 1
    .parameter "videoLayerId"
    .parameter "position"
    .parameter "autoStart"

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0}, Landroid/webkit/HTML5VideoView;-><init>()V

    .line 146
    iput-object v0, p0, Landroid/webkit/HTML5VideoInline;->wl:Landroid/os/PowerManager$WakeLock;

    .line 147
    iput-object v0, p0, Landroid/webkit/HTML5VideoInline;->mContext:Landroid/content/Context;

    .line 81
    invoke-virtual {p0, p1, p2, p3}, Landroid/webkit/HTML5VideoInline;->init(IIZ)V

    .line 82
    return-void
.end method

.method private setFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 138
    iget-object v0, p0, Landroid/webkit/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 139
    return-void
.end method

.method private wakeLockPermission()I
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 150
    iget-object v1, p0, Landroid/webkit/HTML5VideoInline;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v0

    .line 153
    :cond_1
    iget-object v1, p0, Landroid/webkit/HTML5VideoInline;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WAKE_LOCK"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_0

    .line 158
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public decideDisplayMode()V
    .locals 3

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoInline;->getVideoLayerId()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/webkit/HTML5VideoInline;->getSurfaceTexture(I)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 87
    .local v1, surfaceTexture:Landroid/graphics/SurfaceTexture;
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 88
    .local v0, surface:Landroid/view/Surface;
    iget-object v2, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 89
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 90
    return-void
.end method

.method public getSurfaceTexture(I)Landroid/graphics/SurfaceTexture;
    .locals 3
    .parameter "videoLayerId"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 118
    iget-object v0, p0, Landroid/webkit/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    .line 119
    iget-object v0, p0, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    if-nez v0, :cond_0

    .line 120
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    .line 121
    iget-object v0, p0, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 123
    :cond_0
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    aget v1, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Landroid/webkit/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 125
    :cond_1
    iget-object v0, p0, Landroid/webkit/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public getTextureName()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 130
    iget-object v1, p0, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    aget v0, v1, v0

    .line 133
    :cond_0
    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 163
    invoke-super {p0}, Landroid/webkit/HTML5VideoView;->pause()V

    .line 165
    invoke-direct {p0}, Landroid/webkit/HTML5VideoInline;->wakeLockPermission()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5VideoInline;->wl:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5VideoInline;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const-string v0, "HTML5VideoInline"

    const-string v1, "-release wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Landroid/webkit/HTML5VideoInline;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 170
    :cond_0
    return-void
.end method

.method public pauseAndDispatch(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/webkit/HTML5VideoView;->pauseAndDispatch(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 111
    return-void
.end method

.method public prepareDataAndDisplayMode(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 3
    .parameter "proxy"

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/webkit/HTML5VideoView;->prepareDataAndDisplayMode(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 97
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoInline;->setFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 98
    invoke-virtual {p0, p1}, Landroid/webkit/HTML5VideoInline;->setOnVideoSizeChangedListener(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 101
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WAKE_LOCK"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 105
    :cond_0
    return-void
.end method

.method public setOnVideoSizeChangedListener(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 1
    .parameter "proxy"

    .prologue
    .line 142
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 143
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 57
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoInline;->getPauseDuringPreparing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 58
    invoke-super {p0}, Landroid/webkit/HTML5VideoView;->start()V

    .line 61
    iget-object v1, p0, Landroid/webkit/HTML5VideoInline;->wl:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 62
    iget-object v1, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/HTML5VideoInline;->mContext:Landroid/content/Context;

    .line 63
    iget-object v1, p0, Landroid/webkit/HTML5VideoInline;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Landroid/webkit/HTML5VideoInline;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 65
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x2000000a

    const-string v2, "HTML5VideoInline"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/HTML5VideoInline;->wl:Landroid/os/PowerManager$WakeLock;

    .line 66
    iget-object v1, p0, Landroid/webkit/HTML5VideoInline;->wl:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 70
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    invoke-direct {p0}, Landroid/webkit/HTML5VideoInline;->wakeLockPermission()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/webkit/HTML5VideoInline;->wl:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkit/HTML5VideoInline;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_1

    .line 72
    const-string v1, "HTML5VideoInline"

    const-string v2, "+acquire wakelock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v1, p0, Landroid/webkit/HTML5VideoInline;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 77
    :cond_1
    return-void
.end method
