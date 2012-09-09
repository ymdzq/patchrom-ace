.class Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;
.super Ljava/lang/Object;
.source "HtcCdmaCountry.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/HtcCdmaCountry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SIDEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;",
        ">;"
    }
.end annotation


# instance fields
.field countryIso:Ljava/lang/String;

.field dstGmtOffeset:Ljava/lang/Integer;

.field gmtOffeset:Ljava/lang/Integer;

.field mccBegin:Ljava/lang/Integer;

.field mccEnd:Ljava/lang/Integer;

.field sidBegin:Ljava/lang/Integer;

.field sidEnd:Ljava/lang/Integer;


# direct methods
.method constructor <init>(ILjava/lang/Integer;Ljava/lang/String;)V
    .locals 8
    .parameter "sidBegin"
    .parameter "sidEnd"
    .parameter "iso"

    .prologue
    const/4 v4, 0x0

    .line 441
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 442
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->init(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 443
    return-void
.end method

.method constructor <init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 8
    .parameter "sidBegin"
    .parameter "sidEnd"
    .parameter "iso"
    .parameter "mccBegin"

    .prologue
    const/4 v5, 0x0

    .line 445
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, v5

    .line 446
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->init(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 447
    return-void
.end method

.method constructor <init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 8
    .parameter "sidBegin"
    .parameter "sidEnd"
    .parameter "iso"
    .parameter "mccBegin"
    .parameter "mccEnd"

    .prologue
    const/4 v6, 0x0

    .line 449
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, v6

    .line 450
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->init(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 451
    return-void
.end method

.method constructor <init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .parameter "sidBegin"
    .parameter "sidEnd"
    .parameter "iso"
    .parameter "mccBegin"
    .parameter "mccEnd"
    .parameter "gmtOffeset"
    .parameter "dstGmtOffeset"

    .prologue
    .line 454
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 455
    invoke-virtual/range {p0 .. p7}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->init(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 456
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;)I
    .locals 2
    .parameter "o"

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->sidBegin:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p1, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->sidBegin:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 431
    check-cast p1, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->compareTo(Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;)I

    move-result v0

    return v0
.end method

.method getSidBegin()I
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->sidBegin:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->sidBegin:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method getSidEnd()I
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->sidEnd:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->sidEnd:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method init(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1
    .parameter "sidBegin"
    .parameter "sidEnd"
    .parameter "iso"
    .parameter "mccBegin"
    .parameter "mccEnd"
    .parameter "gmtOffeset"
    .parameter "dstGmtOffeset"

    .prologue
    .line 460
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->sidBegin:Ljava/lang/Integer;

    .line 461
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->sidEnd:Ljava/lang/Integer;

    .line 462
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->countryIso:Ljava/lang/String;

    .line 463
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->mccBegin:Ljava/lang/Integer;

    .line 464
    iput-object p5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->mccEnd:Ljava/lang/Integer;

    .line 465
    iput-object p6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->gmtOffeset:Ljava/lang/Integer;

    .line 466
    iput-object p7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->dstGmtOffeset:Ljava/lang/Integer;

    .line 467
    return-void
.end method
