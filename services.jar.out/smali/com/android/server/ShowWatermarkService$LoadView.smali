.class Lcom/android/server/ShowWatermarkService$LoadView;
.super Landroid/view/View;
.source "ShowWatermarkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ShowWatermarkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadView"
.end annotation


# instance fields
.field private mLoadPaint:Landroid/graphics/Paint;

.field private mNeededHeight:I

.field private mNeededWidth:I

.field private mShadowPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/android/server/ShowWatermarkService;


# direct methods
.method constructor <init>(Lcom/android/server/ShowWatermarkService;Landroid/content/Context;)V
    .locals 7
    .parameter
    .parameter "c"

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0xff

    const/16 v4, 0x80

    .line 65
    iput-object p1, p0, Lcom/android/server/ShowWatermarkService$LoadView;->this$0:Lcom/android/server/ShowWatermarkService;

    .line 66
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 67
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/server/ShowWatermarkService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    .line 68
    iget-object v2, p0, Lcom/android/server/ShowWatermarkService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 69
    iget-object v2, p0, Lcom/android/server/ShowWatermarkService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    const/16 v3, 0x14

    invoke-virtual {v2, v3, v4, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 71
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/server/ShowWatermarkService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    .line 72
    iget-object v2, p0, Lcom/android/server/ShowWatermarkService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 73
    iget-object v2, p0, Lcom/android/server/ShowWatermarkService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    const/16 v3, 0x64

    invoke-virtual {v2, v3, v5, v5, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 74
    iget-object v2, p0, Lcom/android/server/ShowWatermarkService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    iget-object v2, p0, Lcom/android/server/ShowWatermarkService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x4000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 77
    invoke-virtual {p0}, Lcom/android/server/ShowWatermarkService$LoadView;->updateDisplay()V

    .line 79
    iget v2, p0, Lcom/android/server/ShowWatermarkService$LoadView;->mNeededWidth:I

    int-to-float v2, v2

    const v3, 0x3da3d70a

    mul-float v1, v2, v3

    .line 80
    .local v1, mTextSize:F
    iget v2, p0, Lcom/android/server/ShowWatermarkService$LoadView;->mNeededHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/server/ShowWatermarkService$LoadView;->mNeededWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const v3, 0x3f666666

    mul-float v0, v2, v3

    .line 82
    .local v0, mTestScalX:F
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    .line 83
    const/high16 v1, 0x41c8

    .line 84
    const v0, 0x40066666

    .line 87
    :cond_0
    iget-object v2, p0, Lcom/android/server/ShowWatermarkService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 88
    iget-object v2, p0, Lcom/android/server/ShowWatermarkService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 89
    iget-object v2, p0, Lcom/android/server/ShowWatermarkService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 90
    iget-object v2, p0, Lcom/android/server/ShowWatermarkService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 91
    return-void
.end method


# virtual methods
.method getMaxMsgLength(I)I
    .locals 5
    .parameter "screenHeight"

    .prologue
    .line 147
    const/4 v1, 0x0

    .line 148
    .local v1, max:I
    move v2, v1

    .line 150
    .local v2, temp:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/server/ShowWatermarkService$LoadView;->this$0:Lcom/android/server/ShowWatermarkService;

    #getter for: Lcom/android/server/ShowWatermarkService;->MESSAGE:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/ShowWatermarkService;->access$000(Lcom/android/server/ShowWatermarkService;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 151
    iget-object v3, p0, Lcom/android/server/ShowWatermarkService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/server/ShowWatermarkService$LoadView;->this$0:Lcom/android/server/ShowWatermarkService;

    #getter for: Lcom/android/server/ShowWatermarkService;->MESSAGE:[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/ShowWatermarkService;->access$000(Lcom/android/server/ShowWatermarkService;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v2, v3

    .line 152
    if-le v2, v1, :cond_0

    move v1, v2

    .line 150
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_1
    add-int/lit8 v1, v1, 0x14

    .line 155
    add-int/lit8 v3, p1, -0x1e

    if-ge v1, v3, :cond_2

    .end local v1           #max:I
    :goto_1
    return v1

    .restart local v1       #max:I
    :cond_2
    add-int/lit8 v1, p1, -0x32

    goto :goto_1
.end method

.method getTotalLineWidth(I)I
    .locals 3
    .parameter "screenWidth"

    .prologue
    .line 159
    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/ShowWatermarkService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    const/high16 v2, 0x3fc0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/server/ShowWatermarkService$LoadView;->this$0:Lcom/android/server/ShowWatermarkService;

    #getter for: Lcom/android/server/ShowWatermarkService;->MESSAGE:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/ShowWatermarkService;->access$000(Lcom/android/server/ShowWatermarkService;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    mul-int v0, v1, v2

    .line 160
    .local v0, calWidth:I
    if-ge v0, p1, :cond_0

    .end local v0           #calWidth:I
    :goto_0
    return v0

    .restart local v0       #calWidth:I
    :cond_0
    add-int/lit8 v0, p1, -0x32

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 95
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 96
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 100
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 101
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/server/ShowWatermarkService$LoadView;->getWidth()I

    move-result v1

    .line 114
    .local v1, W:I
    invoke-virtual {p0}, Lcom/android/server/ShowWatermarkService$LoadView;->getHeight()I

    move-result v0

    .line 117
    .local v0, H:I
    iget-object v7, p0, Lcom/android/server/ShowWatermarkService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->descent()F

    move-result v7

    iget-object v8, p0, Lcom/android/server/ShowWatermarkService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->ascent()F

    move-result v8

    sub-float/2addr v7, v8

    const/high16 v8, 0x3f00

    add-float/2addr v7, v8

    const/high16 v8, 0x3fc0

    mul-float/2addr v7, v8

    float-to-int v3, v7

    .line 119
    .local v3, mFH:I
    const-string v4, ""

    .line 121
    .local v4, mMesg:Ljava/lang/String;
    if-ge v1, v0, :cond_0

    .line 123
    const/high16 v7, 0x42b4

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->rotate(F)V

    .line 124
    iget-object v7, p0, Lcom/android/server/ShowWatermarkService$LoadView;->this$0:Lcom/android/server/ShowWatermarkService;

    #getter for: Lcom/android/server/ShowWatermarkService;->MESSAGE:[Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/ShowWatermarkService;->access$000(Lcom/android/server/ShowWatermarkService;)[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    add-int/lit8 v7, v7, 0x1

    mul-int/2addr v7, v3

    sub-int v7, v1, v7

    div-int/lit8 v6, v7, 0x2

    .line 125
    .local v6, y:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v7, p0, Lcom/android/server/ShowWatermarkService$LoadView;->this$0:Lcom/android/server/ShowWatermarkService;

    #getter for: Lcom/android/server/ShowWatermarkService;->MESSAGE:[Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/ShowWatermarkService;->access$000(Lcom/android/server/ShowWatermarkService;)[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-ge v2, v7, :cond_1

    .line 126
    iget-object v7, p0, Lcom/android/server/ShowWatermarkService$LoadView;->this$0:Lcom/android/server/ShowWatermarkService;

    #getter for: Lcom/android/server/ShowWatermarkService;->MESSAGE:[Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/ShowWatermarkService;->access$000(Lcom/android/server/ShowWatermarkService;)[Ljava/lang/String;

    move-result-object v7

    aget-object v4, v7, v2

    .line 127
    iget-object v7, p0, Lcom/android/server/ShowWatermarkService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    float-to-int v7, v7

    sub-int v7, v0, v7

    div-int/lit8 v7, v7, 0x2

    add-int/lit8 v5, v7, 0x1

    .line 128
    .local v5, x:I
    add-int/2addr v6, v3

    .line 129
    int-to-float v7, v5

    sub-int v8, v1, v6

    neg-int v8, v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/android/server/ShowWatermarkService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 130
    int-to-float v7, v5

    sub-int v8, v1, v6

    neg-int v8, v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/android/server/ShowWatermarkService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 125
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 134
    .end local v2           #i:I
    .end local v5           #x:I
    .end local v6           #y:I
    :cond_0
    iget-object v7, p0, Lcom/android/server/ShowWatermarkService$LoadView;->this$0:Lcom/android/server/ShowWatermarkService;

    #getter for: Lcom/android/server/ShowWatermarkService;->MESSAGE:[Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/ShowWatermarkService;->access$000(Lcom/android/server/ShowWatermarkService;)[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    add-int/lit8 v7, v7, 0x1

    mul-int/2addr v7, v3

    sub-int v7, v0, v7

    div-int/lit8 v7, v7, 0x2

    add-int/lit8 v6, v7, 0x19

    .line 135
    .restart local v6       #y:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    iget-object v7, p0, Lcom/android/server/ShowWatermarkService$LoadView;->this$0:Lcom/android/server/ShowWatermarkService;

    #getter for: Lcom/android/server/ShowWatermarkService;->MESSAGE:[Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/ShowWatermarkService;->access$000(Lcom/android/server/ShowWatermarkService;)[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-ge v2, v7, :cond_1

    .line 136
    iget-object v7, p0, Lcom/android/server/ShowWatermarkService$LoadView;->this$0:Lcom/android/server/ShowWatermarkService;

    #getter for: Lcom/android/server/ShowWatermarkService;->MESSAGE:[Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/ShowWatermarkService;->access$000(Lcom/android/server/ShowWatermarkService;)[Ljava/lang/String;

    move-result-object v7

    aget-object v4, v7, v2

    .line 137
    iget-object v7, p0, Lcom/android/server/ShowWatermarkService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    float-to-int v7, v7

    sub-int v7, v1, v7

    div-int/lit8 v7, v7, 0x2

    add-int/lit8 v5, v7, 0x1

    .line 138
    .restart local v5       #x:I
    add-int/2addr v6, v3

    .line 139
    int-to-float v7, v5

    int-to-float v8, v6

    iget-object v9, p0, Lcom/android/server/ShowWatermarkService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 140
    int-to-float v7, v5

    int-to-float v8, v6

    iget-object v9, p0, Lcom/android/server/ShowWatermarkService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 135
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 143
    .end local v5           #x:I
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/ShowWatermarkService$LoadView;->setViewSize(Z)Z

    .line 106
    iget v0, p0, Lcom/android/server/ShowWatermarkService$LoadView;->mNeededWidth:I

    iget v1, p0, Lcom/android/server/ShowWatermarkService$LoadView;->mNeededHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ShowWatermarkService$LoadView;->setMeasuredDimension(II)V

    .line 107
    return-void
.end method

.method setViewSize(Z)Z
    .locals 5
    .parameter "getScreenSize"

    .prologue
    .line 178
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 180
    .local v0, mDp:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 181
    .local v2, neededWidth:I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 183
    .local v1, neededHeight:I
    if-nez p1, :cond_4

    .line 184
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/server/ShowWatermarkService$LoadView;->getTotalLineWidth(I)I

    move-result v2

    .line 186
    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/server/ShowWatermarkService$LoadView;->getMaxMsgLength(I)I

    move-result v1

    .line 197
    :cond_0
    :goto_1
    iget v4, p0, Lcom/android/server/ShowWatermarkService$LoadView;->mNeededWidth:I

    if-ne v2, v4, :cond_1

    iget v4, p0, Lcom/android/server/ShowWatermarkService$LoadView;->mNeededHeight:I

    if-eq v1, v4, :cond_5

    .line 198
    :cond_1
    iput v2, p0, Lcom/android/server/ShowWatermarkService$LoadView;->mNeededWidth:I

    .line 199
    iput v1, p0, Lcom/android/server/ShowWatermarkService$LoadView;->mNeededHeight:I

    .line 200
    const/4 v4, 0x1

    .line 202
    :goto_2
    return v4

    .line 184
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/server/ShowWatermarkService$LoadView;->getMaxMsgLength(I)I

    move-result v2

    goto :goto_0

    .line 186
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/server/ShowWatermarkService$LoadView;->getTotalLineWidth(I)I

    move-result v1

    goto :goto_1

    .line 190
    :cond_4
    if-le v2, v1, :cond_0

    .line 191
    move v3, v2

    .line 192
    .local v3, temp:I
    move v2, v1

    .line 193
    move v1, v3

    goto :goto_1

    .line 202
    .end local v3           #temp:I
    :cond_5
    const/4 v4, 0x0

    goto :goto_2
.end method

.method updateDisplay()V
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/ShowWatermarkService$LoadView;->setViewSize(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/android/server/ShowWatermarkService$LoadView;->requestLayout()V

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/ShowWatermarkService$LoadView;->invalidate()V

    goto :goto_0
.end method
