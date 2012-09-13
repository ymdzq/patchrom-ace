.class Landroid/webkit/WebView$QuickSelectWV;
.super Landroid/webkit/WebView$QuickSelectAbs;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuickSelectWV"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;,
        Landroid/webkit/WebView$QuickSelectWV$EventHub;,
        Landroid/webkit/WebView$QuickSelectWV$ShowQuickActionDelay;
    }
.end annotation


# static fields
.field static final AFTER_RESUME_SELECTION:I = 0x13e240

.field static final AFTER_WORD_SELECT:I = 0x13e23d

.field static final AUTO_EXTEND_TO_WORD:I = 0x13e1da

.field public static final COPY_BUTTON_ONLY:I = 0x1

.field public static final DEFAULT_BUTTON_SET:I = 0x46

.field static final END_CJKS_SELECT:I = 0x13e1d8

.field static final MSG_AFTER_WORD_SELECT:I = 0x13e9a8

.field static final MSG_AUTO_EXTEND:I = 0x13e9a9

.field static final MSG_PAUSE_SELECTION:I = 0x13e9ad

.field static final MSG_RESUME_SELECTION:I = 0x13e9ab

.field static final RESUME_SELECTION:I = 0x13e1db

.field static final SELECT_CJKS_WORD:I = 0x13e1d9

.field private static final SEL_MSG_END:I = 0x13ea0b

.field private static final SEL_MSG_START:I = 0x13e9a8

.field static final SHOW_QUICKACTION:I = 0x13e1dc

.field static final WORD_SELECT:I = 0x13e23e


# instance fields
.field basicActions:Landroid/webkit/BasicActions;

.field enableQuickAction:Z

.field first:Landroid/webkit/SelectionUnitInfo;

.field private mAnchorTouchListener:Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;

.field private mQSEventHandler:Landroid/webkit/WebView$QuickSelectWV$EventHub;

.field mQuickActionModeCallback:Landroid/webkit/WebView$WrapActions;

.field mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

.field second:Landroid/webkit/SelectionUnitInfo;

.field showQuickActionDelay:Landroid/webkit/WebView$QuickSelectWV$ShowQuickActionDelay;

.field final synthetic this$0:Landroid/webkit/WebView;

.field tmp:Landroid/webkit/SelectionUnitInfo;

.field tmpForCJKWord:Landroid/webkit/SelectionUnitInfo;


# direct methods
.method private constructor <init>(Landroid/webkit/WebView;)V
    .locals 2
    .parameter

    .prologue
    .line 12870
    iput-object p1, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0, p1}, Landroid/webkit/WebView$QuickSelectAbs;-><init>(Landroid/webkit/WebView;)V

    .line 12871
    new-instance v0, Landroid/webkit/WebView$QuickSelectWV$EventHub;

    invoke-direct {v0, p0}, Landroid/webkit/WebView$QuickSelectWV$EventHub;-><init>(Landroid/webkit/WebView$QuickSelectWV;)V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->mQSEventHandler:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    .line 12879
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView$QuickSelectWV;->enableQuickAction:Z

    .line 12885
    new-instance v0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;

    invoke-direct {v0, p0}, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;-><init>(Landroid/webkit/WebView$QuickSelectWV;)V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->mAnchorTouchListener:Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;

    .line 12888
    new-instance v0, Landroid/webkit/SelectionUnitInfo;

    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-direct {v0, v1}, Landroid/webkit/SelectionUnitInfo;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    .line 12889
    new-instance v0, Landroid/webkit/SelectionUnitInfo;

    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-direct {v0, v1}, Landroid/webkit/SelectionUnitInfo;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    .line 12890
    new-instance v0, Landroid/webkit/SelectionUnitInfo;

    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-direct {v0, v1}, Landroid/webkit/SelectionUnitInfo;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->tmpForCJKWord:Landroid/webkit/SelectionUnitInfo;

    .line 12891
    new-instance v0, Landroid/webkit/SelectionUnitInfo;

    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-direct {v0, v1}, Landroid/webkit/SelectionUnitInfo;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->tmp:Landroid/webkit/SelectionUnitInfo;

    .line 13267
    new-instance v0, Landroid/webkit/WebView$QuickSelectWV$ShowQuickActionDelay;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/webkit/WebView$QuickSelectWV$ShowQuickActionDelay;-><init>(Landroid/webkit/WebView$QuickSelectWV;Landroid/webkit/WebView$1;)V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->showQuickActionDelay:Landroid/webkit/WebView$QuickSelectWV$ShowQuickActionDelay;

    .line 13795
    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebView;Landroid/webkit/WebView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12870
    invoke-direct {p0, p1}, Landroid/webkit/WebView$QuickSelectWV;-><init>(Landroid/webkit/WebView;)V

    return-void
.end method

.method static synthetic access$16000(Landroid/webkit/WebView$QuickSelectWV;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12870
    invoke-direct {p0, p1}, Landroid/webkit/WebView$QuickSelectWV;->getRegionForQuickAction(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$17100(Landroid/webkit/WebView$QuickSelectWV;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 12870
    invoke-direct {p0}, Landroid/webkit/WebView$QuickSelectWV;->getUIdataFromWebcore()V

    return-void
.end method

.method static synthetic access$17300(Landroid/webkit/WebView$QuickSelectWV;Landroid/webkit/SelectionUnitInfo;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 12870
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView$QuickSelectWV;->doAutoExtend(Landroid/webkit/SelectionUnitInfo;J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$17400(Landroid/webkit/WebView$QuickSelectWV;)Landroid/webkit/WebView$QuickSelectWV$EventHub;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12870
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->mQSEventHandler:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    return-object v0
.end method

.method private afterWordSelect(II)V
    .locals 9
    .parameter "cx"
    .parameter "cy"

    .prologue
    const/4 v4, 0x0

    .line 12921
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    iget v0, v0, Landroid/webkit/SelectionUnitInfo;->node:I

    if-nez v0, :cond_1

    .line 12922
    invoke-virtual {p0}, Landroid/webkit/WebView$QuickSelectWV;->selectionDone()V

    .line 12952
    :cond_0
    :goto_0
    return-void

    .line 12926
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->needVibrate:Z
    invoke-static {v0}, Landroid/webkit/WebView;->access$14800(Landroid/webkit/WebView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12927
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->performHapticFeedback(I)Z

    .line 12928
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->needVibrate:Z
    invoke-static {v0, v4}, Landroid/webkit/WebView;->access$14802(Landroid/webkit/WebView;Z)Z

    .line 12931
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->willSelectWord:Z
    invoke-static {v0}, Landroid/webkit/WebView;->access$14900(Landroid/webkit/WebView;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->triggerByTouch:Z
    invoke-static {v0}, Landroid/webkit/WebView;->access$15000(Landroid/webkit/WebView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12932
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->willSelectWord:Z
    invoke-static {v0, v4}, Landroid/webkit/WebView;->access$14902(Landroid/webkit/WebView;Z)Z

    .line 12935
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->showAnchor:Z

    .line 12937
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v0, v1}, Landroid/webkit/SelectionUnitInfo;->set(Landroid/webkit/SelectionUnitInfo;)V

    .line 12938
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mQSMethod:Landroid/webkit/WebViewSelectionMethod;

    sget-object v1, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    .line 12939
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v4}, Landroid/webkit/WebView$QuickSelectWV;->showQuickActions(Landroid/graphics/Rect;I)V

    .line 12941
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->mQuickActionModeCallback:Landroid/webkit/WebView$WrapActions;

    if-eqz v0, :cond_0

    .line 12942
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectWV;->mQuickActionModeCallback:Landroid/webkit/WebView$WrapActions;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    goto :goto_0

    .line 12945
    :cond_3
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mLastTouchTime:J
    invoke-static {v0}, Landroid/webkit/WebView;->access$15100(Landroid/webkit/WebView;)J

    move-result-wide v0

    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mLastTouchTime:J
    invoke-static {v2}, Landroid/webkit/WebView;->access$15100(Landroid/webkit/WebView;)J

    move-result-wide v2

    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget v5, v5, Landroid/webkit/WebView;->mLastTouchX:I

    int-to-float v5, v5

    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget v6, v6, Landroid/webkit/WebView;->mLastTouchY:I

    int-to-float v6, v6

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 12948
    .local v8, fakeEV:Landroid/view/MotionEvent;
    invoke-virtual {p0, p1, p2, v8}, Landroid/webkit/WebView$QuickSelectWV;->onTouchEvent(IILandroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method private doAutoExtend(Landroid/webkit/SelectionUnitInfo;J)Z
    .locals 8
    .parameter "active"
    .parameter "updateTime"

    .prologue
    const/4 v5, 0x0

    .line 13465
    iget v6, p1, Landroid/webkit/SelectionUnitInfo;->node:I

    if-nez v6, :cond_1

    .line 13480
    :cond_0
    :goto_0
    return v5

    .line 13468
    :cond_1
    iget v1, p1, Landroid/webkit/SelectionUnitInfo;->startIndex:I

    .line 13469
    .local v1, current:I
    iget-object v6, p1, Landroid/webkit/SelectionUnitInfo;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 13471
    .local v0, ch:C
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, p2

    .line 13473
    .local v2, timeDiff:J
    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v4

    .line 13480
    .local v4, type:I
    if-ltz v1, :cond_0

    const-wide/16 v6, 0x64

    cmp-long v6, v2, v6

    if-gez v6, :cond_0

    const/16 v6, 0x14

    if-lt v4, v6, :cond_2

    const/16 v6, 0x18

    if-le v4, v6, :cond_0

    :cond_2
    invoke-static {v0}, Lcom/htc/textselection/FetchSuggestionFromIME;->isCJKS(C)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    const/4 v5, 0x1

    goto :goto_0
.end method

.method private getRegionForQuickAction(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4
    .parameter "selectionRegion"

    .prologue
    .line 13300
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    invoke-static {v2, p1}, Landroid/webkit/WebView;->access$15400(Landroid/webkit/WebView;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 13301
    .local v1, selectionRect:Landroid/graphics/Rect;
    sget v2, Lcom/htc/textselection/SelectionAnchor;->ANCHOR_HEIGHT:I

    sget v3, Lcom/htc/textselection/SelectionAnchor;->ANCHOR_OFFSET:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/webkit/WebView$QuickSelectAbs;->ANCHOR_DRAWABLE_HEIGHT:I

    add-int/2addr v2, v3

    shr-int/lit8 v0, v2, 0x1

    .line 13302
    .local v0, offset:I
    const/4 v2, 0x0

    neg-int v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 13313
    return-object v1
.end method

.method private getUIdataFromWebcore()V
    .locals 6

    .prologue
    .line 13335
    iget-object v3, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->setEmpty()V

    .line 13336
    iget-object v3, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebView;->access$6900(Landroid/webkit/WebView;)I

    move-result v4

    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRegion:Landroid/graphics/Region;

    #calls: Landroid/webkit/WebView;->nativeGetTextSelectionRegion(ILandroid/graphics/Region;)V
    invoke-static {v3, v4, v5}, Landroid/webkit/WebView;->access$16200(Landroid/webkit/WebView;ILandroid/graphics/Region;)V

    .line 13339
    iget-object v3, p0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    shr-int/lit8 v1, v3, 0x1

    .line 13340
    .local v1, minXDist:I
    iget-object v3, p0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    shr-int/lit8 v2, v3, 0x1

    .line 13341
    .local v2, minYDist:I
    iget-object v3, p0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v1, :cond_2

    iget-object v3, p0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v2, :cond_2

    const/4 v0, 0x1

    .line 13344
    .local v0, isSameChar:Z
    :goto_0
    iget-object v3, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 13345
    iget-object v3, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRegion:Landroid/graphics/Region;

    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 13346
    iget-object v3, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRegion:Landroid/graphics/Region;

    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    .line 13349
    :cond_0
    iget-object v3, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRegion:Landroid/graphics/Region;

    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 13351
    if-eqz v0, :cond_1

    iget-object v3, p0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 13356
    iget-object v3, p0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 13357
    iget-object v3, p0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 13379
    :cond_1
    return-void

    .line 13341
    .end local v0           #isSameChar:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resumeSelectionImpl()V
    .locals 1

    .prologue
    .line 13427
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mSelectingText:Z
    invoke-static {v0}, Landroid/webkit/WebView;->access$14400(Landroid/webkit/WebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13433
    :goto_0
    return-void

    .line 13430
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v0}, Landroid/webkit/SelectionUnitInfo;->update()V

    .line 13431
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v0}, Landroid/webkit/SelectionUnitInfo;->update()V

    .line 13432
    invoke-direct {p0}, Landroid/webkit/WebView$QuickSelectWV;->resumeSelectionImplMsg()V

    goto :goto_0
.end method

.method private resumeSelectionImplMsg()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 13436
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v4}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v4

    invoke-static {v4}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 13438
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->mSelectingText:Z
    invoke-static {v4, v8}, Landroid/webkit/WebView;->access$14402(Landroid/webkit/WebView;Z)Z

    .line 13439
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    iget-object v4, v4, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    iget-object v5, v5, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    iget-object v6, v6, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    iget-object v7, p0, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    iget-object v7, v7, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/webkit/WebView$QuickSelectWV;->makeSelect(IIII)Z

    .line 13441
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    #calls: Landroid/webkit/WebView;->nativeGetSelectionStart(Landroid/graphics/Rect;)V
    invoke-static {v4, v5}, Landroid/webkit/WebView;->access$15300(Landroid/webkit/WebView;Landroid/graphics/Rect;)V

    .line 13442
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->nativeGetSelectionEnd(Landroid/graphics/Rect;)V

    .line 13444
    invoke-direct {p0}, Landroid/webkit/WebView$QuickSelectWV;->getUIdataFromWebcore()V

    .line 13445
    iput-boolean v8, p0, Landroid/webkit/WebView$QuickSelectAbs;->showAnchor:Z

    .line 13446
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->invalidate()V

    .line 13448
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->tmpRect:Landroid/graphics/Rect;

    #calls: Landroid/webkit/WebView;->calcOurContentVisibleRect(Landroid/graphics/Rect;)V
    invoke-static {v4, v5}, Landroid/webkit/WebView;->access$16300(Landroid/webkit/WebView;Landroid/graphics/Rect;)V

    .line 13449
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->mAnchorTouchListener:Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;

    #getter for: Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->isPriorAnchor:Z
    invoke-static {v4}, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->access$16400(Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    .line 13450
    .local v0, active:Landroid/webkit/SelectionUnitInfo;
    :goto_0
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->tmpRect:Landroid/graphics/Rect;

    iget-object v5, v0, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    invoke-static {v4, v5}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 13451
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v5, v0, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectAbs;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    shr-int/lit8 v6, v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v2

    .line 13452
    .local v2, x:I
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v5, v0, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectAbs;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    shr-int/lit8 v6, v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v3

    .line 13453
    .local v3, y:I
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    const/16 v5, 0x12c

    #calls: Landroid/webkit/WebView;->pinScrollTo(IIZI)Z
    invoke-static {v4, v2, v3, v8, v5}, Landroid/webkit/WebView;->access$16500(Landroid/webkit/WebView;IIZI)Z

    .line 13455
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->mQSEventHandler:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    const v5, 0x13e1dc

    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRect:Landroid/graphics/Rect;

    invoke-static {v4, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 13457
    .local v1, m:Landroid/os/Message;
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->mQSEventHandler:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    const-wide/16 v5, 0x15e

    invoke-virtual {v4, v1, v5, v6}, Landroid/webkit/WebView$QuickSelectWV$EventHub;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 13461
    .end local v1           #m:Landroid/os/Message;
    .end local v2           #x:I
    .end local v3           #y:I
    :goto_1
    return-void

    .line 13449
    .end local v0           #active:Landroid/webkit/SelectionUnitInfo;
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    goto :goto_0

    .line 13459
    .restart local v0       #active:Landroid/webkit/SelectionUnitInfo;
    :cond_1
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/webkit/WebView$QuickSelectWV;->showQuickActions(Landroid/graphics/Rect;I)V

    goto :goto_1
.end method


# virtual methods
.method protected doWordSelection(II)V
    .locals 6
    .parameter "contentX"
    .parameter "contentY"

    .prologue
    const/16 v4, 0x61a9

    .line 13009
    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRegion:Landroid/graphics/Region;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13044
    :cond_0
    :goto_0
    return-void

    .line 13017
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView$QuickSelectWV;->testSelect(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13024
    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->nativeGetSelectionEnd(Landroid/graphics/Rect;)V

    .line 13026
    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRegion:Landroid/graphics/Region;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRegion:Landroid/graphics/Region;

    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Region;->quickContains(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 13030
    :cond_2
    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->magnifierAnchor:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 13031
    iget-boolean v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->ENABLE_MSG:Z

    if-eqz v1, :cond_3

    .line 13032
    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v1}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 13033
    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v1}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget-object v3, p0, Landroid/webkit/WebView$QuickSelectAbs;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    invoke-virtual {v1, v4, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto :goto_0

    .line 13035
    :cond_3
    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget-object v3, p0, Landroid/webkit/WebView$QuickSelectAbs;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/webkit/HTCWebCore;->nativeFindTextBound(IILandroid/webkit/SelectionUnitInfo;Z)I

    move-result v0

    .line 13040
    .local v0, node:I
    if-eqz v0, :cond_0

    .line 13041
    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/webkit/WebView$QuickSelectWV;->doWordSelectionMsg(II)V

    goto :goto_0
.end method

.method protected doWordSelectionMsg(II)V
    .locals 9
    .parameter "contentX"
    .parameter "contentY"

    .prologue
    const v7, 0x13e1d9

    const/4 v8, -0x2

    .line 13060
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    iget-object v5, v5, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    iget-object v6, v6, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 13121
    :goto_0
    return-void

    .line 13069
    :cond_0
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    iget-boolean v4, v4, Landroid/webkit/SelectionUnitInfo;->isOneChar:Z

    if-nez v4, :cond_4

    .line 13070
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v4}, Landroid/webkit/SelectionUnitInfo;->selectLeft()I

    move-result v4

    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v5}, Landroid/webkit/SelectionUnitInfo;->selectRight()I

    move-result v5

    if-le v4, v5, :cond_2

    const/4 v2, 0x1

    .line 13071
    .local v2, isMultiline:Z
    :goto_1
    if-nez v2, :cond_3

    .line 13072
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v4}, Landroid/webkit/SelectionUnitInfo;->selectLeft()I

    move-result v4

    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v5}, Landroid/webkit/SelectionUnitInfo;->selectRight()I

    move-result v5

    invoke-virtual {p0, v4, p2, v5, p2}, Landroid/webkit/WebView$QuickSelectWV;->makeSelect(IIII)Z

    .line 13109
    .end local v2           #isMultiline:Z
    :cond_1
    :goto_2
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    #calls: Landroid/webkit/WebView;->nativeGetSelectionStart(Landroid/graphics/Rect;)V
    invoke-static {v4, v5}, Landroid/webkit/WebView;->access$15300(Landroid/webkit/WebView;Landroid/graphics/Rect;)V

    .line 13110
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->nativeGetSelectionEnd(Landroid/graphics/Rect;)V

    .line 13112
    new-instance v0, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRect:Landroid/graphics/Rect;

    invoke-direct {v0, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 13113
    .local v0, dirty:Landroid/graphics/Rect;
    invoke-direct {p0}, Landroid/webkit/WebView$QuickSelectWV;->getUIdataFromWebcore()V

    .line 13114
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 13115
    invoke-virtual {v0, v8, v8}, Landroid/graphics/Rect;->inset(II)V

    .line 13119
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    invoke-static {v4, v0}, Landroid/webkit/WebView;->access$15400(Landroid/webkit/WebView;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 13120
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/graphics/Rect;->right:I

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/webkit/WebView;->postInvalidate(IIII)V

    goto :goto_0

    .line 13070
    .end local v0           #dirty:Landroid/graphics/Rect;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 13074
    .restart local v2       #isMultiline:Z
    :cond_3
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    iget-object v4, v4, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    iget-object v5, v5, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, p2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 13077
    .local v1, dist:I
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v4}, Landroid/webkit/SelectionUnitInfo;->selectLeft()I

    move-result v4

    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    iget-object v5, v5, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v1

    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v6}, Landroid/webkit/SelectionUnitInfo;->selectRight()I

    move-result v6

    iget-object v7, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    iget-object v7, v7, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v1

    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/webkit/WebView$QuickSelectWV;->makeSelect(IIII)Z

    goto :goto_2

    .line 13082
    .end local v1           #dist:I
    .end local v2           #isMultiline:Z
    :cond_4
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    iget-object v4, v4, Landroid/webkit/SelectionUnitInfo;->sb:Ljava/lang/StringBuffer;

    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    iget v5, v5, Landroid/webkit/SelectionUnitInfo;->startIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/htc/textselection/FetchSuggestionFromIME;->isCJKS(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 13083
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->mQSEventHandler:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    invoke-virtual {v4, v7}, Landroid/webkit/WebView$QuickSelectWV$EventHub;->removeMessages(I)V

    .line 13084
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->tmpForCJKWord:Landroid/webkit/SelectionUnitInfo;

    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v4, v5}, Landroid/webkit/SelectionUnitInfo;->set(Landroid/webkit/SelectionUnitInfo;)V

    .line 13085
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->mQSEventHandler:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    invoke-static {v4, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    .line 13086
    .local v3, m:Landroid/os/Message;
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->tmpForCJKWord:Landroid/webkit/SelectionUnitInfo;

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 13088
    iget-boolean v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->ENABLE_MSG:Z

    if-eqz v4, :cond_5

    .line 13089
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->mQSEventHandler:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    invoke-virtual {v4, v3}, Landroid/webkit/WebView$QuickSelectWV$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 13091
    :cond_5
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->mQSEventHandler:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    const-wide/16 v5, 0x14

    invoke-virtual {v4, v3, v5, v6}, Landroid/webkit/WebView$QuickSelectWV$EventHub;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2
.end method

.method public handleSelectMessage(Landroid/os/Message;)V
    .locals 29
    .parameter "msg"

    .prologue
    .line 13513
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->mQSMode:Z

    move/from16 v24, v0

    if-nez v24, :cond_1

    .line 13728
    :cond_0
    :goto_0
    return-void

    .line 13516
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    sparse-switch v24, :sswitch_data_0

    .line 13725
    invoke-super/range {p0 .. p1}, Landroid/webkit/WebView$QuickSelectAbs;->handleSelectMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 13518
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->centerX()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->centerY()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Landroid/graphics/Rect;->contains(II)Z

    move-result v24

    if-nez v24, :cond_3

    .line 13519
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->centerX()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->centerY()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v24 .. v28}, Landroid/webkit/HTCWebCore;->nativeFindTextBound(IILandroid/webkit/SelectionUnitInfo;Z)I

    .line 13525
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->centerX()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->centerY()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Landroid/graphics/Rect;->contains(II)Z

    move-result v24

    if-nez v24, :cond_4

    .line 13526
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->centerX()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->centerY()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v24 .. v28}, Landroid/webkit/HTCWebCore;->nativeFindTextBound(IILandroid/webkit/SelectionUnitInfo;Z)I

    goto/16 :goto_0

    .line 13521
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Landroid/webkit/SelectionUnitInfo;->isOneChar:Z

    move/from16 v24, v0

    if-nez v24, :cond_2

    .line 13522
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/webkit/SelectionUnitInfo;->trimToHead()V

    goto :goto_1

    .line 13528
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Landroid/webkit/SelectionUnitInfo;->isOneChar:Z

    move/from16 v24, v0

    if-nez v24, :cond_0

    .line 13529
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/webkit/SelectionUnitInfo;->trimToTail()V

    goto/16 :goto_0

    .line 13534
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    #getter for: Landroid/webkit/WebView;->mSelectingText:Z
    invoke-static/range {v24 .. v24}, Landroid/webkit/WebView;->access$14400(Landroid/webkit/WebView;)Z

    move-result v24

    if-nez v24, :cond_0

    .line 13537
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/webkit/SelectionUnitInfo;->update()V

    .line 13538
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/webkit/SelectionUnitInfo;->update()V

    .line 13539
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->mQSEventHandler:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    move-object/from16 v24, v0

    const v25, 0x13e240

    invoke-static/range {v24 .. v25}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 13544
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v24 .. v28}, Landroid/webkit/HTCWebCore;->nativeFindTextBound(IILandroid/webkit/SelectionUnitInfo;Z)I

    move-result v16

    .line 13549
    .local v16, node:I
    if-eqz v16, :cond_0

    .line 13551
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->mQSEventHandler:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    move-object/from16 v24, v0

    const v25, 0x13e23e

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v27, v0

    invoke-static/range {v24 .. v27}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 13558
    .end local v16           #node:I
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->mQSEventHandler:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    move-object/from16 v24, v0

    const v25, 0x13e23d

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v27, v0

    invoke-static/range {v24 .. v27}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 13562
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->tmp:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/webkit/SelectionUnitInfo;->reset()V

    .line 13563
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->centerX()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->centerY()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->tmp:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v24 .. v28}, Landroid/webkit/HTCWebCore;->nativeFindTextBound(IILandroid/webkit/SelectionUnitInfo;Z)I

    .line 13565
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->tmp:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/webkit/SelectionUnitInfo;->node:I

    move/from16 v24, v0

    if-eqz v24, :cond_7

    .line 13566
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->tmp:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/webkit/SelectionUnitInfo;->set(Landroid/webkit/SelectionUnitInfo;)V

    .line 13571
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->tmp:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/webkit/SelectionUnitInfo;->reset()V

    .line 13572
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->centerX()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->centerY()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->tmp:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v24 .. v28}, Landroid/webkit/HTCWebCore;->nativeFindTextBound(IILandroid/webkit/SelectionUnitInfo;Z)I

    .line 13574
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->tmp:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/webkit/SelectionUnitInfo;->node:I

    move/from16 v24, v0

    if-eqz v24, :cond_8

    .line 13575
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->tmp:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/webkit/SelectionUnitInfo;->set(Landroid/webkit/SelectionUnitInfo;)V

    .line 13580
    :cond_6
    :goto_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_9

    const/16 v18, 0x1

    .line 13581
    .local v18, priorAnchor:Z
    :goto_4
    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v24, v0

    move-object/from16 v25, v24

    :goto_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebView$QuickSelectWV;->doAutoExtend(Landroid/webkit/SelectionUnitInfo;J)Z

    move-result v24

    if-eqz v24, :cond_e

    .line 13582
    const/4 v8, -0x1

    .local v8, cur:I
    const/16 v22, -0x1

    .line 13583
    .local v22, target:I
    if-eqz v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    .line 13584
    .local v20, selRect:Landroid/graphics/Rect;
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->tmp:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/webkit/SelectionUnitInfo;->reset()V

    .line 13585
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    move-object/from16 v24, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->centerX()I

    move-result v25

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->centerY()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->tmp:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v24 .. v28}, Landroid/webkit/HTCWebCore;->nativeFindTextBound(IILandroid/webkit/SelectionUnitInfo;Z)I

    .line 13587
    const/4 v5, 0x0

    .line 13588
    .local v5, active:Landroid/webkit/SelectionUnitInfo;
    const/4 v7, 0x0

    .line 13589
    .local v7, animateExt:Z
    if-nez v18, :cond_c

    .line 13590
    move-object/from16 v0, v20

    iget v8, v0, Landroid/graphics/Rect;->right:I

    .line 13591
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->tmp:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    .line 13592
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    .line 13601
    :goto_7
    move/from16 v0, v22

    if-eq v8, v0, :cond_d

    .line 13602
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->tmp:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/webkit/SelectionUnitInfo;->set(Landroid/webkit/SelectionUnitInfo;)V

    .line 13603
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->mQSEventHandler:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    move-object/from16 v24, v0

    const v25, 0x13e1da

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v22

    invoke-static {v0, v1, v8, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 13567
    .end local v5           #active:Landroid/webkit/SelectionUnitInfo;
    .end local v7           #animateExt:Z
    .end local v8           #cur:I
    .end local v18           #priorAnchor:Z
    .end local v20           #selRect:Landroid/graphics/Rect;
    .end local v22           #target:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Landroid/webkit/SelectionUnitInfo;->isOneChar:Z

    move/from16 v24, v0

    if-nez v24, :cond_5

    .line 13568
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/webkit/SelectionUnitInfo;->trimToHead()V

    goto/16 :goto_2

    .line 13576
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Landroid/webkit/SelectionUnitInfo;->isOneChar:Z

    move/from16 v24, v0

    if-nez v24, :cond_6

    .line 13577
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/webkit/SelectionUnitInfo;->trimToTail()V

    goto/16 :goto_3

    .line 13580
    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 13581
    .restart local v18       #priorAnchor:Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v24, v0

    move-object/from16 v25, v24

    goto/16 :goto_5

    .line 13583
    .restart local v8       #cur:I
    .restart local v22       #target:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    goto/16 :goto_6

    .line 13595
    .restart local v5       #active:Landroid/webkit/SelectionUnitInfo;
    .restart local v7       #animateExt:Z
    .restart local v20       #selRect:Landroid/graphics/Rect;
    :cond_c
    move-object/from16 v0, v20

    iget v8, v0, Landroid/graphics/Rect;->left:I

    .line 13596
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->tmp:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    .line 13597
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    goto/16 :goto_7

    .line 13606
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->mQSEventHandler:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    move-object/from16 v24, v0

    const v25, 0x13e1dc

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-static/range {v24 .. v26}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 13610
    .end local v5           #active:Landroid/webkit/SelectionUnitInfo;
    .end local v7           #animateExt:Z
    .end local v8           #cur:I
    .end local v20           #selRect:Landroid/graphics/Rect;
    .end local v22           #target:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->mQSEventHandler:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    move-object/from16 v24, v0

    const v25, 0x13e1dc

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-static/range {v24 .. v26}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 13617
    .end local v18           #priorAnchor:Z
    :sswitch_5
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView$QuickSelectWV;->resumeSelectionImplMsg()V

    goto/16 :goto_0

    .line 13620
    :sswitch_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView$QuickSelectWV;->doWordSelectionMsg(II)V

    goto/16 :goto_0

    .line 13623
    :sswitch_7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView$QuickSelectWV;->afterWordSelect(II)V

    goto/16 :goto_0

    .line 13627
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    move-object/from16 v24, v0

    sget-object v24, Landroid/webkit/HTCWebCore;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/htc/textselection/FetchSuggestionFromIME;->setContext(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 13639
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    move-object/from16 v24, v0

    sget-object v11, Landroid/webkit/HTCWebCore;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    .line 13640
    .local v11, detector:Lcom/htc/textselection/FetchSuggestionFromIME;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static/range {v24 .. v24}, Landroid/webkit/WebView;->access$16600(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lcom/htc/textselection/FetchSuggestionFromIME;->setContext(Landroid/content/Context;)V

    .line 13641
    invoke-virtual {v11}, Lcom/htc/textselection/FetchSuggestionFromIME;->isEnable()Z

    move-result v24

    if-eqz v24, :cond_0

    .line 13647
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/webkit/SelectionUnitInfo;

    .line 13648
    .local v23, targetInfo:Landroid/webkit/SelectionUnitInfo;
    move-object/from16 v0, v23

    iget v0, v0, Landroid/webkit/SelectionUnitInfo;->node:I

    move/from16 v17, v0

    .line 13649
    .local v17, pnode:I
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/webkit/SelectionUnitInfo;->sb:Ljava/lang/StringBuffer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    iget v0, v0, Landroid/webkit/SelectionUnitInfo;->startIndex:I

    move/from16 v25, v0

    const-string v26, "1"

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v11, v0, v1, v2}, Lcom/htc/textselection/FetchSuggestionFromIME;->matchWord(Ljava/lang/String;ILjava/lang/String;)[I

    move-result-object v19

    .line 13655
    .local v19, ret:[I
    const/16 v24, 0x0

    aget v24, v19, v24

    const/16 v25, 0x1

    aget v25, v19, v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    .line 13658
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 13659
    .local v10, cursor2:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget v25, v19, v25

    add-int/lit8 v25, v25, -0x1

    move-object/from16 v0, v24

    move/from16 v1, v17

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v10}, Landroid/webkit/HTCWebCore;->nativeGetCharRect(IILandroid/graphics/Rect;)Z

    .line 13660
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 13661
    .local v9, cursor1:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget v25, v19, v25

    move-object/from16 v0, v24

    move/from16 v1, v17

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v9}, Landroid/webkit/HTCWebCore;->nativeGetCharRect(IILandroid/graphics/Rect;)Z

    .line 13663
    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v24

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v25

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v26

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/WebView$QuickSelectWV;->makeSelect(IIII)Z

    .line 13665
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    #calls: Landroid/webkit/WebView;->nativeGetSelectionStart(Landroid/graphics/Rect;)V
    invoke-static/range {v24 .. v25}, Landroid/webkit/WebView;->access$15300(Landroid/webkit/WebView;Landroid/graphics/Rect;)V

    .line 13666
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/webkit/WebView;->nativeGetSelectionEnd(Landroid/graphics/Rect;)V

    .line 13668
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView$QuickSelectWV;->getUIdataFromWebcore()V

    .line 13669
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    #calls: Landroid/webkit/WebView;->viewInvalidate(IIII)V
    invoke-static/range {v24 .. v28}, Landroid/webkit/WebView;->access$8200(Landroid/webkit/WebView;IIII)V

    goto/16 :goto_0

    .line 13675
    .end local v9           #cursor1:Landroid/graphics/Rect;
    .end local v10           #cursor2:Landroid/graphics/Rect;
    .end local v11           #detector:Lcom/htc/textselection/FetchSuggestionFromIME;
    .end local v17           #pnode:I
    .end local v19           #ret:[I
    .end local v23           #targetInfo:Landroid/webkit/SelectionUnitInfo;
    :sswitch_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    .line 13676
    .local v21, src:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v22, v0

    .line 13677
    .restart local v22       #target:I
    move/from16 v0, v22

    move/from16 v1, v21

    if-le v0, v1, :cond_10

    const/4 v13, 0x1

    .line 13679
    .local v13, extendToRight:Z
    :goto_8
    if-eqz v13, :cond_11

    sub-int v24, v22, v21

    :goto_9
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const v25, 0x3ea8f5c3

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v14, v0

    .line 13680
    .local v14, inc:I
    const/16 v24, 0x2

    move/from16 v0, v24

    if-ge v14, v0, :cond_f

    .line 13681
    const/4 v14, 0x2

    .line 13683
    :cond_f
    if-eqz v13, :cond_12

    add-int v24, v21, v14

    move/from16 v0, v24

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 13685
    :goto_a
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 13686
    .local v12, extend:Landroid/graphics/Rect;
    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_13

    .line 13687
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->centerY()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->centerY()I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/WebView$QuickSelectWV;->makeSelect(IIII)Z

    .line 13688
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    #calls: Landroid/webkit/WebView;->nativeGetSelectionStart(Landroid/graphics/Rect;)V
    invoke-static/range {v24 .. v25}, Landroid/webkit/WebView;->access$15300(Landroid/webkit/WebView;Landroid/graphics/Rect;)V

    .line 13689
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/webkit/WebView;->nativeGetSelectionEnd(Landroid/graphics/Rect;)V

    .line 13690
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView$QuickSelectWV;->getUIdataFromWebcore()V

    .line 13691
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 13693
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView$QuickSelectWV;->showQuickActions(Landroid/graphics/Rect;I)V

    .line 13711
    :goto_b
    const/16 v24, -0x2

    const/16 v25, -0x2

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 13712
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    iget v0, v12, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    iget v0, v12, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    #calls: Landroid/webkit/WebView;->viewInvalidate(IIII)V
    invoke-static/range {v24 .. v28}, Landroid/webkit/WebView;->access$8200(Landroid/webkit/WebView;IIII)V

    goto/16 :goto_0

    .line 13677
    .end local v12           #extend:Landroid/graphics/Rect;
    .end local v13           #extendToRight:Z
    .end local v14           #inc:I
    :cond_10
    const/4 v13, 0x0

    goto/16 :goto_8

    .line 13679
    .restart local v13       #extendToRight:Z
    :cond_11
    sub-int v24, v21, v22

    goto/16 :goto_9

    .line 13683
    .restart local v14       #inc:I
    :cond_12
    sub-int v24, v21, v14

    move/from16 v0, v24

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v21

    goto/16 :goto_a

    .line 13695
    .restart local v12       #extend:Landroid/graphics/Rect;
    :cond_13
    invoke-static/range {p1 .. p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v15

    .line 13696
    .local v15, nextExtend:Landroid/os/Message;
    move/from16 v0, v21

    iput v0, v15, Landroid/os/Message;->arg1:I

    .line 13698
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->mQSEventHandler:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    move-object/from16 v24, v0

    const-wide/16 v25, 0x19

    move-object/from16 v0, v24

    move-wide/from16 v1, v25

    invoke-virtual {v0, v15, v1, v2}, Landroid/webkit/WebView$QuickSelectWV$EventHub;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 13701
    if-eqz v13, :cond_14

    .line 13702
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move/from16 v0, v21

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 13703
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 13708
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->tmpRectF:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 13709
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectPath:Landroid/graphics/Path;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->tmpRectF:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    sget-object v26, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v24 .. v26}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto/16 :goto_b

    .line 13705
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move/from16 v0, v21

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 13706
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_c

    .line 13717
    .end local v12           #extend:Landroid/graphics/Rect;
    .end local v13           #extendToRight:Z
    .end local v14           #inc:I
    .end local v15           #nextExtend:Landroid/os/Message;
    .end local v21           #src:I
    .end local v22           #target:I
    :sswitch_b
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView$QuickSelectWV;->resumeSelectionImpl()V

    goto/16 :goto_0

    .line 13720
    :sswitch_c
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Rect;

    .line 13721
    .local v6, anchor:Landroid/graphics/Rect;
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v6, v1}, Landroid/webkit/WebView$QuickSelectWV;->showQuickActions(Landroid/graphics/Rect;I)V

    goto/16 :goto_0

    .line 13516
    :sswitch_data_0
    .sparse-switch
        0x61a9 -> :sswitch_2
        0x13e1d8 -> :sswitch_8
        0x13e1d9 -> :sswitch_9
        0x13e1da -> :sswitch_a
        0x13e1db -> :sswitch_b
        0x13e1dc -> :sswitch_c
        0x13e23d -> :sswitch_7
        0x13e23e -> :sswitch_6
        0x13e240 -> :sswitch_5
        0x13e9a8 -> :sswitch_3
        0x13e9a9 -> :sswitch_4
        0x13e9ab -> :sswitch_1
        0x13e9ad -> :sswitch_0
    .end sparse-switch
.end method

.method public hideQuickActions(Z)V
    .locals 2
    .parameter "isFastHide"

    .prologue
    .line 13291
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    invoke-virtual {v0}, Landroid/webkit/QuickActionsHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13293
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectWV;->showQuickActionDelay:Landroid/webkit/WebView$QuickSelectWV$ShowQuickActionDelay;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13294
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    invoke-virtual {v0, p1}, Landroid/webkit/QuickActionsHelper;->hideQuickAction(Z)V

    .line 13296
    :cond_0
    return-void
.end method

.method public isSelectMsg(I)Z
    .locals 1
    .parameter "what"

    .prologue
    .line 13507
    iget-boolean v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->ENABLE_MSG:Z

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/webkit/WebView$QuickSelectAbs;->isSelectMsg(I)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x13e9a8

    if-lt p1, v0, :cond_1

    const v0, 0x13ea0b

    if-gt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected myInit()V
    .locals 2

    .prologue
    .line 12997
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getWebSelectionType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/webkit/WebView$QuickSelectWV;->enableQuickAction:Z

    .line 13000
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectWV;->mAnchorTouchListener:Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;

    invoke-virtual {v0, v1}, Lcom/htc/textselection/SelectionAnchor;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 13001
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectWV;->mAnchorTouchListener:Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;

    invoke-virtual {v0, v1}, Lcom/htc/textselection/SelectionAnchor;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 13002
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    if-nez v0, :cond_0

    .line 13003
    new-instance v0, Landroid/webkit/QuickActionsHelper;

    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/webkit/WebView;->access$15200(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/QuickActionsHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    .line 13004
    :cond_0
    const/16 v0, 0x46

    invoke-virtual {p0, v0}, Landroid/webkit/WebView$QuickSelectWV;->setQuickSelectionButtonFlag(I)V

    .line 13005
    return-void

    .line 12997
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(IILandroid/view/MotionEvent;)Z
    .locals 8
    .parameter "contentX"
    .parameter "contentY"
    .parameter "ev"

    .prologue
    const/4 v7, 0x0

    const/high16 v5, 0x3f00

    const/4 v6, 0x1

    .line 13125
    const/4 v1, 0x1

    .line 13126
    .local v1, ret:Z
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/webkit/WebView$QuickSelectWV;->spacialDeNoise(FF)Landroid/graphics/PointF;

    move-result-object v0

    .line 13131
    .local v0, p:Landroid/graphics/PointF;
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 13241
    :goto_0
    return v1

    .line 13133
    :pswitch_0
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->mQSMethod:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v2}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v2, v3, :cond_0

    .line 13134
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->mQSMethod:Landroid/webkit/WebViewSelectionMethod;

    sget-object v3, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->MOVABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual {v2, v3}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    .line 13136
    iput-boolean v6, p0, Landroid/webkit/WebView$QuickSelectAbs;->showMagnifier:Z

    .line 13138
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView$QuickSelectWV;->doWordSelection(II)V

    .line 13140
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    new-instance v3, Landroid/webkit/WebView$QuickSelectWV$1;

    invoke-direct {v3, p0, v0}, Landroid/webkit/WebView$QuickSelectWV$1;-><init>(Landroid/webkit/WebView$QuickSelectWV;Landroid/graphics/PointF;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/webkit/WebView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13151
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mAutoScrollerWrapper:Landroid/webkit/WebView$AutoScrollerWrapper;

    iget-object v3, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView$AutoScrollerWrapper;->findScrollableView(Landroid/webkit/WebView;)V

    goto :goto_0

    .line 13153
    :cond_0
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->mQSMethod:Landroid/webkit/WebViewSelectionMethod;

    sget-object v3, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual {v2, v3}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    .line 13154
    const/4 v1, 0x0

    .line 13156
    invoke-virtual {p0, v6}, Landroid/webkit/WebView$QuickSelectWV;->hideQuickActions(Z)V

    goto :goto_0

    .line 13161
    :pswitch_1
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->mQSMethod:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v2}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->MOVABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v2, v3, :cond_2

    .line 13163
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v5

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v4}, Landroid/webkit/WebView;->access$15600(Landroid/webkit/WebView;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result p1

    .line 13164
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget v3, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, v5

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollY:I
    invoke-static {v4}, Landroid/webkit/WebView;->access$15700(Landroid/webkit/WebView;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result p2

    .line 13165
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView$QuickSelectWV;->doWordSelection(II)V

    .line 13168
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mAutoScrollerWrapper:Landroid/webkit/WebView$AutoScrollerWrapper;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView$AutoScrollerWrapper;->doAutoSCroll(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 13169
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    invoke-virtual {v2}, Landroid/webkit/MagnifyView;->dismiss()V

    goto :goto_0

    .line 13171
    :cond_1
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->magnifierAnchor:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v4}, Landroid/webkit/WebView;->access$15800(Landroid/webkit/WebView;)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    add-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3, v7}, Landroid/webkit/WebView$QuickSelectWV;->showMagnify(Landroid/graphics/Rect;II)V

    goto/16 :goto_0

    .line 13174
    :cond_2
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->mQSMethod:Landroid/webkit/WebViewSelectionMethod;

    sget-object v3, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual {v2, v3}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    .line 13175
    const/4 v1, 0x0

    .line 13177
    invoke-virtual {p0, v6}, Landroid/webkit/WebView$QuickSelectWV;->hideQuickActions(Z)V

    goto/16 :goto_0

    .line 13183
    :pswitch_2
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->mQSMethod:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v2}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v2, v3, :cond_3

    .line 13185
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->selectionDone()V

    .line 13186
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_0

    .line 13193
    :cond_3
    :pswitch_3
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->mQSMethod:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v2}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->MOVABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v2, v3, :cond_6

    .line 13194
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    iget v2, v2, Landroid/webkit/SelectionUnitInfo;->node:I

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->mQuickActionModeCallback:Landroid/webkit/WebView$WrapActions;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebView$QuickSelectWV;->mQuickActionModeCallback:Landroid/webkit/WebView$WrapActions;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v2

    if-nez v2, :cond_5

    .line 13198
    :cond_4
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->selectionDone()V

    .line 13199
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_0

    .line 13204
    :cond_5
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget-object v3, p0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/webkit/WebView$QuickSelectWV;->makeSelect(IIII)Z

    .line 13205
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    iget-object v3, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v2, v3}, Landroid/webkit/SelectionUnitInfo;->set(Landroid/webkit/SelectionUnitInfo;)V

    .line 13212
    :cond_6
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mAutoScrollerWrapper:Landroid/webkit/WebView$AutoScrollerWrapper;

    invoke-virtual {v2}, Landroid/webkit/WebView$AutoScrollerWrapper;->stopScroll()V

    .line 13215
    iput-boolean v7, p0, Landroid/webkit/WebView$QuickSelectAbs;->showMagnifier:Z

    .line 13216
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    invoke-virtual {v2}, Landroid/webkit/MagnifyView;->dismiss()V

    .line 13219
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->mQSEventHandler:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    const v3, 0x13e1d9

    invoke-virtual {v2, v3}, Landroid/webkit/WebView$QuickSelectWV$EventHub;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 13220
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->mQSEventHandler:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    const v3, 0x13e1d8

    const-wide/16 v4, 0x14

    invoke-virtual {v2, v3, v4, v5}, Landroid/webkit/WebView$QuickSelectWV$EventHub;->sendEmptyMessageDelayed(IJ)Z

    .line 13226
    :goto_1
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->mQSMethod:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v2}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-eq v2, v3, :cond_7

    .line 13228
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v7}, Landroid/webkit/WebView$QuickSelectWV;->showQuickActions(Landroid/graphics/Rect;I)V

    .line 13229
    :cond_7
    iput-boolean v6, p0, Landroid/webkit/WebView$QuickSelectAbs;->showAnchor:Z

    .line 13231
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->mQSMethod:Landroid/webkit/WebViewSelectionMethod;

    sget-object v3, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual {v2, v3}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    .line 13236
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    const-wide/16 v3, 0x32

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView;->postInvalidateDelayed(J)V

    goto/16 :goto_0

    .line 13222
    :cond_8
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    sget-object v2, Landroid/webkit/HTCWebCore;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/textselection/FetchSuggestionFromIME;->setContext(Landroid/content/Context;)V

    goto :goto_1

    .line 13131
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method pauseSelection()V
    .locals 5

    .prologue
    const/4 v1, 0x4

    const/4 v4, 0x0

    .line 13383
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mSelectingText:Z
    invoke-static {v0}, Landroid/webkit/WebView;->access$14400(Landroid/webkit/WebView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13412
    :goto_0
    return-void

    .line 13386
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView$QuickSelectWV;->hideQuickActions(Z)V

    .line 13387
    iput-boolean v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->showAnchor:Z

    .line 13388
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v0, v1}, Lcom/htc/textselection/SelectionAnchor;->setVisibility(I)V

    .line 13389
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v0, v1}, Lcom/htc/textselection/SelectionAnchor;->setVisibility(I)V

    .line 13391
    iget-boolean v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->ENABLE_MSG:Z

    if-eqz v0, :cond_2

    .line 13392
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v0}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v0

    const v1, 0x13e9ad

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    .line 13409
    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->mSelectingText:Z
    invoke-static {v0, v4}, Landroid/webkit/WebView;->access$14402(Landroid/webkit/WebView;Z)Z

    .line 13411
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v0}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    goto :goto_0

    .line 13394
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    iget-object v0, v0, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_4

    .line 13395
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iget-object v3, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/HTCWebCore;->nativeFindTextBound(IILandroid/webkit/SelectionUnitInfo;Z)I

    .line 13401
    :cond_3
    :goto_2
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    iget-object v0, v0, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_5

    .line 13402
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iget-object v3, p0, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/HTCWebCore;->nativeFindTextBound(IILandroid/webkit/SelectionUnitInfo;Z)I

    goto :goto_1

    .line 13397
    :cond_4
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    iget-boolean v0, v0, Landroid/webkit/SelectionUnitInfo;->isOneChar:Z

    if-nez v0, :cond_3

    .line 13398
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v0}, Landroid/webkit/SelectionUnitInfo;->trimToHead()V

    goto :goto_2

    .line 13404
    :cond_5
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    iget-boolean v0, v0, Landroid/webkit/SelectionUnitInfo;->isOneChar:Z

    if-nez v0, :cond_1

    .line 13405
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v0}, Landroid/webkit/SelectionUnitInfo;->trimToTail()V

    goto :goto_1
.end method

.method resumeSelection()V
    .locals 5

    .prologue
    const-wide/16 v3, 0xc8

    const v2, 0x13e9ab

    const v1, 0x13e1db

    .line 13415
    iget-boolean v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->ENABLE_MSG:Z

    if-eqz v0, :cond_0

    .line 13416
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v0}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 13417
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v0}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/webkit/WebViewCore;->sendMessageDelayed(ILjava/lang/Object;J)V

    .line 13424
    :goto_0
    return-void

    .line 13419
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->mQSEventHandler:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$QuickSelectWV$EventHub;->removeMessages(I)V

    .line 13421
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->mQSEventHandler:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    invoke-virtual {v0, v1, v3, v4}, Landroid/webkit/WebView$QuickSelectWV$EventHub;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public selectionDone()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 12956
    iget-boolean v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mQSMode:Z

    if-eqz v0, :cond_1

    .line 12957
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->mQSEventHandler:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$QuickSelectWV$EventHub;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 12958
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 12959
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v0}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 12964
    iput-boolean v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->mQSMode:Z

    .line 12965
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->mSelectingText:Z
    invoke-static {v0, v2}, Landroid/webkit/WebView;->access$14402(Landroid/webkit/WebView;Z)Z

    .line 12966
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mQSMethod:Landroid/webkit/WebViewSelectionMethod;

    sget-object v1, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    .line 12967
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 12968
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 12969
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 12970
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 12971
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 12972
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->nativeResetSelection()V

    .line 12975
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->mQuickActionModeCallback:Landroid/webkit/WebView$WrapActions;

    if-eqz v0, :cond_0

    .line 12976
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->mQuickActionModeCallback:Landroid/webkit/WebView$WrapActions;

    invoke-interface {v0}, Landroid/webkit/WebView$WrapActions;->finish()V

    .line 12978
    :cond_0
    const/16 v0, 0x46

    invoke-virtual {p0, v0}, Landroid/webkit/WebView$QuickSelectWV;->setQuickSelectionButtonFlag(I)V

    .line 12980
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->needVibrate:Z
    invoke-static {v0, v2}, Landroid/webkit/WebView;->access$14802(Landroid/webkit/WebView;Z)Z

    .line 12983
    iput-boolean v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->showAnchor:Z

    .line 12984
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v0}, Lcom/htc/textselection/SelectionAnchor;->dismiss()V

    .line 12985
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v0}, Lcom/htc/textselection/SelectionAnchor;->dismiss()V

    .line 12988
    iput-boolean v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->showMagnifier:Z

    .line 12989
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    invoke-virtual {v0}, Landroid/webkit/MagnifyView;->dismiss()V

    .line 12992
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    invoke-virtual {v0, v2}, Landroid/webkit/QuickActionsHelper;->hideQuickAction(Z)V

    .line 12993
    return-void
.end method

.method public setQuickSelectionButtonFlag(I)V
    .locals 3
    .parameter "flag"

    .prologue
    const/4 v1, 0x1

    .line 13246
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->basicActions:Landroid/webkit/BasicActions;

    if-nez v0, :cond_0

    .line 13247
    new-instance v0, Landroid/webkit/BasicActions;

    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-direct {v0, v2}, Landroid/webkit/BasicActions;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->basicActions:Landroid/webkit/BasicActions;

    .line 13250
    :cond_0
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->basicActions:Landroid/webkit/BasicActions;

    if-ne p1, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, v2, Landroid/webkit/BasicActions;->copyButtonOnly:Z

    .line 13252
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->isEditable()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->selectionUIType:I
    invoke-static {v0}, Landroid/webkit/WebView;->access$15900(Landroid/webkit/WebView;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 13253
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->basicActions:Landroid/webkit/BasicActions;

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->mQuickActionModeCallback:Landroid/webkit/WebView$WrapActions;

    .line 13256
    :goto_1
    return-void

    .line 13250
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 13255
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->mQuickActionModeCallback:Landroid/webkit/WebView$WrapActions;

    goto :goto_1
.end method

.method public setUpSelect()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 12895
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->mSelectingText:Z
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$14402(Landroid/webkit/WebView;Z)Z

    .line 12896
    iput-boolean v3, p0, Landroid/webkit/WebView$QuickSelectAbs;->mQSMode:Z

    .line 12897
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v2}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 12902
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->nativeHideCursor()V
    invoke-static {v2}, Landroid/webkit/WebView;->access$14500(Landroid/webkit/WebView;)V

    .line 12904
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v2}, Landroid/webkit/SelectionUnitInfo;->reset()V

    .line 12905
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v2}, Landroid/webkit/SelectionUnitInfo;->reset()V

    .line 12906
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->tmp:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v2}, Landroid/webkit/SelectionUnitInfo;->reset()V

    .line 12907
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->tmpForCJKWord:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v2}, Landroid/webkit/SelectionUnitInfo;->reset()V

    .line 12909
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget v3, v3, Landroid/webkit/WebView;->mLastTouchX:I

    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v4}, Landroid/webkit/WebView;->access$14600(Landroid/webkit/WebView;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 12910
    .local v0, cx:I
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget v3, v3, Landroid/webkit/WebView;->mLastTouchY:I

    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollY:I
    invoke-static {v4}, Landroid/webkit/WebView;->access$14700(Landroid/webkit/WebView;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 12911
    .local v1, cy:I
    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView$QuickSelectWV;->doWordSelection(II)V

    .line 12913
    iget-boolean v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->ENABLE_MSG:Z

    if-eqz v2, :cond_0

    .line 12914
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v2}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v2

    const v3, 0x13e9a8

    invoke-virtual {v2, v3, v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 12918
    :goto_0
    return-void

    .line 12916
    :cond_0
    invoke-direct {p0, v0, v1}, Landroid/webkit/WebView$QuickSelectWV;->afterWordSelect(II)V

    goto :goto_0
.end method

.method public showQuickActions(Landroid/graphics/Rect;I)V
    .locals 4
    .parameter "selectionRegion"
    .parameter "delay"

    .prologue
    .line 13271
    if-nez p1, :cond_0

    .line 13272
    iget-object p1, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRect:Landroid/graphics/Rect;

    .line 13274
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    iget-boolean v1, p0, Landroid/webkit/WebView$QuickSelectWV;->enableQuickAction:Z

    invoke-virtual {v0, v1}, Landroid/webkit/QuickActionsHelper;->setEnableQuickAction(Z)V

    .line 13275
    iget-boolean v0, p0, Landroid/webkit/WebView$QuickSelectWV;->enableQuickAction:Z

    if-eqz v0, :cond_1

    .line 13276
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectWV;->basicActions:Landroid/webkit/BasicActions;

    invoke-virtual {v0, v1}, Landroid/webkit/QuickActionsHelper;->setQuickActions(Lcom/htc/textselection/QuickActions;)V

    .line 13279
    :cond_1
    if-gtz p2, :cond_2

    .line 13280
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    invoke-direct {p0, p1}, Landroid/webkit/WebView$QuickSelectWV;->getRegionForQuickAction(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, v2}, Landroid/webkit/QuickActionsHelper;->showQuickAction(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 13287
    :goto_0
    return-void

    .line 13283
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectWV;->showQuickActionDelay:Landroid/webkit/WebView$QuickSelectWV$ShowQuickActionDelay;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13284
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->showQuickActionDelay:Landroid/webkit/WebView$QuickSelectWV$ShowQuickActionDelay;

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV$ShowQuickActionDelay;->selectionRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 13285
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectWV;->showQuickActionDelay:Landroid/webkit/WebView$QuickSelectWV$ShowQuickActionDelay;

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
