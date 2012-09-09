.class public Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;
.super Ljava/lang/Object;
.source "HtcCdmaAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/HtcCdmaAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "accountInfo"
.end annotation


# instance fields
.field public EsnDevId:Ljava/lang/String;

.field public EsnRsif:Ljava/lang/String;

.field public IccIdIcc:Ljava/lang/String;

.field public Imei:Ljava/lang/String;

.field public ImeiSv:Ljava/lang/String;

.field public ImsiCdmaIcc:Ljava/lang/String;

.field public ImsiGsmIcc:Ljava/lang/String;

.field public ImsiRil:Ljava/lang/String;

.field public ImsiRsinfo:Ljava/lang/String;

.field public Imsi_11_12:Ljava/lang/String;

.field public ImsimIcc:Ljava/lang/String;

.field public ImsitIcc:Ljava/lang/String;

.field public Mcc:Ljava/lang/String;

.field public MdnIcc:Ljava/lang/String;

.field public MdnSubs:Ljava/lang/String;

.field public Meid:Ljava/lang/String;

.field public Min:Ljava/lang/String;

.field public Nid:Ljava/lang/String;

.field public PrlVerRsif:Ljava/lang/String;

.field public PrlVerSubs:Ljava/lang/String;

.field public Sid:Ljava/lang/String;

.field logPrefix:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/cdma/HtcCdmaAccount;

.field public transactionId:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/HtcCdmaAccount;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "logTag"

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaAccount;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 272
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->logPrefix:Ljava/lang/String;

    .line 273
    return-void
.end method


# virtual methods
.method public copyTo(Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;)V
    .locals 1
    .parameter "cp"

    .prologue
    .line 276
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->transactionId:I

    iput v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->transactionId:I

    .line 277
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Mcc:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Mcc:Ljava/lang/String;

    .line 278
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imsi_11_12:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imsi_11_12:Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Min:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Min:Ljava/lang/String;

    .line 280
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRil:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRil:Ljava/lang/String;

    .line 281
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRsinfo:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRsinfo:Ljava/lang/String;

    .line 282
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnSubs:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnSubs:Ljava/lang/String;

    .line 283
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->EsnRsif:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->EsnRsif:Ljava/lang/String;

    .line 284
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->PrlVerSubs:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->PrlVerSubs:Ljava/lang/String;

    .line 285
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->PrlVerRsif:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->PrlVerRsif:Ljava/lang/String;

    .line 286
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Sid:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Sid:Ljava/lang/String;

    .line 287
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Nid:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Nid:Ljava/lang/String;

    .line 288
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imei:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imei:Ljava/lang/String;

    .line 289
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImeiSv:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImeiSv:Ljava/lang/String;

    .line 290
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->EsnDevId:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->EsnDevId:Ljava/lang/String;

    .line 291
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Meid:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Meid:Ljava/lang/String;

    .line 292
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->IccIdIcc:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->IccIdIcc:Ljava/lang/String;

    .line 293
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiGsmIcc:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiGsmIcc:Ljava/lang/String;

    .line 294
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiCdmaIcc:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiCdmaIcc:Ljava/lang/String;

    .line 295
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsimIcc:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsimIcc:Ljava/lang/String;

    .line 296
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsitIcc:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsitIcc:Ljava/lang/String;

    .line 297
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnIcc:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnIcc:Ljava/lang/String;

    .line 298
    return-void
.end method

.method public correctBadValues()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 332
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Mcc:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Mcc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 333
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Mcc:Ljava/lang/String;

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imsi_11_12:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imsi_11_12:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 336
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imsi_11_12:Ljava/lang/String;

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Min:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Min:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    .line 339
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Min:Ljava/lang/String;

    .line 341
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRil:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 342
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRil:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaAccount;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRil:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->allZeroString(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$100(Lcom/android/internal/telephony/cdma/HtcCdmaAccount;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 344
    :cond_3
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRil:Ljava/lang/String;

    .line 347
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRsinfo:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 348
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRsinfo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaAccount;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRsinfo:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->allZeroString(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$100(Lcom/android/internal/telephony/cdma/HtcCdmaAccount;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 350
    :cond_5
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRsinfo:Ljava/lang/String;

    .line 353
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnSubs:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 354
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnSubs:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaAccount;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnSubs:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->allZeroString(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$100(Lcom/android/internal/telephony/cdma/HtcCdmaAccount;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 356
    :cond_7
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnSubs:Ljava/lang/String;

    .line 359
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->EsnRsif:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 360
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->EsnRsif:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaAccount;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->EsnRsif:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->allZeroString(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$100(Lcom/android/internal/telephony/cdma/HtcCdmaAccount;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 362
    :cond_9
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->EsnRsif:Ljava/lang/String;

    .line 365
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->PrlVerSubs:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->PrlVerSubs:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_b

    .line 366
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->PrlVerSubs:Ljava/lang/String;

    .line 368
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->PrlVerRsif:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->PrlVerRsif:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_c

    .line 369
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->PrlVerRsif:Ljava/lang/String;

    .line 371
    :cond_c
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Sid:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Sid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_d

    .line 372
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Sid:Ljava/lang/String;

    .line 374
    :cond_d
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Nid:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Nid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_e

    .line 375
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Nid:Ljava/lang/String;

    .line 377
    :cond_e
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imei:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 378
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imei:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_f

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaAccount;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imei:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->allZeroString(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$100(Lcom/android/internal/telephony/cdma/HtcCdmaAccount;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 380
    :cond_f
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imei:Ljava/lang/String;

    .line 383
    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImeiSv:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImeiSv:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_11

    .line 384
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImeiSv:Ljava/lang/String;

    .line 386
    :cond_11
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->EsnDevId:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 387
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->EsnDevId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_12

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaAccount;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->EsnDevId:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->allZeroString(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$100(Lcom/android/internal/telephony/cdma/HtcCdmaAccount;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 389
    :cond_12
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->EsnDevId:Ljava/lang/String;

    .line 392
    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Meid:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 393
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Meid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaAccount;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Meid:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->allZeroString(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$100(Lcom/android/internal/telephony/cdma/HtcCdmaAccount;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 395
    :cond_14
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Meid:Ljava/lang/String;

    .line 398
    :cond_15
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->IccIdIcc:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 399
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->IccIdIcc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaAccount;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->IccIdIcc:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->allZeroString(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$100(Lcom/android/internal/telephony/cdma/HtcCdmaAccount;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 401
    :cond_16
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->IccIdIcc:Ljava/lang/String;

    .line 404
    :cond_17
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiGsmIcc:Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 405
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiGsmIcc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_18

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaAccount;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiGsmIcc:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->allZeroString(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$100(Lcom/android/internal/telephony/cdma/HtcCdmaAccount;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 407
    :cond_18
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiGsmIcc:Ljava/lang/String;

    .line 410
    :cond_19
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiCdmaIcc:Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 411
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiCdmaIcc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1a

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaAccount;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiCdmaIcc:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->allZeroString(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$100(Lcom/android/internal/telephony/cdma/HtcCdmaAccount;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 413
    :cond_1a
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiCdmaIcc:Ljava/lang/String;

    .line 416
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsimIcc:Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 417
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsimIcc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1c

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaAccount;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsimIcc:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->allZeroString(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$100(Lcom/android/internal/telephony/cdma/HtcCdmaAccount;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 419
    :cond_1c
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsimIcc:Ljava/lang/String;

    .line 422
    :cond_1d
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsitIcc:Ljava/lang/String;

    if-eqz v0, :cond_1f

    .line 423
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsitIcc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1e

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaAccount;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsitIcc:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->allZeroString(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$100(Lcom/android/internal/telephony/cdma/HtcCdmaAccount;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 425
    :cond_1e
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsitIcc:Ljava/lang/String;

    .line 428
    :cond_1f
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnIcc:Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 429
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnIcc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_20

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaAccount;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnIcc:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->allZeroString(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$100(Lcom/android/internal/telephony/cdma/HtcCdmaAccount;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 431
    :cond_20
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnIcc:Ljava/lang/String;

    .line 434
    :cond_21
    return-void
.end method

.method public dump()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 301
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CdmaAccount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->logPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(1): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->transactionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Mcc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imsi_11_12:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Min:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->displayLimitedNumber(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$000(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRil:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->displayLimitedNumber(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$000(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CdmaAccount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->logPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(2): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRsinfo:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->displayLimitedNumber(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$000(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnSubs:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->displayLimitedNumber(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$000(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->EsnRsif:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->displayLimitedNumber(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$000(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CdmaAccount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->logPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(3): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Sid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CdmaAccount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->logPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(4): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Nid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CdmaAccount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->logPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(5): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->PrlVerSubs:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->PrlVerRsif:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imei:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->displayLimitedNumber(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$000(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImeiSv:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->EsnDevId:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->displayLimitedNumber(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$000(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CdmaAccount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->logPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(6): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Meid:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->displayLimitedNumber(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$000(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->IccIdIcc:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->displayLimitedNumber(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$000(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiCdmaIcc:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->displayLimitedNumber(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$000(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CdmaAccount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->logPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(7): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsimIcc:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->displayLimitedNumber(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$000(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsimIcc:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->displayLimitedNumber(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$000(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsitIcc:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->displayLimitedNumber(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$000(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CdmaAccount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->logPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(8): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnIcc:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->displayLimitedNumber(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$000(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    return-void
.end method
