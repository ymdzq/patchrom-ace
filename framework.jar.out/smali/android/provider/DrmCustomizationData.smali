.class Landroid/provider/DrmCustomizationData;
.super Ljava/lang/Object;
.source "DrmHelper.java"


# static fields
.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "DrmCustomization"


# instance fields
.field protected mBundleData:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7574
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7575
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/provider/DrmCustomizationData;->setData(Landroid/os/Bundle;)V

    .line 7576
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .parameter "customizationData"

    .prologue
    .line 7578
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7579
    invoke-virtual {p0, p1}, Landroid/provider/DrmCustomizationData;->setData(Landroid/os/Bundle;)V

    .line 7580
    return-void
.end method


# virtual methods
.method protected getBundleWithFunctionName(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter "strFunctionName"

    .prologue
    .line 7599
    iget-object v0, p0, Landroid/provider/DrmCustomizationData;->mBundleData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 7600
    iget-object v0, p0, Landroid/provider/DrmCustomizationData;->mBundleData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 7603
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getData()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 7587
    iget-object v0, p0, Landroid/provider/DrmCustomizationData;->mBundleData:Landroid/os/Bundle;

    return-object v0
.end method

.method public getStringWithFunctionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "strFunctionName"

    .prologue
    .line 7591
    iget-object v0, p0, Landroid/provider/DrmCustomizationData;->mBundleData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 7592
    iget-object v0, p0, Landroid/provider/DrmCustomizationData;->mBundleData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7595
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setData(Landroid/os/Bundle;)V
    .locals 0
    .parameter "customizationData"

    .prologue
    .line 7583
    iput-object p1, p0, Landroid/provider/DrmCustomizationData;->mBundleData:Landroid/os/Bundle;

    .line 7584
    return-void
.end method
