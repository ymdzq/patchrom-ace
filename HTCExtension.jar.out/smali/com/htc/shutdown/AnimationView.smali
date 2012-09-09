.class public Lcom/htc/shutdown/AnimationView;
.super Landroid/widget/ImageView;
.source "AnimationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/shutdown/AnimationView$OnAnimationListener;
    }
.end annotation


# static fields
.field private static final NEXT_FRAME:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AnimationView"


# instance fields
.field private bJustReady:Z

.field private curname:Ljava/lang/String;

.field private lastBitmap:Landroid/graphics/Bitmap;

.field private mAnimationListener:Lcom/htc/shutdown/AnimationView$OnAnimationListener;

.field private mContext:Landroid/content/Context;

.field private mDisplay:Landroid/view/Display;

.field private mFPS:I

.field private myHandler:Landroid/os/Handler;

.field private nFramesDrawn:I

.field private nowBitmap:Landroid/graphics/Bitmap;

.field private zipFile:Ljava/util/zip/ZipFile;

.field private zipLandFile:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .parameter "context"
    .parameter "pathname"
    .parameter "landPath"
    .parameter "maxFPS"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 57
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 44
    iput-boolean v3, p0, Lcom/htc/shutdown/AnimationView;->bJustReady:Z

    .line 45
    iput v3, p0, Lcom/htc/shutdown/AnimationView;->nFramesDrawn:I

    .line 254
    iput-object v4, p0, Lcom/htc/shutdown/AnimationView;->mAnimationListener:Lcom/htc/shutdown/AnimationView$OnAnimationListener;

    .line 299
    new-instance v3, Lcom/htc/shutdown/AnimationView$1;

    invoke-direct {v3, p0}, Lcom/htc/shutdown/AnimationView$1;-><init>(Lcom/htc/shutdown/AnimationView;)V

    iput-object v3, p0, Lcom/htc/shutdown/AnimationView;->myHandler:Landroid/os/Handler;

    .line 59
    iput-object p1, p0, Lcom/htc/shutdown/AnimationView;->mContext:Landroid/content/Context;

    .line 60
    iput p4, p0, Lcom/htc/shutdown/AnimationView;->mFPS:I

    .line 62
    const-string v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 64
    .local v1, manager:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/shutdown/AnimationView;->mDisplay:Landroid/view/Display;

    .line 72
    iput-object v4, p0, Lcom/htc/shutdown/AnimationView;->curname:Ljava/lang/String;

    .line 73
    iput-object v4, p0, Lcom/htc/shutdown/AnimationView;->zipLandFile:Ljava/util/zip/ZipFile;

    .line 75
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, p2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/shutdown/AnimationView;->zipFile:Ljava/util/zip/ZipFile;

    .line 77
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 78
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v2, tmp:Ljava/io/File;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, p3}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/shutdown/AnimationView;->zipLandFile:Ljava/util/zip/ZipFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v2           #tmp:Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/shutdown/AnimationView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/htc/shutdown/AnimationView;->prepareDraw()V

    return-void
.end method

.method private controlFPS(JJ)V
    .locals 7
    .parameter "mStartTime"
    .parameter "mEndTime"

    .prologue
    const/16 v6, 0x3e8

    .line 220
    sub-long v0, p3, p1

    .line 225
    .local v0, cost:J
    iget v4, p0, Lcom/htc/shutdown/AnimationView;->mFPS:I

    div-int v4, v6, v4

    long-to-int v5, v0

    sub-int v2, v4, v5

    .line 227
    .local v2, delay:I
    if-lez v2, :cond_0

    .line 230
    int-to-long v4, v2

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p3

    .line 241
    sub-long v0, p3, p1

    .line 243
    long-to-int v4, v0

    div-int v3, v6, v4

    .line 246
    .local v3, fps:I
    return-void

    .line 236
    .end local v3           #fps:I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 231
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private prepareDraw()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 261
    const-wide/16 v4, 0x0

    .line 262
    .local v4, mStartTime:J
    const/4 v1, 0x0

    .line 267
    .local v1, is:Ljava/io/InputStream;
    iget v6, p0, Lcom/htc/shutdown/AnimationView;->nFramesDrawn:I

    if-ne v6, v8, :cond_0

    iget-object v6, p0, Lcom/htc/shutdown/AnimationView;->nowBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_0

    .line 268
    iget-object v6, p0, Lcom/htc/shutdown/AnimationView;->mAnimationListener:Lcom/htc/shutdown/AnimationView$OnAnimationListener;

    invoke-interface {v6}, Lcom/htc/shutdown/AnimationView$OnAnimationListener;->onAnimationReady()V

    .line 271
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 274
    iget-object v6, p0, Lcom/htc/shutdown/AnimationView;->zipLandFile:Ljava/util/zip/ZipFile;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/htc/shutdown/AnimationView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 275
    invoke-direct {p0}, Lcom/htc/shutdown/AnimationView;->readNextTextureLand()Ljava/io/BufferedInputStream;

    move-result-object v1

    .line 279
    :goto_0
    if-eqz v1, :cond_2

    .line 280
    iget-object v6, p0, Lcom/htc/shutdown/AnimationView;->nowBitmap:Landroid/graphics/Bitmap;

    iput-object v6, p0, Lcom/htc/shutdown/AnimationView;->lastBitmap:Landroid/graphics/Bitmap;

    .line 281
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 282
    .local v0, bitopts:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v8, v0, Landroid/graphics/BitmapFactory$Options;->inNativeAlloc:Z

    .line 283
    const/4 v6, 0x0

    invoke-static {v1, v6, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/shutdown/AnimationView;->nowBitmap:Landroid/graphics/Bitmap;

    .line 285
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    .end local v0           #bitopts:Landroid/graphics/BitmapFactory$Options;
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 295
    .local v2, mEndTime:J
    invoke-direct {p0, v4, v5, v2, v3}, Lcom/htc/shutdown/AnimationView;->controlFPS(JJ)V

    .line 296
    invoke-virtual {p0}, Lcom/htc/shutdown/AnimationView;->invalidate()V

    .line 297
    return-void

    .line 277
    .end local v2           #mEndTime:J
    :cond_1
    invoke-direct {p0}, Lcom/htc/shutdown/AnimationView;->readNextTexture()Ljava/io/BufferedInputStream;

    move-result-object v1

    goto :goto_0

    .line 291
    :cond_2
    iget-object v6, p0, Lcom/htc/shutdown/AnimationView;->mAnimationListener:Lcom/htc/shutdown/AnimationView$OnAnimationListener;

    invoke-interface {v6}, Lcom/htc/shutdown/AnimationView$OnAnimationListener;->onAnimationFinished()V

    goto :goto_1

    .line 286
    .restart local v0       #bitopts:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method private readNextTexture()Ljava/io/BufferedInputStream;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 147
    :try_start_0
    iget-object v4, p0, Lcom/htc/shutdown/AnimationView;->zipFile:Ljava/util/zip/ZipFile;

    if-nez v4, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-object v3

    .line 153
    :cond_1
    iget-object v4, p0, Lcom/htc/shutdown/AnimationView;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 155
    .local v1, entry_list:Ljava/util/Enumeration;
    const/4 v2, 0x0

    .line 156
    .local v2, isNext:Z
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 158
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 160
    .local v0, entry:Ljava/util/zip/ZipEntry;
    iget-object v4, p0, Lcom/htc/shutdown/AnimationView;->curname:Ljava/lang/String;

    if-eqz v4, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_4

    .line 161
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/shutdown/AnimationView;->curname:Ljava/lang/String;

    .line 162
    new-instance v4, Ljava/io/BufferedInputStream;

    iget-object v5, p0, Lcom/htc/shutdown/AnimationView;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v5, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    const/16 v6, 0x2000

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v3, v4

    goto :goto_0

    .line 166
    :cond_4
    iget-object v4, p0, Lcom/htc/shutdown/AnimationView;->curname:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/shutdown/AnimationView;->curname:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_2

    .line 167
    const/4 v2, 0x1

    goto :goto_1

    .line 172
    .end local v0           #entry:Ljava/util/zip/ZipEntry;
    .end local v1           #entry_list:Ljava/util/Enumeration;
    .end local v2           #isNext:Z
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private readNextTextureLand()Ljava/io/BufferedInputStream;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 183
    :try_start_0
    iget-object v4, p0, Lcom/htc/shutdown/AnimationView;->zipLandFile:Ljava/util/zip/ZipFile;

    if-nez v4, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-object v3

    .line 189
    :cond_1
    iget-object v4, p0, Lcom/htc/shutdown/AnimationView;->zipLandFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 191
    .local v1, entry_list:Ljava/util/Enumeration;
    const/4 v2, 0x0

    .line 192
    .local v2, isNext:Z
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 194
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 196
    .local v0, entry:Ljava/util/zip/ZipEntry;
    iget-object v4, p0, Lcom/htc/shutdown/AnimationView;->curname:Ljava/lang/String;

    if-eqz v4, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_4

    .line 197
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/shutdown/AnimationView;->curname:Ljava/lang/String;

    .line 198
    new-instance v4, Ljava/io/BufferedInputStream;

    iget-object v5, p0, Lcom/htc/shutdown/AnimationView;->zipLandFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v5, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    const/16 v6, 0x2000

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v3, v4

    goto :goto_0

    .line 202
    :cond_4
    iget-object v4, p0, Lcom/htc/shutdown/AnimationView;->curname:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/shutdown/AnimationView;->curname:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_2

    .line 203
    const/4 v2, 0x1

    goto :goto_1

    .line 208
    .end local v0           #entry:Ljava/util/zip/ZipEntry;
    .end local v1           #entry_list:Ljava/util/Enumeration;
    .end local v2           #isNext:Z
    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 102
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 106
    iget-object v6, p0, Lcom/htc/shutdown/AnimationView;->nowBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_2

    .line 116
    :try_start_0
    iget-object v6, p0, Lcom/htc/shutdown/AnimationView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    move v0, v5

    .line 118
    .local v0, bLand:Z
    :goto_0
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v7, 0x10

    if-ne v6, v7, :cond_0

    .line 119
    const/4 v0, 0x0

    .line 122
    :cond_0
    if-eqz v0, :cond_1

    .line 123
    iget-object v6, p0, Lcom/htc/shutdown/AnimationView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 124
    .local v3, rotation:I
    const/4 v6, 0x3

    if-ne v3, v6, :cond_4

    const/16 v1, -0x10e

    .line 125
    .local v1, degree:I
    :goto_1
    iget-object v6, p0, Lcom/htc/shutdown/AnimationView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v4, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 126
    .local v4, w:I
    iget-object v6, p0, Lcom/htc/shutdown/AnimationView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v2, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 127
    .local v2, h:I
    int-to-float v6, v1

    div-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v2, 0x2

    int-to-float v8, v8

    invoke-virtual {p1, v6, v7, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 128
    sub-int v6, v4, v2

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-int v7, v4, v2

    neg-int v7, v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v0           #bLand:Z
    .end local v1           #degree:I
    .end local v2           #h:I
    .end local v3           #rotation:I
    .end local v4           #w:I
    :cond_1
    :goto_2
    iget-object v6, p0, Lcom/htc/shutdown/AnimationView;->nowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v6, v9, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 133
    iget v6, p0, Lcom/htc/shutdown/AnimationView;->nFramesDrawn:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/htc/shutdown/AnimationView;->nFramesDrawn:I

    .line 135
    iget-object v6, p0, Lcom/htc/shutdown/AnimationView;->lastBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/htc/shutdown/AnimationView;->lastBitmap:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/htc/shutdown/AnimationView;->nowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 136
    iget-object v6, p0, Lcom/htc/shutdown/AnimationView;->lastBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 137
    iput-object v10, p0, Lcom/htc/shutdown/AnimationView;->lastBitmap:Landroid/graphics/Bitmap;

    .line 141
    :cond_2
    iget-object v6, p0, Lcom/htc/shutdown/AnimationView;->myHandler:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 142
    return-void

    .line 116
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 124
    .restart local v0       #bLand:Z
    .restart local v3       #rotation:I
    :cond_4
    const/16 v1, -0x5a

    goto :goto_1

    .line 130
    .end local v0           #bLand:Z
    .end local v3           #rotation:I
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method public setOnAnimationListener(Lcom/htc/shutdown/AnimationView$OnAnimationListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 257
    iput-object p1, p0, Lcom/htc/shutdown/AnimationView;->mAnimationListener:Lcom/htc/shutdown/AnimationView$OnAnimationListener;

    .line 258
    return-void
.end method
