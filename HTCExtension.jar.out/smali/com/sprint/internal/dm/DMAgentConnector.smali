.class public Lcom/sprint/internal/dm/DMAgentConnector;
.super Ljava/lang/Object;
.source "DMAgentConnector.java"


# static fields
.field public static final A_Key:Ljava/lang/String; = "C005"

.field public static final Activate_MIP_Profile:Ljava/lang/String; = "C017"

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "DSA-DMAgentConnector"

.field public static final MDN:Ljava/lang/String; = "C001"

.field public static final MEID:Ljava/lang/String; = "C004"

.field public static final MIN1:Ljava/lang/String; = "C018"

.field public static final MIN2:Ljava/lang/String; = "C019"

.field public static final MSID:Ljava/lang/String; = "C002"

.field private static PrivateKey:Ljava/lang/String; = null

.field public static final Pseudo_ESN:Ljava/lang/String; = "C003"

.field public static final Slot_1_AAA_Auth_Algo:Ljava/lang/String; = "C013"

.field public static final Slot_1_AAA_SPI:Ljava/lang/String; = "C014"

.field public static final Slot_1_HA_Auth_Algo:Ljava/lang/String; = "C010"

.field public static final Slot_1_HA_Password:Ljava/lang/String; = "C012"

.field public static final Slot_1_HA_SPI:Ljava/lang/String; = "C011"

.field public static final Slot_1_Mobile_IP_Address:Ljava/lang/String; = "C016"

.field public static final Slot_1_NAI:Ljava/lang/String; = "C006"

.field public static final Slot_1_NAI_Password:Ljava/lang/String; = "C007"

.field public static final Slot_1_Primary_HA:Ljava/lang/String; = "C008"

.field public static final Slot_1_Reverse_Tunnel:Ljava/lang/String; = "C015"

.field public static final Slot_1_Secondary_HA:Ljava/lang/String; = "C009"

.field private static bEncrypt:Z = false

.field private static bPrivateKey:Z = false

.field public static final cmdID:Ljava/lang/String; = ":IDOMADM"

.field public static final cmdRead:Ljava/lang/String; = "R"

.field public static cmdTY1:Ljava/lang/String; = null

.field public static cmdTY2:Ljava/lang/String; = null

.field public static cmdTY3:Ljava/lang/String; = null

.field public static final cmdWrite:Ljava/lang/String; = "W"

.field public static final cmdXCMD:Ljava/lang/String; = ":XCMD"


# instance fields
.field private final BufferLength:I

.field private My_hex:Ljava/lang/String;

.field private final PORT:I

.field private PublicEncryptKey:Ljava/lang/String;

.field private Result:Ljava/lang/String;

.field private cmdEXIT:Ljava/lang/String;

.field private cmdPWD:Ljava/lang/String;

.field in:Ljava/io/InputStream;

.field isError:Z

.field private mCmdType:Ljava/lang/String;

.field out:Ljava/io/OutputStream;

.field requestSocket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    const-string v0, ":TY1"

    sput-object v0, Lcom/sprint/internal/dm/DMAgentConnector;->cmdTY1:Ljava/lang/String;

    .line 23
    const-string v0, ":TY2"

    sput-object v0, Lcom/sprint/internal/dm/DMAgentConnector;->cmdTY2:Ljava/lang/String;

    .line 24
    const-string v0, ":TY3"

    sput-object v0, Lcom/sprint/internal/dm/DMAgentConnector;->cmdTY3:Ljava/lang/String;

    .line 64
    const-string v0, "ro.omadm.encryptenable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/sprint/internal/dm/DMAgentConnector;->bEncrypt:Z

    .line 66
    sput-boolean v1, Lcom/sprint/internal/dm/DMAgentConnector;->bPrivateKey:Z

    return-void

    .line 64
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "cmdType"

    .prologue
    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/16 v0, 0x400

    iput v0, p0, Lcom/sprint/internal/dm/DMAgentConnector;->BufferLength:I

    .line 18
    const/16 v0, 0x2606

    iput v0, p0, Lcom/sprint/internal/dm/DMAgentConnector;->PORT:I

    .line 20
    const-string v0, ":PWDM"

    iput-object v0, p0, Lcom/sprint/internal/dm/DMAgentConnector;->cmdPWD:Ljava/lang/String;

    .line 21
    const-string v0, ":EXIT"

    iput-object v0, p0, Lcom/sprint/internal/dm/DMAgentConnector;->cmdEXIT:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/internal/dm/DMAgentConnector;->Result:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/internal/dm/DMAgentConnector;->My_hex:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/internal/dm/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    .line 65
    const-string v0, "0000000000000000"

    iput-object v0, p0, Lcom/sprint/internal/dm/DMAgentConnector;->PublicEncryptKey:Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/internal/dm/DMAgentConnector;->isError:Z

    .line 72
    sget-boolean v0, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 73
    :cond_0
    iput-object p1, p0, Lcom/sprint/internal/dm/DMAgentConnector;->mCmdType:Ljava/lang/String;

    goto :goto_0
.end method

.method public static ASCIIToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "str"

    .prologue
    .line 651
    sget-boolean v5, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v5, :cond_1

    const/4 v3, 0x0

    .line 662
    :cond_0
    return-object v3

    .line 652
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 653
    .local v2, len:I
    const-string v3, ""

    .line 654
    .local v3, result:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 655
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 656
    .local v0, c:I
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 657
    .local v4, tmp:Ljava/lang/String;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_2

    .line 658
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 660
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 654
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static DmDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "Key"
    .parameter "EncryptText"

    .prologue
    .line 688
    const/4 v1, 0x0

    .line 690
    .local v1, decrypted:[B
    :try_start_0
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "AES"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 691
    .local v3, secret:Ljavax/crypto/spec/SecretKeySpec;
    const-string v4, "AES/ECB/NoPadding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 692
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 693
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/sprint/internal/dm/DMAgentConnector;->HexToStr(Ljava/lang/String;Z)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 697
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v3           #secret:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 694
    :catch_0
    move-exception v2

    .line 695
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static DmEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "Key"
    .parameter "PlainText"

    .prologue
    const/4 v8, 0x0

    .line 667
    const/4 v4, 0x0

    .line 668
    .local v4, encrypted:[B
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 669
    .local v1, Length:I
    rem-int/lit8 v6, v1, 0x10

    if-lez v6, :cond_0

    .line 670
    div-int/lit8 v6, v1, 0x10

    add-int/lit8 v6, v6, 0x1

    mul-int/lit8 v1, v6, 0x10

    .line 673
    :cond_0
    new-array v0, v1, [B

    .line 674
    .local v0, Buffer:[B
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6, v8, v0, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 677
    :try_start_0
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const-string v7, "AES"

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 678
    .local v5, secret:Ljavax/crypto/spec/SecretKeySpec;
    const-string v6, "AES/ECB/NoPadding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 679
    .local v2, cipher:Ljavax/crypto/Cipher;
    const/4 v6, 0x1

    invoke-virtual {v2, v6, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 680
    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 684
    .end local v2           #cipher:Ljavax/crypto/Cipher;
    .end local v5           #secret:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    invoke-static {v4}, Lcom/sprint/internal/dm/DMAgentConnector;->StrToHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 681
    :catch_0
    move-exception v3

    .line 682
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static EncodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 10
    .parameter "dwVal"
    .parameter "dwDigits"

    .prologue
    .line 600
    sget-boolean v4, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    .line 613
    :cond_0
    return-object v2

    .line 601
    :cond_1
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .local v3, i:Ljava/lang/Long;
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .local v2, dwRet:Ljava/lang/Long;
    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .local v1, dwBase:Ljava/lang/Long;
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 603
    .local v0, dwBCD:Ljava/lang/Long;
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0xa

    rem-long/2addr v4, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 604
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    const-wide/16 v4, 0x9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 605
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 606
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 608
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 610
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0xa

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 611
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0xa

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0
.end method

.method public static EncodeBCD_Min1([C)Ljava/lang/Long;
    .locals 13
    .parameter "pbsVal"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const-wide/16 v9, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    .line 616
    sget-boolean v4, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    .line 647
    :goto_0
    return-object v2

    .line 617
    :cond_0
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .local v2, dwVal:Ljava/lang/Long;
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 618
    .local v3, dwVal1:Ljava/lang/Long;
    const/4 v1, 0x0

    .line 619
    .local v1, bsMin1:[C
    new-array v0, v7, [C

    .line 620
    .local v0, bsDat:[C
    if-eqz p0, :cond_1

    .line 621
    move-object v1, p0

    .line 622
    :cond_1
    array-length v4, v1

    const/4 v5, 0x7

    if-ge v4, v5, :cond_2

    .line 623
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "0000000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 625
    :cond_2
    invoke-static {v1, v8, v7}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 627
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 628
    const-wide/16 v4, 0x3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sprint/internal/dm/DMAgentConnector;->EncodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v2

    .line 630
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x4

    shl-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 631
    const/16 v4, 0x30

    aput-char v4, v0, v11

    aput-char v4, v0, v8

    .line 632
    aget-char v4, v1, v7

    aput-char v4, v0, v12

    .line 634
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 635
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v9

    if-nez v4, :cond_3

    .line 636
    const-wide/16 v4, 0xa

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 637
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    or-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 639
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/16 v6, 0xa

    shl-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 640
    const/4 v4, 0x4

    aget-char v4, v1, v4

    aput-char v4, v0, v8

    .line 641
    const/4 v4, 0x5

    aget-char v4, v1, v4

    aput-char v4, v0, v11

    .line 642
    const/4 v4, 0x6

    aget-char v4, v1, v4

    aput-char v4, v0, v12

    .line 644
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 645
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/sprint/internal/dm/DMAgentConnector;->EncodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    or-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 647
    goto/16 :goto_0
.end method

.method private static HexToStr(Ljava/lang/String;Z)[B
    .locals 7
    .parameter "input"
    .parameter "lowercase"

    .prologue
    .line 702
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0123456789"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez p1, :cond_0

    const-string v5, "ABCDEF"

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 703
    .local v1, digital:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 704
    .local v2, hex2char:[C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    new-array v0, v5, [B

    .line 706
    .local v0, bytes:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_1

    .line 707
    mul-int/lit8 v5, v3, 0x2

    aget-char v5, v2, v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    mul-int/lit8 v4, v5, 0x10

    .line 708
    .local v4, temp:I
    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-char v5, v2, v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 709
    and-int/lit16 v5, v4, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    .line 706
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 702
    .end local v0           #bytes:[B
    .end local v1           #digital:Ljava/lang/String;
    .end local v2           #hex2char:[C
    .end local v3           #i:I
    .end local v4           #temp:I
    :cond_0
    const-string v5, "abcdef"

    goto :goto_0

    .line 711
    .restart local v0       #bytes:[B
    .restart local v1       #digital:Ljava/lang/String;
    .restart local v2       #hex2char:[C
    .restart local v3       #i:I
    :cond_1
    return-object v0
.end method

.method public static ReverseByte(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "val"

    .prologue
    .line 516
    sget-boolean v5, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v5, :cond_1

    const/4 p0, 0x0

    .line 528
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 517
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_0

    .line 520
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 521
    .local v2, length:I
    const-string v3, ""

    .line 522
    .local v3, reverse:Ljava/lang/String;
    move-object v4, p0

    .line 523
    .local v4, tmp:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    div-int/lit8 v5, v2, 0x2

    if-ge v0, v5, :cond_2

    .line 524
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 525
    .local v1, len:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v1, -0x2

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 526
    const/4 v5, 0x0

    add-int/lit8 v6, v1, -0x2

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 523
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1           #len:I
    :cond_2
    move-object p0, v3

    .line 528
    goto :goto_0
.end method

.method private static StrToHex([B)Ljava/lang/String;
    .locals 6
    .parameter "bytes"

    .prologue
    const/4 v5, 0x1

    .line 715
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 716
    .local v1, rslt:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_2

    .line 717
    aget-byte v3, p0, v0

    if-ltz v3, :cond_1

    aget-byte v3, p0, v0

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 718
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 719
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 720
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 721
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 716
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 717
    .end local v2           #s:Ljava/lang/String;
    :cond_1
    aget-byte v3, p0, v0

    add-int/lit16 v3, v3, 0x100

    goto :goto_1

    .line 723
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static byteToBigHexString([B)Ljava/lang/String;
    .locals 5
    .parameter "bytes"

    .prologue
    .line 404
    sget-boolean v3, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    .line 413
    :cond_0
    return-object v1

    .line 405
    :cond_1
    invoke-static {p0}, Lcom/sprint/internal/dm/DMAgentConnector;->byteToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 406
    .local v2, tmp:Ljava/lang/String;
    const-string v1, ""

    .line 407
    .local v1, result:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 408
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x61

    if-lt v3, v4, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x7a

    if-gt v3, v4, :cond_2

    .line 409
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x20

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 407
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 411
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static byteToHexString([B)Ljava/lang/String;
    .locals 6
    .parameter "bytes"

    .prologue
    const/4 v5, 0x1

    .line 417
    sget-boolean v3, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    .line 427
    :goto_0
    return-object v3

    .line 418
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 420
    .local v1, rslt:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_3

    .line 421
    aget-byte v3, p0, v0

    if-ltz v3, :cond_2

    aget-byte v3, p0, v0

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 422
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 423
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 424
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 425
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 420
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 421
    .end local v2           #s:Ljava/lang/String;
    :cond_2
    aget-byte v3, p0, v0

    add-int/lit16 v3, v3, 0x100

    goto :goto_2

    .line 427
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static decodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 11
    .parameter "parDwVal"
    .parameter "dwDigits"

    .prologue
    .line 544
    sget-boolean v5, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v5, :cond_1

    const/4 v2, 0x0

    .line 557
    :cond_0
    return-object v2

    .line 545
    :cond_1
    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .local v4, i:Ljava/lang/Long;
    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .local v2, dwRet:Ljava/lang/Long;
    const-wide/16 v5, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .local v1, dwBase:Ljava/lang/Long;
    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 546
    .local v0, dwBCD:Ljava/lang/Long;
    move-object v3, p0

    .line 548
    .local v3, dwVal:Ljava/lang/Long;
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0xa

    rem-long/2addr v5, v7

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 549
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0xa

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    .line 550
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    mul-long/2addr v7, v9

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 552
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    .line 554
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0xa

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 555
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0xa

    mul-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0
.end method

.method public static decodeBCDMin1(Ljava/lang/Long;)Ljava/lang/String;
    .locals 14
    .parameter "parDwVal"

    .prologue
    const-wide/16 v12, 0x3

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 561
    sget-boolean v4, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    .line 581
    :goto_0
    return-object v4

    .line 562
    :cond_0
    const/16 v4, 0x8

    new-array v0, v4, [C

    .line 564
    .local v0, bsMin1:[C
    move-object v2, p0

    .line 565
    .local v2, dwVal:Ljava/lang/Long;
    new-array v1, v11, [J

    .line 566
    .local v1, dwMin1:[J
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3ff

    and-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sprint/internal/dm/DMAgentConnector;->decodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v1, v9

    .line 568
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/16 v6, 0xa

    shr-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 569
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0xf

    and-long/2addr v4, v6

    aput-wide v4, v1, v8

    .line 570
    aget-wide v4, v1, v8

    const-wide/16 v6, 0xa

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 571
    const-wide/16 v4, 0x0

    aput-wide v4, v1, v8

    .line 573
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x4

    shr-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 574
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3ff

    and-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sprint/internal/dm/DMAgentConnector;->decodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v1, v10

    .line 576
    const-string v4, "%3d%1d%3d"

    new-array v5, v11, [Ljava/lang/Object;

    aget-wide v6, v1, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v9

    aget-wide v6, v1, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    aget-wide v6, v1, v9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 577
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 578
    aget-char v4, v0, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_2

    .line 579
    const/16 v4, 0x30

    aput-char v4, v0, v3

    .line 577
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 581
    :cond_3
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public static doASCIIToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "str"

    .prologue
    .line 463
    sget-boolean v5, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v5, :cond_1

    const/4 v3, 0x0

    .line 474
    :cond_0
    return-object v3

    .line 464
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 465
    .local v2, len:I
    const-string v3, ""

    .line 466
    .local v3, result:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 467
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 468
    .local v0, c:I
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 469
    .local v4, tmp:Ljava/lang/String;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_2

    .line 470
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 472
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 466
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static doStringToASCII(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "str"

    .prologue
    .line 446
    sget-boolean v6, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v6, :cond_1

    const/4 v4, 0x0

    .line 460
    :cond_0
    :goto_0
    return-object v4

    .line 447
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 448
    .local v3, len:I
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v2, 0x2

    .line 449
    .local v2, j:I
    const-string v4, ""

    .line 451
    .local v4, result:Ljava/lang/String;
    :goto_1
    if-gt v2, v3, :cond_0

    .line 452
    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 453
    .local v5, tmp:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v5, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    int-to-char v7, v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 454
    move v1, v2

    .line 455
    add-int/lit8 v2, v2, 0x2

    .line 456
    goto :goto_1

    .line 457
    .end local v5           #tmp:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 458
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static hexStringToByte(Ljava/lang/String;Z)[B
    .locals 7
    .parameter "input"
    .parameter "lowercase"

    .prologue
    .line 431
    sget-boolean v5, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v5, :cond_1

    const/4 v0, 0x0

    .line 443
    :cond_0
    return-object v0

    .line 433
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0123456789"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez p1, :cond_2

    const-string v5, "ABCDEF"

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 435
    .local v1, digital:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 436
    .local v2, hex2char:[C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    new-array v0, v5, [B

    .line 438
    .local v0, bytes:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_0

    .line 439
    mul-int/lit8 v5, v3, 0x2

    aget-char v5, v2, v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    mul-int/lit8 v4, v5, 0x10

    .line 440
    .local v4, temp:I
    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-char v5, v2, v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 441
    and-int/lit16 v5, v4, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    .line 438
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 433
    .end local v0           #bytes:[B
    .end local v1           #digital:Ljava/lang/String;
    .end local v2           #hex2char:[C
    .end local v3           #i:I
    .end local v4           #temp:I
    :cond_2
    const-string v5, "abcdef"

    goto :goto_0
.end method

.method private parseReadResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "response"

    .prologue
    const/4 v1, 0x0

    .line 357
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, strs:[Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v0, v2

    const-string v3, "OK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    const/4 v2, 0x2

    aget-object v2, v0, v2

    const-string v3, "0000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-object v1

    .line 362
    :cond_1
    const/4 v1, 0x3

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method private parseWriteResponse(Ljava/lang/String;)Z
    .locals 4
    .parameter "response"

    .prologue
    const/4 v1, 0x1

    .line 368
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, strs:[Ljava/lang/String;
    aget-object v2, v0, v1

    const-string v3, "OK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 371
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static pendZero(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "cmd"
    .parameter "digits"

    .prologue
    .line 532
    sget-boolean v1, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 537
    :cond_0
    return-object v0

    .line 533
    :cond_1
    move-object v0, p0

    .line 534
    .local v0, reslt:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, p1, :cond_0

    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private readRsponse()V
    .locals 8

    .prologue
    const/16 v7, 0x400

    .line 727
    new-array v2, v7, [B

    .line 728
    .local v2, respond:[B
    const/4 v1, 0x0

    .line 730
    .local v1, length:I
    :try_start_0
    iget-object v4, p0, Lcom/sprint/internal/dm/DMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 736
    :goto_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 737
    .local v3, result:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sprint/internal/dm/DMAgentConnector;->Result:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sprint/internal/dm/DMAgentConnector;->Result:Ljava/lang/String;

    .line 739
    if-ge v1, v7, :cond_0

    .line 747
    :goto_1
    return-void

    .line 732
    .end local v3           #result:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 733
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "DSA-DMAgentConnector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ReadSponse fail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 744
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #result:Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/sprint/internal/dm/DMAgentConnector;->readRsponse()V

    goto :goto_1
.end method

.method public static reverseByte(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "val"

    .prologue
    .line 584
    sget-boolean v5, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v5, :cond_1

    const/4 p0, 0x0

    .line 596
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 585
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_0

    .line 588
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 589
    .local v2, length:I
    const-string v3, ""

    .line 590
    .local v3, reverse:Ljava/lang/String;
    move-object v4, p0

    .line 591
    .local v4, tmp:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    div-int/lit8 v5, v2, 0x2

    if-ge v0, v5, :cond_2

    .line 592
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 593
    .local v1, len:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v1, -0x2

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 594
    const/4 v5, 0x0

    add-int/lit8 v6, v1, -0x2

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 591
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1           #len:I
    :cond_2
    move-object p0, v3

    .line 596
    goto :goto_0
.end method

.method public static transHexStringtoIP(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "hexStr"

    .prologue
    const/16 v5, 0x10

    .line 497
    sget-boolean v3, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    .line 509
    :cond_0
    return-object v2

    .line 499
    :cond_1
    invoke-static {p0}, Lcom/sprint/internal/dm/DMAgentConnector;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 500
    const-string v2, ""

    .line 501
    .local v2, result:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 502
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 504
    .local v0, hex:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    if-eq v1, v3, :cond_2

    .line 505
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 501
    :goto_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 507
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static transIPtoHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "input"

    .prologue
    .line 483
    sget-boolean v4, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    .line 490
    :goto_0
    return-object v4

    .line 484
    :cond_0
    const-string v2, ""

    .line 485
    .local v2, result:Ljava/lang/String;
    const-string v4, "\\."

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 486
    .local v3, strs:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 487
    aget-object v4, v3, v0

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 488
    .local v1, num:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 486
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 490
    .end local v1           #num:I
    :cond_1
    invoke-static {v2}, Lcom/sprint/internal/dm/DMAgentConnector;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private transfer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "rw"
    .parameter "cmdID"

    .prologue
    .line 351
    const-string v0, ""

    .line 352
    .local v0, result:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 353
    return-object v0
.end method

.method private transfer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "rw"
    .parameter "cmdID"
    .parameter "hex"

    .prologue
    .line 346
    invoke-direct {p0, p1, p2}, Lcom/sprint/internal/dm/DMAgentConnector;->transfer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, result:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 348
    return-object v0
.end method


# virtual methods
.method public GetPrivateKey()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v4, 0x200

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 189
    new-array v1, v4, [B

    .line 190
    .local v1, cmdsend:[B
    new-array v0, v4, [B

    .line 192
    .local v0, cmdresp:[B
    sget-boolean v4, Lcom/sprint/internal/dm/DMAgentConnector;->bPrivateKey:Z

    if-eqz v4, :cond_0

    .line 193
    sget-object v4, Lcom/sprint/internal/dm/DMAgentConnector;->PrivateKey:Ljava/lang/String;

    .line 211
    :goto_0
    return-object v4

    .line 195
    :cond_0
    const/16 v4, 0x77

    aput-byte v4, v1, v5

    .line 196
    aput-byte v5, v1, v6

    .line 199
    :try_start_0
    iget-object v4, p0, Lcom/sprint/internal/dm/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v4, v1}, Ljava/io/OutputStream;->write([B)V

    .line 200
    iget-object v4, p0, Lcom/sprint/internal/dm/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 201
    iget-object v4, p0, Lcom/sprint/internal/dm/DMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, result:Ljava/lang/String;
    iget-object v4, p0, Lcom/sprint/internal/dm/DMAgentConnector;->PublicEncryptKey:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/sprint/internal/dm/DMAgentConnector;->DmDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/sprint/internal/dm/DMAgentConnector;->PrivateKey:Ljava/lang/String;

    .line 210
    sput-boolean v6, Lcom/sprint/internal/dm/DMAgentConnector;->bPrivateKey:Z

    .line 211
    sget-object v4, Lcom/sprint/internal/dm/DMAgentConnector;->PrivateKey:Ljava/lang/String;

    goto :goto_0

    .line 202
    .end local v3           #result:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 203
    .local v2, ioException:Ljava/io/IOException;
    const-string v4, "DSA-DMAgentConnector"

    const-string v5, "IOException."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {p0}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z

    goto :goto_1
.end method

.method public changeTTY(Ljava/lang/String;)V
    .locals 4
    .parameter "cmdTTY"

    .prologue
    .line 375
    sget-boolean v2, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v2, :cond_0

    .line 398
    :goto_0
    return-void

    .line 377
    :cond_0
    const/16 v2, 0x200

    :try_start_0
    new-array v1, v2, [B

    .line 379
    .local v1, respond:[B
    iget-object v2, p0, Lcom/sprint/internal/dm/DMAgentConnector;->out:Ljava/io/OutputStream;

    sget-object v3, Lcom/sprint/internal/dm/DMAgentConnector;->PrivateKey:Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/sprint/internal/dm/DMAgentConnector;->DmEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 391
    invoke-direct {p0}, Lcom/sprint/internal/dm/DMAgentConnector;->readRsponse()V

    .line 392
    sget-object v2, Lcom/sprint/internal/dm/DMAgentConnector;->PrivateKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/sprint/internal/dm/DMAgentConnector;->Result:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sprint/internal/dm/DMAgentConnector;->DmDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 394
    .end local v1           #respond:[B
    :catch_0
    move-exception v0

    .line 395
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sprint/internal/dm/DMAgentConnector;->isError:Z

    .line 396
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public closeConnection()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 221
    sget-boolean v4, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v4, :cond_0

    .line 222
    const/4 v3, 0x1

    .line 268
    :goto_0
    return v3

    .line 224
    :cond_0
    const/4 v3, 0x0

    .line 226
    .local v3, result:Z
    :try_start_0
    iget-object v4, p0, Lcom/sprint/internal/dm/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    iput-object v4, p0, Lcom/sprint/internal/dm/DMAgentConnector;->out:Ljava/io/OutputStream;

    .line 234
    iget-object v4, p0, Lcom/sprint/internal/dm/DMAgentConnector;->cmdEXIT:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/sprint/internal/dm/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, My_hex:Ljava/lang/String;
    iget-object v4, p0, Lcom/sprint/internal/dm/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 239
    iget-object v4, p0, Lcom/sprint/internal/dm/DMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 240
    iget-object v4, p0, Lcom/sprint/internal/dm/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    const/4 v3, 0x1

    .line 250
    .end local v0           #My_hex:Ljava/lang/String;
    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/sprint/internal/dm/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 255
    :goto_2
    :try_start_2
    iget-object v4, p0, Lcom/sprint/internal/dm/DMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 260
    :goto_3
    :try_start_3
    iget-object v4, p0, Lcom/sprint/internal/dm/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 264
    :goto_4
    iput-object v7, p0, Lcom/sprint/internal/dm/DMAgentConnector;->out:Ljava/io/OutputStream;

    .line 265
    iput-object v7, p0, Lcom/sprint/internal/dm/DMAgentConnector;->in:Ljava/io/InputStream;

    .line 266
    iput-object v7, p0, Lcom/sprint/internal/dm/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    goto :goto_0

    .line 243
    :catch_0
    move-exception v1

    .line 244
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "DSA-DMAgentConnector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "closeConnection fail: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 247
    const/4 v3, 0x0

    goto :goto_1

    .line 251
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 252
    .local v2, ioe:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 256
    .end local v2           #ioe:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 257
    .restart local v2       #ioe:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 261
    .end local v2           #ioe:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 262
    .restart local v2       #ioe:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/sprint/internal/dm/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isError()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/sprint/internal/dm/DMAgentConnector;->isError:Z

    return v0
.end method

.method public openConnection()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 77
    sget-boolean v6, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v6, :cond_1

    move v3, v4

    .line 184
    :cond_0
    :goto_0
    return v3

    .line 82
    :cond_1
    const/4 v3, 0x0

    .line 85
    .local v3, result:Z
    :try_start_0
    iget-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    if-eqz v6, :cond_2

    .line 94
    :goto_1
    iget-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    if-nez v6, :cond_3

    move v3, v5

    .line 95
    goto :goto_0

    .line 89
    :cond_2
    new-instance v6, Ljava/net/Socket;

    const-string v7, "localhost"

    const/16 v8, 0x2606

    invoke-direct {v6, v7, v8}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    .line 90
    iget-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    const/16 v7, 0x1388

    invoke-virtual {v6, v7}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "DSA-DMAgentConnector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "openConnection exception: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 161
    const/4 v3, 0x0

    .line 162
    iput-boolean v4, p0, Lcom/sprint/internal/dm/DMAgentConnector;->isError:Z

    .line 164
    if-nez v3, :cond_0

    .line 166
    :try_start_1
    iget-object v4, p0, Lcom/sprint/internal/dm/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 171
    :goto_2
    :try_start_2
    iget-object v4, p0, Lcom/sprint/internal/dm/DMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 176
    :goto_3
    :try_start_3
    iget-object v4, p0, Lcom/sprint/internal/dm/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 180
    :goto_4
    iput-object v9, p0, Lcom/sprint/internal/dm/DMAgentConnector;->out:Ljava/io/OutputStream;

    .line 181
    iput-object v9, p0, Lcom/sprint/internal/dm/DMAgentConnector;->in:Ljava/io/InputStream;

    .line 182
    iput-object v9, p0, Lcom/sprint/internal/dm/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    goto :goto_0

    .line 96
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_4
    iget-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    iput-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->out:Ljava/io/OutputStream;

    .line 97
    iget-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 98
    iget-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    iput-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->in:Ljava/io/InputStream;

    .line 99
    const/16 v6, 0x200

    new-array v2, v6, [B

    .line 101
    .local v2, respond:[B
    sget-boolean v6, Lcom/sprint/internal/dm/DMAgentConnector;->bEncrypt:Z

    if-eqz v6, :cond_7

    .line 102
    iget-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->mCmdType:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/sprint/internal/dm/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->My_hex:Ljava/lang/String;

    .line 103
    iget-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->mCmdType:Ljava/lang/String;

    const-string v7, ":IDOMADM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 105
    iget-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->My_hex:Ljava/lang/String;

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_6

    .line 106
    iget-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->cmdPWD:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/sprint/internal/dm/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->My_hex:Ljava/lang/String;

    .line 108
    iget-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->My_hex:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_5

    .line 110
    sget-object v6, Lcom/sprint/internal/dm/DMAgentConnector;->cmdTY3:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/sprint/internal/dm/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->My_hex:Ljava/lang/String;

    .line 111
    iget-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->My_hex:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4

    move v3, v4

    .line 113
    goto/16 :goto_0

    .line 115
    :cond_4
    const-string v6, "DSA-DMAgentConnector"

    const-string v7, "connection fail:cmdTY3fail"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    .line 116
    goto/16 :goto_0

    .line 118
    :cond_5
    const-string v6, "DSA-DMAgentConnector"

    const-string v7, "connection fail:cmdPWD fail 1"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    .line 119
    goto/16 :goto_0

    :cond_6
    move v3, v4

    .line 125
    goto/16 :goto_0

    .line 127
    :cond_7
    iget-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->out:Ljava/io/OutputStream;

    iget-object v7, p0, Lcom/sprint/internal/dm/DMAgentConnector;->mCmdType:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write([B)V

    .line 128
    iget-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    .line 129
    invoke-static {v2}, Lcom/sprint/internal/dm/DMAgentConnector;->byteToBigHexString([B)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->My_hex:Ljava/lang/String;

    .line 132
    iget-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->My_hex:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    const-string v7, ":IDOMADM"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_a

    .line 133
    iget-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->out:Ljava/io/OutputStream;

    iget-object v7, p0, Lcom/sprint/internal/dm/DMAgentConnector;->cmdPWD:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write([B)V

    .line 134
    iget-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    .line 135
    invoke-static {v2}, Lcom/sprint/internal/dm/DMAgentConnector;->byteToBigHexString([B)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->My_hex:Ljava/lang/String;

    .line 137
    iget-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->mCmdType:Ljava/lang/String;

    const-string v7, ":IDOMADM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 138
    iget-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->My_hex:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    iget-object v7, p0, Lcom/sprint/internal/dm/DMAgentConnector;->cmdPWD:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_9

    .line 140
    iget-object v5, p0, Lcom/sprint/internal/dm/DMAgentConnector;->out:Ljava/io/OutputStream;

    sget-object v6, Lcom/sprint/internal/dm/DMAgentConnector;->cmdTY3:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    .line 141
    iget-object v5, p0, Lcom/sprint/internal/dm/DMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I

    .line 142
    invoke-static {v2}, Lcom/sprint/internal/dm/DMAgentConnector;->byteToBigHexString([B)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sprint/internal/dm/DMAgentConnector;->My_hex:Ljava/lang/String;

    .line 145
    iget-object v5, p0, Lcom/sprint/internal/dm/DMAgentConnector;->My_hex:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    sget-object v6, Lcom/sprint/internal/dm/DMAgentConnector;->cmdTY3:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result v6

    if-ne v5, v6, :cond_8

    :cond_8
    move v3, v4

    .line 148
    goto/16 :goto_0

    :cond_9
    move v3, v5

    .line 152
    goto/16 :goto_0

    :cond_a
    move v3, v4

    .line 156
    goto/16 :goto_0

    .line 167
    .end local v2           #respond:[B
    .restart local v0       #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 168
    .local v1, ioe:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 172
    .end local v1           #ioe:Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 173
    .restart local v1       #ioe:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 177
    .end local v1           #ioe:Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 178
    .restart local v1       #ioe:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4
.end method

.method public sendCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "request"

    .prologue
    .line 317
    sget-boolean v3, Lcom/sprint/internal/dm/DMAgentConnector;->bPrivateKey:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/sprint/internal/dm/DMAgentConnector;->bEncrypt:Z

    if-eqz v3, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/sprint/internal/dm/DMAgentConnector;->GetPrivateKey()Ljava/lang/String;

    .line 321
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/sprint/internal/dm/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/sprint/internal/dm/DMAgentConnector;->out:Ljava/io/OutputStream;

    .line 322
    iget-object v3, p0, Lcom/sprint/internal/dm/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 324
    sget-boolean v3, Lcom/sprint/internal/dm/DMAgentConnector;->bEncrypt:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/sprint/internal/dm/DMAgentConnector;->PrivateKey:Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/sprint/internal/dm/DMAgentConnector;->DmEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 325
    :cond_1
    const-string v3, "DSA-DMAgentConnector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "request_encrpt:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v3, p0, Lcom/sprint/internal/dm/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 328
    iget-object v3, p0, Lcom/sprint/internal/dm/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/sprint/internal/dm/DMAgentConnector;->in:Ljava/io/InputStream;

    .line 329
    const-string v3, ""

    iput-object v3, p0, Lcom/sprint/internal/dm/DMAgentConnector;->Result:Ljava/lang/String;

    .line 330
    invoke-direct {p0}, Lcom/sprint/internal/dm/DMAgentConnector;->readRsponse()V

    .line 331
    const-string v3, "DSA-DMAgentConnector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sprint/internal/dm/DMAgentConnector;->Result:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    sget-boolean v3, Lcom/sprint/internal/dm/DMAgentConnector;->bEncrypt:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/sprint/internal/dm/DMAgentConnector;->PrivateKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/sprint/internal/dm/DMAgentConnector;->Result:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/sprint/internal/dm/DMAgentConnector;->DmDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 334
    .local v2, result:Ljava/lang/String;
    :goto_0
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 335
    .local v1, idx:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 336
    const/4 v3, 0x0

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 342
    .end local v1           #idx:I
    .end local v2           #result:Ljava/lang/String;
    :cond_2
    :goto_1
    return-object v2

    .line 332
    :cond_3
    iget-object v2, p0, Lcom/sprint/internal/dm/DMAgentConnector;->Result:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "DSA-DMAgentConnector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendCommand fail:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sprint/internal/dm/DMAgentConnector;->isError:Z

    .line 341
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 342
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public sendReadCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "cmdID"

    .prologue
    .line 272
    sget-boolean v2, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 275
    :goto_0
    return-object v2

    .line 273
    :cond_0
    const-string v2, "R"

    invoke-direct {p0, v2, p1}, Lcom/sprint/internal/dm/DMAgentConnector;->transfer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, request:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sprint/internal/dm/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, response:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/sprint/internal/dm/DMAgentConnector;->parseReadResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public sendWriteCommand(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "cmdID"
    .parameter "hex"

    .prologue
    .line 278
    sget-boolean v1, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 280
    :goto_0
    return v1

    .line 279
    :cond_0
    const-string v1, "W"

    invoke-direct {p0, v1, p1, p2}, Lcom/sprint/internal/dm/DMAgentConnector;->transfer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, request:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sprint/internal/dm/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sprint/internal/dm/DMAgentConnector;->parseWriteResponse(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method
