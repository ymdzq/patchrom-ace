.class Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDComparator;
.super Ljava/lang/Object;
.source "HtcCdmaCountry.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/HtcCdmaCountry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SIDComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 490
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getInstance()Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDComparator;
    .locals 1

    .prologue
    .line 493
    invoke-static {}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->access$000()Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDComparator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 494
    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDComparator;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDComparator;-><init>()V

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->access$002(Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDComparator;)Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDComparator;

    .line 496
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->access$000()Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDComparator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public compare(Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;)I
    .locals 4
    .parameter "objRange"
    .parameter "objFind"

    .prologue
    .line 505
    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->getSidBegin()I

    move-result v2

    .line 507
    .local v2, nFind:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->getSidBegin()I

    move-result v0

    .line 508
    .local v0, nBegin:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->getSidEnd()I

    move-result v1

    .line 510
    .local v1, nEnd:I
    const/4 v3, 0x0

    .line 511
    .local v3, result:I
    if-le v0, v2, :cond_1

    .line 512
    const/4 v3, 0x1

    .line 519
    :cond_0
    :goto_0
    return v3

    .line 513
    :cond_1
    if-le v2, v1, :cond_0

    .line 514
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 489
    check-cast p1, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    .end local p1
    check-cast p2, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDComparator;->compare(Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;)I

    move-result v0

    return v0
.end method
