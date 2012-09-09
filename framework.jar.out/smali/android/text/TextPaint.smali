.class public Landroid/text/TextPaint;
.super Landroid/graphics/Paint;
.source "TextPaint.java"


# instance fields
.field public baselineShift:I

.field public bgColor:I

.field public density:F

.field public drawableState:[I

.field public linkColor:I

.field public underlineColor:I

.field public underlineThickness:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    .line 32
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/text/TextPaint;->density:F

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/TextPaint;->underlineColor:I

    .line 46
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "flags"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/graphics/Paint;-><init>(I)V

    .line 32
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/text/TextPaint;->density:F

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/TextPaint;->underlineColor:I

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 32
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/text/TextPaint;->density:F

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/TextPaint;->underlineColor:I

    .line 54
    return-void
.end method


# virtual methods
.method public getTextRunCursor(Ljava/lang/CharSequence;IIIII)I
    .locals 2
    .parameter "text"
    .parameter "contextStart"
    .parameter "contextEnd"
    .parameter "flags"
    .parameter "offset"
    .parameter "cursorOpt"

    .prologue
    .line 91
    invoke-super/range {p0 .. p6}, Landroid/graphics/Paint;->getTextRunCursor(Ljava/lang/CharSequence;IIIII)I

    move-result v0

    .line 93
    .local v0, result:I
    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_0

    instance-of v1, p1, Landroid/text/SpannedString;

    if-nez v1, :cond_0

    instance-of v1, p1, Landroid/text/SpannableString;

    if-nez v1, :cond_0

    instance-of v1, p1, Landroid/text/GraphicsOperations;

    if-eqz v1, :cond_1

    .line 96
    .end local v0           #result:I
    :cond_0
    :goto_0
    return v0

    .restart local v0       #result:I
    :cond_1
    add-int/2addr v0, p2

    goto :goto_0
.end method

.method public set(Landroid/text/TextPaint;)V
    .locals 1
    .parameter "tp"

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 63
    iget v0, p1, Landroid/text/TextPaint;->bgColor:I

    iput v0, p0, Landroid/text/TextPaint;->bgColor:I

    .line 64
    iget v0, p1, Landroid/text/TextPaint;->baselineShift:I

    iput v0, p0, Landroid/text/TextPaint;->baselineShift:I

    .line 65
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    iput v0, p0, Landroid/text/TextPaint;->linkColor:I

    .line 66
    iget-object v0, p1, Landroid/text/TextPaint;->drawableState:[I

    iput-object v0, p0, Landroid/text/TextPaint;->drawableState:[I

    .line 67
    iget v0, p1, Landroid/text/TextPaint;->density:F

    iput v0, p0, Landroid/text/TextPaint;->density:F

    .line 68
    iget v0, p1, Landroid/text/TextPaint;->underlineColor:I

    iput v0, p0, Landroid/text/TextPaint;->underlineColor:I

    .line 69
    iget v0, p1, Landroid/text/TextPaint;->underlineThickness:F

    iput v0, p0, Landroid/text/TextPaint;->underlineThickness:F

    .line 70
    return-void
.end method

.method public setUnderlineText(IF)V
    .locals 0
    .parameter "color"
    .parameter "thickness"

    .prologue
    .line 79
    iput p1, p0, Landroid/text/TextPaint;->underlineColor:I

    .line 80
    iput p2, p0, Landroid/text/TextPaint;->underlineThickness:F

    .line 81
    return-void
.end method
