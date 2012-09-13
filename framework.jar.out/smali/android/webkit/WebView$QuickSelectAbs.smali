.class public abstract Landroid/webkit/WebView$QuickSelectAbs;
.super Ljava/lang/Object;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "QuickSelectAbs"
.end annotation


# static fields
.field static final MSG_SEL_WORD:I = 0x61a9


# instance fields
.field protected ANCHOR_DRAWABLE_HEIGHT:I

.field protected final ENABLE_MSG:Z

.field private final MAGNIFY_HEIGHT:I

.field MAGNIFY_HEIGHT_DIP:I

.field private final MAGNIFY_OFFSET:I

.field private MAGNIFY_OFFSET_DIP:I

.field private final MAGNIFY_WIDTH:I

.field private MAGNIFY_WIDTH_DIP:I

.field private final POSITION_MAGNIFY_HEIGHT:I

.field private POSITION_MAGNIFY_HEIGHT_DIP:I

.field private final POSITION_MAGNIFY_WIDTH:I

.field private POSITION_MAGNIFY_WIDTH_DIP:I

.field final TOLERANT_DISTANCE:I

.field acrossFlag:Z

.field protected emptyCanvas:Landroid/graphics/Canvas;

.field mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

.field mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

.field public mQSMethod:Landroid/webkit/WebViewSelectionMethod;

.field protected mQSMode:Z

.field protected mSelectPath:Landroid/graphics/Path;

.field protected mSelectRect:Landroid/graphics/Rect;

.field protected mSelectRegion:Landroid/graphics/Region;

.field magnifier:Landroid/webkit/MagnifyView;

.field magnifierAnchor:Landroid/graphics/Rect;

.field oSelEnd:Landroid/graphics/Rect;

.field oSelStart:Landroid/graphics/Rect;

.field selEnd:Landroid/graphics/Rect;

.field selStart:Landroid/graphics/Rect;

.field protected selectionPaint:Landroid/graphics/Paint;

.field protected showAnchor:Z

.field showMagnifier:Z

.field testWordPos:Landroid/graphics/Point;

.field testWordSelect:Z

.field final synthetic this$0:Landroid/webkit/WebView;

.field tmpRect:Landroid/graphics/Rect;

.field tmpRectF:Landroid/graphics/RectF;

.field tolerantBox:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x5a

    const/high16 v4, 0x4120

    const/4 v3, 0x0

    const/16 v2, 0x3c

    const/4 v1, 0x0

    .line 12556
    iput-object p1, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12558
    iput-boolean v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->mQSMode:Z

    .line 12559
    new-instance v0, Landroid/webkit/WebViewSelectionMethod;

    invoke-direct {v0}, Landroid/webkit/WebViewSelectionMethod;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mQSMethod:Landroid/webkit/WebViewSelectionMethod;

    .line 12562
    iput v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->ANCHOR_DRAWABLE_HEIGHT:I

    .line 12565
    iput-boolean v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->showAnchor:Z

    .line 12566
    iput-boolean v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->acrossFlag:Z

    .line 12569
    iput-boolean v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->showMagnifier:Z

    .line 12570
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    .line 12571
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->magnifierAnchor:Landroid/graphics/Rect;

    .line 12573
    const/16 v0, 0x8c

    iput v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->MAGNIFY_WIDTH:I

    .line 12574
    iput v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->MAGNIFY_HEIGHT:I

    .line 12575
    const/16 v0, 0x64

    iput v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->POSITION_MAGNIFY_WIDTH:I

    .line 12576
    iput v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->POSITION_MAGNIFY_HEIGHT:I

    .line 12577
    iput v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->MAGNIFY_OFFSET:I

    .line 12579
    const/16 v0, 0x8c

    iput v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->MAGNIFY_WIDTH_DIP:I

    .line 12580
    iput v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->MAGNIFY_HEIGHT_DIP:I

    .line 12581
    const/16 v0, 0x64

    iput v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->POSITION_MAGNIFY_WIDTH_DIP:I

    .line 12582
    iput v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->POSITION_MAGNIFY_HEIGHT_DIP:I

    .line 12583
    iput v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->MAGNIFY_OFFSET_DIP:I

    .line 12586
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    .line 12587
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    .line 12588
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->oSelStart:Landroid/graphics/Rect;

    .line 12589
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->oSelEnd:Landroid/graphics/Rect;

    .line 12590
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRect:Landroid/graphics/Rect;

    .line 12592
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->emptyCanvas:Landroid/graphics/Canvas;

    .line 12593
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->selectionPaint:Landroid/graphics/Paint;

    .line 12594
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->tmpRect:Landroid/graphics/Rect;

    .line 12595
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->tmpRectF:Landroid/graphics/RectF;

    .line 12596
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRegion:Landroid/graphics/Region;

    .line 12597
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectPath:Landroid/graphics/Path;

    .line 12610
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v2, 0x19

    if-eq v0, v2, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v2, 0x38

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->ENABLE_MSG:Z

    .line 12632
    iput-boolean v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->testWordSelect:Z

    .line 12633
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->testWordPos:Landroid/graphics/Point;

    .line 12831
    const/16 v0, 0xa

    iput v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->TOLERANT_DISTANCE:I

    .line 12832
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v3, v3, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->tolerantBox:Landroid/graphics/RectF;

    return-void

    :cond_1
    move v0, v1

    .line 12610
    goto :goto_0
.end method


# virtual methods
.method final dismissAnchor()V
    .locals 1

    .prologue
    .line 12823
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v0}, Lcom/htc/textselection/SelectionAnchor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12824
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v0}, Lcom/htc/textselection/SelectionAnchor;->dismiss()V

    .line 12825
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v0}, Lcom/htc/textselection/SelectionAnchor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12826
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v0}, Lcom/htc/textselection/SelectionAnchor;->dismiss()V

    .line 12827
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->acrossFlag:Z

    .line 12828
    return-void
.end method

.method protected abstract doWordSelection(II)V
.end method

.method public handleSelectMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 12621
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 12628
    :pswitch_0
    return-void

    .line 12621
    :pswitch_data_0
    .packed-switch 0x61a9
        :pswitch_0
    .end packed-switch
.end method

.method public abstract hideQuickActions(Z)V
.end method

.method init()V
    .locals 9

    .prologue
    const/high16 v8, 0x4270

    const/4 v7, 0x0

    const/high16 v5, 0x3f00

    const/4 v6, 0x1

    .line 12659
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/webkit/WebView;->access$12600(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 12662
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->density:F

    .line 12663
    .local v0, densityFactor:F
    const/high16 v4, 0x42b4

    mul-float/2addr v4, v0

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->MAGNIFY_OFFSET_DIP:I

    .line 12664
    const/high16 v4, 0x430c

    mul-float/2addr v4, v0

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->MAGNIFY_WIDTH_DIP:I

    .line 12665
    mul-float v4, v8, v0

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->MAGNIFY_HEIGHT_DIP:I

    .line 12666
    const/high16 v4, 0x42c8

    mul-float/2addr v4, v0

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->POSITION_MAGNIFY_WIDTH_DIP:I

    .line 12667
    mul-float v4, v8, v0

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->POSITION_MAGNIFY_HEIGHT_DIP:I

    .line 12670
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/webkit/WebView;->access$12700(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/webkit/WebViewThemeable;->getAnchorBarTopDrawable(Landroid/content/Context;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 12671
    .local v2, priorDrawable:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/webkit/WebView;->access$12800(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/webkit/WebViewThemeable;->getAnchorBarDrawable(Landroid/content/Context;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 12672
    .local v1, postDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iput v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->ANCHOR_DRAWABLE_HEIGHT:I

    .line 12673
    invoke-virtual {v2, v6}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 12674
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 12676
    new-instance v4, Lcom/htc/textselection/SelectionAnchor;

    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/webkit/WebView;->access$12900(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v6, v2, v1}, Lcom/htc/textselection/SelectionAnchor;-><init>(Landroid/content/Context;ZLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    .line 12677
    new-instance v4, Lcom/htc/textselection/SelectionAnchor;

    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/webkit/WebView;->access$13000(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v7, v2, v1}, Lcom/htc/textselection/SelectionAnchor;-><init>(Landroid/content/Context;ZLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    .line 12682
    new-instance v4, Landroid/webkit/MagnifyView;

    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/webkit/WebView;->access$13100(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/webkit/MagnifyView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    .line 12686
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->emptyCanvas:Landroid/graphics/Canvas;

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v6, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 12687
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->emptyCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v7, v7, v6, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 12689
    invoke-virtual {p0}, Landroid/webkit/WebView$QuickSelectAbs;->myInit()V

    .line 12690
    return-void
.end method

.method public isSelectMsg(I)Z
    .locals 1
    .parameter "what"

    .prologue
    .line 12614
    iget-boolean v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->ENABLE_MSG:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x61a9

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelecting()Z
    .locals 1

    .prologue
    .line 12655
    iget-boolean v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mQSMode:Z

    return v0
.end method

.method makeSelect(IIII)Z
    .locals 2
    .parameter "fromX"
    .parameter "fromY"
    .parameter "toX"
    .parameter "toY"

    .prologue
    .line 12647
    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->nativeResetSelection()V

    .line 12648
    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v1, p1, p2}, Landroid/webkit/WebView;->nativeStartSelection(II)Z

    move-result v0

    .line 12649
    .local v0, ret:Z
    if-eqz v0, :cond_0

    .line 12650
    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->nativeExtendSelection(II)V
    invoke-static {v1, p3, p4}, Landroid/webkit/WebView;->access$12500(Landroid/webkit/WebView;II)V

    .line 12651
    :cond_0
    return v0
.end method

.method protected abstract myInit()V
.end method

.method public abstract onTouchEvent(IILandroid/view/MotionEvent;)Z
.end method

.method public abstract selectionDone()V
.end method

.method public abstract setQuickSelectionButtonFlag(I)V
.end method

.method public abstract setUpSelect()V
.end method

.method final showAnchors(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 11
    .parameter "prior"
    .parameter "post"

    .prologue
    .line 12761
    const/4 v9, 0x2

    new-array v2, v9, [I

    .line 12762
    .local v2, offsetOnScreen:[I
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v9, v2}, Landroid/webkit/WebView;->getLocationInWindow([I)V

    .line 12764
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 12765
    .local v4, visibleRect:Landroid/graphics/Rect;
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v9, v4}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 12768
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v9}, Lcom/htc/textselection/SelectionAnchor;->isShowing()Z

    move-result v9

    if-nez v9, :cond_3

    if-eqz p1, :cond_3

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v9}, Lcom/htc/textselection/SelectionAnchor;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v1, 0x1

    .line 12771
    .local v1, needToDimissPost:Z
    :goto_0
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v9}, Landroid/webkit/WebView;->access$2000(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v3

    .line 12772
    .local v3, scaleRatio:F
    const/4 v0, 0x0

    .line 12776
    .local v0, gap:F
    if-eqz p1, :cond_0

    .line 12777
    iget v9, p1, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    mul-float v5, v9, v3

    .line 12778
    .local v5, xPos:F
    iget-boolean v9, p0, Landroid/webkit/WebView$QuickSelectAbs;->acrossFlag:Z

    if-eqz v9, :cond_4

    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    mul-float/2addr v9, v3

    const/4 v10, 0x0

    add-float v7, v9, v10

    .line 12781
    .local v7, yPos:F
    :goto_1
    const/4 v9, 0x0

    aget v9, v2, v9

    const/high16 v10, 0x3f00

    add-float/2addr v10, v5

    float-to-int v10, v10

    add-int/2addr v9, v10

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v10}, Landroid/webkit/WebView;->access$14000(Landroid/webkit/WebView;)I

    move-result v10

    sub-int v6, v9, v10

    .line 12782
    .local v6, xpos:I
    const/4 v9, 0x1

    aget v9, v2, v9

    const/high16 v10, 0x3f00

    add-float/2addr v10, v7

    float-to-int v10, v10

    add-int/2addr v9, v10

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollY:I
    invoke-static {v10}, Landroid/webkit/WebView;->access$14100(Landroid/webkit/WebView;)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v10

    add-int v8, v9, v10

    .line 12784
    .local v8, ypos:I
    invoke-virtual {v4, v6, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 12785
    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    iget-boolean v9, p0, Landroid/webkit/WebView$QuickSelectAbs;->acrossFlag:Z

    if-eqz v9, :cond_5

    sget-object v9, Lcom/htc/textselection/SelectionAnchor$VisualMode;->BOTTOM:Lcom/htc/textselection/SelectionAnchor$VisualMode;

    :goto_2
    invoke-virtual {v10, v9}, Lcom/htc/textselection/SelectionAnchor;->setVisualMode(Lcom/htc/textselection/SelectionAnchor$VisualMode;)V

    .line 12786
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v9, v10, v6, v8}, Lcom/htc/textselection/SelectionAnchor;->show(Landroid/view/View;II)V

    .line 12787
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/textselection/SelectionAnchor;->setVisibility(I)V

    .line 12795
    .end local v5           #xPos:F
    .end local v6           #xpos:I
    .end local v7           #yPos:F
    .end local v8           #ypos:I
    :cond_0
    :goto_3
    if-eqz v1, :cond_1

    .line 12796
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v9}, Lcom/htc/textselection/SelectionAnchor;->dismiss()V

    .line 12799
    :cond_1
    if-eqz p2, :cond_2

    .line 12800
    iget v9, p2, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    mul-float v5, v9, v3

    .line 12801
    .restart local v5       #xPos:F
    iget-boolean v9, p0, Landroid/webkit/WebView$QuickSelectAbs;->acrossFlag:Z

    if-eqz v9, :cond_7

    iget v9, p2, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    mul-float/2addr v9, v3

    const/4 v10, 0x0

    sub-float v7, v9, v10

    .line 12804
    .restart local v7       #yPos:F
    :goto_4
    const/4 v9, 0x0

    aget v9, v2, v9

    const/high16 v10, 0x3f00

    add-float/2addr v10, v5

    float-to-int v10, v10

    add-int/2addr v9, v10

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v10}, Landroid/webkit/WebView;->access$14200(Landroid/webkit/WebView;)I

    move-result v10

    sub-int v6, v9, v10

    .line 12805
    .restart local v6       #xpos:I
    const/4 v9, 0x1

    aget v9, v2, v9

    const/high16 v10, 0x3f00

    add-float/2addr v10, v7

    float-to-int v10, v10

    add-int/2addr v9, v10

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollY:I
    invoke-static {v10}, Landroid/webkit/WebView;->access$14300(Landroid/webkit/WebView;)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v10

    add-int v8, v9, v10

    .line 12807
    .restart local v8       #ypos:I
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/htc/textselection/SelectionAnchor;->setTouchable(Z)V

    .line 12808
    invoke-virtual {v4, v6, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 12809
    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    iget-boolean v9, p0, Landroid/webkit/WebView$QuickSelectAbs;->acrossFlag:Z

    if-eqz v9, :cond_8

    sget-object v9, Lcom/htc/textselection/SelectionAnchor$VisualMode;->TOP:Lcom/htc/textselection/SelectionAnchor$VisualMode;

    :goto_5
    invoke-virtual {v10, v9}, Lcom/htc/textselection/SelectionAnchor;->setVisualMode(Lcom/htc/textselection/SelectionAnchor$VisualMode;)V

    .line 12810
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v9, v10, v6, v8}, Lcom/htc/textselection/SelectionAnchor;->show(Landroid/view/View;II)V

    .line 12811
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/textselection/SelectionAnchor;->setVisibility(I)V

    .line 12817
    .end local v5           #xPos:F
    .end local v6           #xpos:I
    .end local v7           #yPos:F
    .end local v8           #ypos:I
    :cond_2
    :goto_6
    return-void

    .line 12768
    .end local v0           #gap:F
    .end local v1           #needToDimissPost:Z
    .end local v3           #scaleRatio:F
    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 12778
    .restart local v0       #gap:F
    .restart local v1       #needToDimissPost:Z
    .restart local v3       #scaleRatio:F
    .restart local v5       #xPos:F
    :cond_4
    iget v9, p1, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    mul-float/2addr v9, v3

    const/4 v10, 0x0

    sub-float v7, v9, v10

    goto/16 :goto_1

    .line 12785
    .restart local v6       #xpos:I
    .restart local v7       #yPos:F
    .restart local v8       #ypos:I
    :cond_5
    sget-object v9, Lcom/htc/textselection/SelectionAnchor$VisualMode;->TOP:Lcom/htc/textselection/SelectionAnchor$VisualMode;

    goto/16 :goto_2

    .line 12790
    :cond_6
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/htc/textselection/SelectionAnchor;->setVisibility(I)V

    goto :goto_3

    .line 12801
    .end local v6           #xpos:I
    .end local v7           #yPos:F
    .end local v8           #ypos:I
    :cond_7
    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    mul-float/2addr v9, v3

    const/4 v10, 0x0

    add-float v7, v9, v10

    goto :goto_4

    .line 12809
    .restart local v6       #xpos:I
    .restart local v7       #yPos:F
    .restart local v8       #ypos:I
    :cond_8
    sget-object v9, Lcom/htc/textselection/SelectionAnchor$VisualMode;->BOTTOM:Lcom/htc/textselection/SelectionAnchor$VisualMode;

    goto :goto_5

    .line 12814
    :cond_9
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/htc/textselection/SelectionAnchor;->setVisibility(I)V

    goto :goto_6
.end method

.method final showMagnify(Landroid/graphics/Rect;II)V
    .locals 17
    .parameter "anchorRect"
    .parameter "touchX"
    .parameter "touchOffsetY"

    .prologue
    .line 12699
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->showMagnifier:Z

    if-nez v1, :cond_0

    .line 12757
    :goto_0
    return-void

    .line 12702
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    invoke-virtual {v1}, Landroid/webkit/MagnifyView;->getBGdrawableID()I

    move-result v1

    if-gtz v1, :cond_1

    .line 12703
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    const v3, 0x208066d

    invoke-virtual {v1, v3}, Landroid/webkit/MagnifyView;->setBGdrawable(I)V

    .line 12706
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v1}, Landroid/webkit/WebView;->access$2000(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v2

    .line 12707
    .local v2, scaleRatio:F
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v1}, Landroid/webkit/WebView;->access$2000(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v10

    .line 12709
    .local v10, invScaleRatio:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v16

    .line 12710
    .local v16, selCY:I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->MAGNIFY_OFFSET_DIP:I

    add-int v12, v1, p3

    .line 12717
    .local v12, offset:I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView$QuickSelectAbs;->MAGNIFY_WIDTH_DIP:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebView$QuickSelectAbs;->MAGNIFY_HEIGHT_DIP:I

    invoke-virtual {v1, v3, v4}, Landroid/webkit/MagnifyView;->setMagnifyContentSize(II)V

    .line 12720
    const/4 v1, 0x2

    new-array v13, v1, [I

    .line 12721
    .local v13, offsetOnScreen:[I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v1, v13}, Landroid/webkit/WebView;->getLocationOnScreen([I)V

    .line 12723
    new-instance v11, Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v1}, Landroid/webkit/WebView;->access$13200(Landroid/webkit/WebView;)I

    move-result v1

    sub-int v1, p2, v1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollY:I
    invoke-static {v4}, Landroid/webkit/WebView;->access$13300(Landroid/webkit/WebView;)I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v12

    invoke-direct {v11, v1, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 12725
    .local v11, magnifyWinCP:Landroid/graphics/Point;
    const/4 v1, 0x0

    aget v1, v13, v1

    iget v3, v11, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    invoke-virtual {v3}, Landroid/webkit/MagnifyView;->getFullWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f00

    mul-float/2addr v3, v4

    sub-float v14, v1, v3

    .line 12726
    .local v14, posX:F
    const/4 v1, 0x1

    aget v1, v13, v1

    iget v3, v11, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    invoke-virtual {v3}, Landroid/webkit/MagnifyView;->getFullHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f00

    mul-float/2addr v3, v4

    sub-float v15, v1, v3

    .line 12728
    .local v15, posY:F
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    invoke-virtual {v1}, Landroid/webkit/MagnifyView;->getFullHeight()I

    move-result v1

    int-to-float v1, v1

    const v3, 0x3ea8f5c3

    mul-float/2addr v1, v3

    add-float/2addr v1, v15

    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    .line 12729
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    invoke-virtual {v1}, Landroid/webkit/MagnifyView;->getFullHeight()I

    move-result v1

    int-to-float v1, v1

    const v3, 0x3ea8f5c3

    mul-float/2addr v1, v3

    neg-float v15, v1

    .line 12732
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v3

    int-to-float v3, v3

    move/from16 v0, v16

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContentWidth:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$13400(Landroid/webkit/WebView;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContentHeight:I
    invoke-static {v6}, Landroid/webkit/WebView;->access$13500(Landroid/webkit/WebView;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v7}, Landroid/webkit/WebView;->access$13600(Landroid/webkit/WebView;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollY:I
    invoke-static {v8}, Landroid/webkit/WebView;->access$13700(Landroid/webkit/WebView;)I

    move-result v8

    invoke-virtual/range {v1 .. v8}, Landroid/webkit/MagnifyView;->setContent(FFFIIII)V

    .line 12738
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    invoke-virtual {v1}, Landroid/webkit/MagnifyView;->beginDrawContent()Landroid/graphics/Canvas;

    move-result-object v9

    .line 12739
    .local v9, c:Landroid/graphics/Canvas;
    if-eqz v9, :cond_4

    .line 12740
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mBackgroundColor:I
    invoke-static {v1}, Landroid/webkit/WebView;->access$13800(Landroid/webkit/WebView;)I

    move-result v1

    if-nez v1, :cond_3

    .line 12741
    const/4 v1, -0x1

    invoke-virtual {v9, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 12745
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v1, v9}, Landroid/webkit/WebView;->drawPage(Landroid/graphics/Canvas;)V

    .line 12748
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 12749
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->selectionPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 12750
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->selectionPaint:Landroid/graphics/Paint;

    invoke-static {}, Landroid/webkit/WebView;->access$13900()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 12751
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$QuickSelectAbs;->selectionPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 12754
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    invoke-virtual {v1}, Landroid/webkit/MagnifyView;->endDrawContent()V

    .line 12756
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    const/4 v4, 0x0

    aget v4, v13, v4

    float-to-int v5, v15

    invoke-virtual {v1, v3, v4, v5}, Landroid/webkit/MagnifyView;->showAtPositon(Landroid/view/View;II)V

    goto/16 :goto_0
.end method

.method public abstract showQuickActions(Landroid/graphics/Rect;I)V
.end method

.method final spacialDeNoise(FF)Landroid/graphics/PointF;
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v6, 0x4120

    .line 12834
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 12835
    .local v4, p:Landroid/graphics/PointF;
    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->tolerantBox:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    .line 12836
    .local v2, oldCenterX:F
    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->tolerantBox:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    .line 12837
    .local v3, oldCenterY:F
    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->tolerantBox:Landroid/graphics/RectF;

    invoke-virtual {v5, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 12838
    iput v2, v4, Landroid/graphics/PointF;->x:F

    .line 12839
    iput v3, v4, Landroid/graphics/PointF;->y:F

    .line 12865
    :goto_0
    return-object v4

    .line 12842
    :cond_0
    const/4 v0, 0x0

    .line 12843
    .local v0, offsetX:F
    const/4 v1, 0x0

    .line 12844
    .local v1, offsetY:F
    sub-float v5, p1, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v6

    if-gez v5, :cond_4

    .line 12845
    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->tolerantBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    cmpg-float v5, p1, v5

    if-gez v5, :cond_3

    .line 12846
    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->tolerantBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float v0, p1, v5

    .line 12852
    :cond_1
    :goto_1
    sub-float v5, p2, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v6

    if-gez v5, :cond_6

    .line 12853
    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->tolerantBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    cmpg-float v5, p2, v5

    if-gez v5, :cond_5

    .line 12854
    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->tolerantBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float v1, p2, v5

    .line 12861
    :cond_2
    :goto_2
    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->tolerantBox:Landroid/graphics/RectF;

    invoke-virtual {v5, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 12862
    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->tolerantBox:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 12863
    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->tolerantBox:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    iput v5, v4, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 12847
    :cond_3
    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->tolerantBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    cmpl-float v5, p1, v5

    if-lez v5, :cond_1

    .line 12848
    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->tolerantBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float v0, p1, v5

    goto :goto_1

    .line 12851
    :cond_4
    sub-float v0, p1, v2

    goto :goto_1

    .line 12855
    :cond_5
    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->tolerantBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    cmpl-float v5, p2, v5

    if-lez v5, :cond_2

    .line 12856
    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->tolerantBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float v1, p2, v5

    goto :goto_2

    .line 12859
    :cond_6
    sub-float v1, p2, v3

    goto :goto_2
.end method

.method testSelect(II)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    .line 12635
    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->nativeResetSelection()V

    .line 12636
    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->testWordPos:Landroid/graphics/Point;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 12637
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->testWordSelect:Z

    .line 12638
    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v1, p1, p2}, Landroid/webkit/WebView;->nativeStartSelection(II)Z

    move-result v0

    .line 12639
    .local v0, ret:Z
    if-eqz v0, :cond_0

    .line 12640
    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->nativeExtendSelection(II)V
    invoke-static {v1, p1, p2}, Landroid/webkit/WebView;->access$12500(Landroid/webkit/WebView;II)V

    .line 12641
    :cond_0
    iput-boolean v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->testWordSelect:Z

    .line 12642
    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->testWordPos:Landroid/graphics/Point;

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Point;->set(II)V

    .line 12643
    return v0
.end method
