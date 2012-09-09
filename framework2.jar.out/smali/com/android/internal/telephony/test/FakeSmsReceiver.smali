.class public Lcom/android/internal/telephony/test/FakeSmsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FakeSmsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;
    }
.end annotation


# static fields
.field private static final CDMA_FAKE_SMS:I = 0x1

.field public static CDMA_FAKE_SMS_ACTION:Ljava/lang/String; = null

.field private static final DEBUG:Z = true

.field private static final FAKE_CDMA_SMS_MESSAGE:I = 0x1

.field private static final FAKE_GSM_CB_MESSAGE:I = 0x3

.field private static final FAKE_GSM_SMS_MESSAGE:I = 0x2

.field public static GSM_FAKE_CB_ACTION:Ljava/lang/String; = null

.field private static final GSM_FAKE_SMS:I = 0x2

.field public static GSM_FAKE_SMS_ACTION:Ljava/lang/String; = null

.field private static final HTC_DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = true

.field private static final NUMBERING_PLAN_DATA:B = 0x3t

.field private static final NUMBERING_PLAN_PRIVATE:B = 0x9t

.field private static final NUMBERING_PLAN_TELEPHONY:B = 0x1t

.field private static final NUMBERING_PLAN_TELEX:B = 0x4t

.field private static final NUMBERING_PLAN_UNKNOWN:B = 0x0t

.field private static final NUMBERING_TYPE_ABBREVIATED:B = 0x6t

.field private static final NUMBERING_TYPE_INTERNATIONAL:B = 0x1t

.field private static final NUMBERING_TYPE_INTERNET_EMAIL_ADDRESS:B = 0x2t

.field private static final NUMBERING_TYPE_INTERNET_PROTOCOL:B = 0x1t

.field private static final NUMBERING_TYPE_NATIONAL:B = 0x2t

.field private static final NUMBERING_TYPE_NETWORK_SPECIFIC:B = 0x3t

.field private static final NUMBERING_TYPE_SUBSCRIBER:B = 0x4t

.field private static final NUMBERING_TYPE_UNKNOWN:B = 0x0t

.field private static final SUBADDRESS_TYPE_NSAP:B = 0x0t

.field private static final SUBADDRESS_TYPE_USER_SPECIFIED:B = 0x1t

.field private static final TAG:Ljava/lang/String; = "FakeSmsReceiver"

.field private static final TYPE_ABBREVIATED:I = 0x5

.field private static final TYPE_INTERNATIONAL:I = 0x1

.field private static final TYPE_INTERNET_EMAIL_ADDRESS:I = 0x8

.field private static final TYPE_INTERNET_PROTOCOL:I = 0x7

.field private static final TYPE_NATIONAL:I = 0x2

.field private static final TYPE_NETWORK_SPECIFIC:I = 0x3

.field private static final TYPE_RESERVED:I = 0x9

.field private static final TYPE_SUBSCRIBER:I = 0x4

.field private static final TYPE_UNKNOWN:I = 0x0

.field private static final TYPE_UNKNOWN_DATA_NETWORK:I = 0x6

.field private static final bitsMaskRight:[S

.field private static final dtmfDigitToAscII:[B

.field private static mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;


# instance fields
.field TransportParam_subAddr:[B

.field TransportParam_subAddrType:B

.field private dataEnd:I

.field public mCdmaSMSDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

.field private mContext:Landroid/content/Context;

.field public mGsmSMSDispatcher:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

.field private mHandler:Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

.field private mMsgType:B

.field private mParcel:Landroid/os/Parcel;

.field private mSenderThread:Landroid/os/HandlerThread;

.field private m_filter:Landroid/content/IntentFilter;

.field private param_len:S

.field private smsData:[B

.field private startBitIndex_decodeAddress:I

.field private startIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const/16 v0, 0x9

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->bitsMaskRight:[S

    .line 75
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dtmfDigitToAscII:[B

    .line 99
    const-string v0, "com.android.mms.CDMAfakesms"

    sput-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->CDMA_FAKE_SMS_ACTION:Ljava/lang/String;

    .line 100
    const-string v0, "com.android.mms.GSMfakesms"

    sput-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->GSM_FAKE_SMS_ACTION:Ljava/lang/String;

    .line 101
    const-string v0, "com.android.mms.GSMfakecb"

    sput-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->GSM_FAKE_CB_ACTION:Ljava/lang/String;

    return-void

    .line 74
    nop

    :array_0
    .array-data 0x2
        0x0t 0x0t
        0x1t 0x0t
        0x3t 0x0t
        0x7t 0x0t
        0xft 0x0t
        0x1ft 0x0t
        0x3ft 0x0t
        0x7ft 0x0t
        0xfft 0x0t
    .end array-data

    .line 75
    nop

    :array_1
    .array-data 0x1
        0x0t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x30t
        0x2at
        0x23t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 132
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->m_filter:Landroid/content/IntentFilter;

    .line 82
    iput-object v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mSenderThread:Landroid/os/HandlerThread;

    .line 83
    iput-object v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mHandler:Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    .line 84
    iput-object v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mContext:Landroid/content/Context;

    .line 92
    iput-object v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    .line 133
    iput-object p1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mContext:Landroid/content/Context;

    .line 134
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FakeSmsThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mSenderThread:Landroid/os/HandlerThread;

    .line 135
    iget-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 136
    new-instance v0, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;-><init>(Lcom/android/internal/telephony/test/FakeSmsReceiver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mHandler:Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->m_filter:Landroid/content/IntentFilter;

    sget-object v1, Lcom/android/internal/telephony/test/FakeSmsReceiver;->CDMA_FAKE_SMS_ACTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->m_filter:Landroid/content/IntentFilter;

    sget-object v1, Lcom/android/internal/telephony/test/FakeSmsReceiver;->GSM_FAKE_SMS_ACTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->m_filter:Landroid/content/IntentFilter;

    sget-object v1, Lcom/android/internal/telephony/test/FakeSmsReceiver;->GSM_FAKE_CB_ACTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->m_filter:Landroid/content/IntentFilter;

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p1, p0, v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/SMSDispatcher;I)V
    .locals 5
    .parameter "context"
    .parameter "dispatcher"
    .parameter "phoneType"

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->m_filter:Landroid/content/IntentFilter;

    .line 82
    iput-object v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mSenderThread:Landroid/os/HandlerThread;

    .line 83
    iput-object v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mHandler:Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    .line 84
    iput-object v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mContext:Landroid/content/Context;

    .line 92
    iput-object v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    .line 105
    const-string v0, "Jerry1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new FakeSmsReceiver, phone type> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iput-object p1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mContext:Landroid/content/Context;

    .line 110
    if-ne p3, v3, :cond_0

    .line 111
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CDMAFakeSmsThread"

    invoke-direct {v0, v1, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mSenderThread:Landroid/os/HandlerThread;

    .line 115
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 116
    new-instance v0, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;-><init>(Lcom/android/internal/telephony/test/FakeSmsReceiver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mHandler:Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    .line 120
    if-ne p3, v3, :cond_1

    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->m_filter:Landroid/content/IntentFilter;

    const-string v1, "com.android.mms.CDMAfakesms"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->m_filter:Landroid/content/IntentFilter;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 129
    const-string v0, "Jerry1"

    const-string v1, "111111111111111111111111111111111111111111111111"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void

    .line 113
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GSMFakeSmsThread"

    invoke-direct {v0, v1, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mSenderThread:Landroid/os/HandlerThread;

    goto :goto_0

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->m_filter:Landroid/content/IntentFilter;

    const-string v1, "com.android.mms.GSMfakesms"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->m_filter:Landroid/content/IntentFilter;

    const-string v1, "com.android.mms.GSMfakecb"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/test/FakeSmsReceiver;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->parseCdmaSMS(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/test/FakeSmsReceiver;)Landroid/os/Parcel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    return-object v0
.end method

.method private decodeAddress(IZI)[B
    .locals 9
    .parameter "startBitIndex"
    .parameter "dtmfDigit"
    .parameter "numberingType"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v1, 0x0

    .line 298
    iget v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    add-int/lit8 v5, p1, 0x8

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-ge v4, v5, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-object v1

    .line 302
    :cond_1
    invoke-direct {p0, p1, v6}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v3

    .line 303
    .local v3, numberOfCharacters:I
    add-int/lit8 p1, p1, 0x8

    .line 304
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    and-int/lit16 v5, v3, 0xff

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeByte(B)V

    .line 306
    if-nez v3, :cond_2

    .line 307
    iput p1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startBitIndex_decodeAddress:I

    goto :goto_0

    .line 314
    :cond_2
    if-eqz p2, :cond_3

    .line 315
    iget v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    shl-int/lit8 v5, v3, 0x2

    add-int/2addr v5, p1

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-lt v4, v5, :cond_0

    .line 319
    new-array v1, v3, [B

    .line 320
    .local v1, addressDecoded:[B
    const/4 v0, 0x0

    .local v0, addrIndex:I
    :goto_1
    if-ge v0, v3, :cond_4

    .line 321
    const/4 v4, 0x4

    invoke-direct {p0, p1, v4}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 322
    add-int/lit8 p1, p1, 0x4

    .line 320
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 326
    .end local v0           #addrIndex:I
    .end local v1           #addressDecoded:[B
    :cond_3
    iget v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    shl-int/lit8 v5, v3, 0x3

    add-int/2addr v5, p1

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-lt v4, v5, :cond_0

    .line 329
    packed-switch p3, :pswitch_data_0

    .line 336
    new-array v1, v3, [B

    .line 337
    .restart local v1       #addressDecoded:[B
    const/4 v0, 0x0

    .restart local v0       #addrIndex:I
    :goto_2
    if-ge v0, v3, :cond_4

    .line 338
    invoke-direct {p0, p1, v6}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v4

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 339
    add-int/lit8 p1, p1, 0x8

    .line 337
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 332
    .end local v0           #addrIndex:I
    .end local v1           #addressDecoded:[B
    :pswitch_0
    invoke-direct {p0, p1, v6, v3}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStreamIntoBytes(III)[B

    move-result-object v1

    .line 333
    .restart local v1       #addressDecoded:[B
    shl-int/lit8 v4, v3, 0x3

    add-int/2addr p1, v4

    .line 344
    :cond_4
    if-ne p3, v8, :cond_5

    .line 345
    array-length v4, v1

    add-int/lit8 v4, v4, 0x1

    new-array v2, v4, [B

    .line 346
    .local v2, addressInternational:[B
    const/16 v4, 0x2b

    aput-byte v4, v2, v7

    .line 347
    array-length v4, v1

    invoke-static {v1, v7, v2, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 348
    move-object v1, v2

    .line 350
    .end local v2           #addressInternational:[B
    :cond_5
    iput p1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startBitIndex_decodeAddress:I

    goto :goto_0

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private decodeBCDnumber(I)I
    .locals 4
    .parameter "bcdOctet"

    .prologue
    const/16 v3, 0x9

    .line 432
    shr-int/lit8 v2, p1, 0x4

    and-int/lit8 v0, v2, 0xf

    .line 433
    .local v0, highBCD:I
    and-int/lit8 v1, p1, 0xf

    .line 434
    .local v1, lowBCD:I
    if-gt v0, v3, :cond_0

    if-le v1, v3, :cond_1

    .line 435
    :cond_0
    const/4 v2, 0x0

    .line 437
    :goto_0
    return v2

    :cond_1
    mul-int/lit8 v2, v0, 0xa

    add-int/2addr v2, v1

    goto :goto_0
.end method

.method private decodeBitStream(II)I
    .locals 8
    .parameter "startBitIndex"
    .parameter "lengthOfBits"

    .prologue
    const/16 v7, 0x8

    .line 357
    shr-int/lit8 v2, p1, 0x3

    .line 358
    .local v2, bytesOffset:I
    and-int/lit8 v0, p1, 0x7

    .line 359
    .local v0, bitsOffset:I
    iget-object v5, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    aget-byte v5, v5, v2

    and-int/lit16 v4, v5, 0xff

    .line 361
    .local v4, returnValue:I
    add-int v5, v0, p2

    if-gt v5, v7, :cond_1

    .line 362
    rsub-int/lit8 v5, v0, 0x8

    sub-int/2addr v5, p2

    shr-int v5, v4, v5

    sget-object v6, Lcom/android/internal/telephony/test/FakeSmsReceiver;->bitsMaskRight:[S

    aget-short v6, v6, p2

    and-int v4, v5, v6

    .line 378
    :cond_0
    :goto_0
    return v4

    .line 365
    :cond_1
    sget-object v5, Lcom/android/internal/telephony/test/FakeSmsReceiver;->bitsMaskRight:[S

    rsub-int/lit8 v6, v0, 0x8

    aget-short v5, v5, v6

    and-int/2addr v4, v5

    .line 366
    add-int/lit8 v3, v2, 0x1

    .line 367
    .local v3, bytesOffsetRemaining:I
    rsub-int/lit8 v5, v0, 0x8

    sub-int v1, p2, v5

    .line 368
    .local v1, bitsRemaining:I
    :goto_1
    if-le v1, v7, :cond_2

    .line 369
    shl-int/lit8 v5, v4, 0x8

    iget-object v6, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    aget-byte v6, v6, v3

    and-int/lit16 v6, v6, 0xff

    or-int v4, v5, v6

    .line 370
    add-int/lit8 v3, v3, 0x1

    .line 371
    add-int/lit8 v1, v1, -0x8

    goto :goto_1

    .line 373
    :cond_2
    if-lez v1, :cond_0

    .line 374
    shl-int v5, v4, v1

    iget-object v6, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    aget-byte v6, v6, v3

    rsub-int/lit8 v7, v1, 0x8

    shr-int/2addr v6, v7

    sget-object v7, Lcom/android/internal/telephony/test/FakeSmsReceiver;->bitsMaskRight:[S

    aget-short v7, v7, v1

    and-int/2addr v6, v7

    or-int v4, v5, v6

    goto :goto_0
.end method

.method private decodeBitStreamIntoBytes(III)[B
    .locals 3
    .parameter "startBitIndex"
    .parameter "lengthOfBits"
    .parameter "lengthOfBytes"

    .prologue
    .line 284
    new-array v0, p3, [B

    .line 287
    .local v0, byteArray:[B
    const/4 v1, 0x0

    .local v1, copyIndex:I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 288
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 289
    add-int/2addr p1, p2

    .line 287
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 292
    :cond_0
    return-object v0
.end method

.method private decodeParameter_header()B
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 198
    iget v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    iget v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    sub-int/2addr v2, v3

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    move v0, v1

    .line 208
    :cond_0
    :goto_0
    return v0

    .line 202
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    aget-byte v0, v2, v3

    .line 203
    .local v0, param_id:B
    iget-object v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    iput-short v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->param_len:S

    .line 204
    iget v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    .line 205
    iget v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    iget v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    sub-int/2addr v2, v3

    iget-short v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->param_len:S

    if-ge v2, v3, :cond_0

    move v0, v1

    .line 206
    goto :goto_0
.end method

.method private decodeTransportParamAddress()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 382
    iget v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    iget v10, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    sub-int/2addr v7, v10

    if-ge v7, v8, :cond_1

    .line 428
    :cond_0
    return-void

    .line 386
    :cond_1
    const/4 v2, 0x0

    .line 387
    .local v2, TransportParam_fromAddrType:I
    iget-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v10, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    aget-byte v7, v7, v10

    and-int/lit16 v7, v7, 0x80

    shr-int/lit8 v3, v7, 0x7

    .line 388
    .local v3, digitMode:I
    iget-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v10, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    aget-byte v7, v7, v10

    and-int/lit8 v7, v7, 0x40

    shr-int/lit8 v5, v7, 0x6

    .line 392
    .local v5, numberMode:I
    iget-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 393
    iget-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v7, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    iget v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    shl-int/lit8 v7, v7, 0x3

    add-int/lit8 v6, v7, 0x2

    .line 397
    .local v6, startBitIndex:I
    if-eqz v3, :cond_4

    .line 398
    if-eqz v5, :cond_2

    move v7, v8

    :goto_0
    const/4 v10, 0x3

    invoke-direct {p0, v6, v10}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v10

    int-to-byte v10, v10

    invoke-direct {p0, v7, v10}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->translateAddrNumberType(ZB)I

    move-result v2

    .line 399
    add-int/lit8 v6, v6, 0x3

    .line 401
    if-nez v5, :cond_3

    .line 402
    iget v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    add-int/lit8 v10, v6, 0x4

    add-int/lit8 v10, v10, 0x7

    shr-int/lit8 v10, v10, 0x3

    if-lt v7, v10, :cond_0

    .line 406
    const/4 v7, 0x4

    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v7

    int-to-byte v1, v7

    .line 407
    .local v1, TransportParam_fromAddrPlan:I
    add-int/lit8 v6, v6, 0x4

    .line 418
    :goto_1
    iget-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v7, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    iget-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v7, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 421
    if-nez v3, :cond_5

    :goto_2
    invoke-direct {p0, v6, v8, v2}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeAddress(IZI)[B

    move-result-object v0

    .line 422
    .local v0, TransportParam_fromAddr:[B
    if-eqz v0, :cond_0

    .line 424
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    array-length v7, v0

    if-ge v4, v7, :cond_0

    .line 425
    iget-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    aget-byte v8, v0, v4

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeByte(B)V

    .line 424
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .end local v0           #TransportParam_fromAddr:[B
    .end local v1           #TransportParam_fromAddrPlan:I
    .end local v4           #i:I
    :cond_2
    move v7, v9

    .line 398
    goto :goto_0

    .line 410
    :cond_3
    const/4 v1, 0x0

    .restart local v1       #TransportParam_fromAddrPlan:I
    goto :goto_1

    .line 414
    .end local v1           #TransportParam_fromAddrPlan:I
    :cond_4
    const/4 v2, 0x0

    .line 415
    const/4 v1, 0x0

    .restart local v1       #TransportParam_fromAddrPlan:I
    goto :goto_1

    :cond_5
    move v8, v9

    .line 421
    goto :goto_2
.end method

.method private decodeTransportParamServiceCategory()V
    .locals 4

    .prologue
    .line 225
    iget v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    iget v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 233
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 232
    .local v0, service:I
    iget-object v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method private decodeTransportParamSubAddress()I
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/16 v11, 0x8

    const/4 v7, 0x0

    .line 443
    iget v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    iget v9, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    sub-int/2addr v8, v9

    const/4 v9, 0x2

    if-ge v8, v9, :cond_1

    move v4, v7

    .line 557
    :cond_0
    :goto_0
    return v4

    .line 447
    :cond_1
    iget-object v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v9, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xe0

    shr-int/lit8 v8, v8, 0x5

    int-to-byte v8, v8

    iput-byte v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddrType:B

    .line 448
    iget-object v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v9, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    aget-byte v8, v8, v9

    and-int/lit8 v8, v8, 0x10

    shr-int/lit8 v5, v8, 0x4

    .line 449
    .local v5, oddCHARi:I
    iget-object v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v9, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    aget-byte v8, v8, v9

    and-int/lit8 v8, v8, 0xf

    shl-int/lit8 v8, v8, 0x4

    iget-object v9, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v10, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    add-int/lit8 v10, v10, 0x1

    aget-byte v9, v9, v10

    shr-int/lit8 v9, v9, 0x4

    and-int/lit8 v9, v9, 0xf

    or-int v4, v8, v9

    .line 452
    .local v4, numberOfCharacters:I
    iget-object v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    iget-byte v9, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddrType:B

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 453
    iget-object v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v8, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    if-nez v4, :cond_2

    move v4, v7

    .line 457
    goto :goto_0

    .line 459
    :cond_2
    shl-int/lit8 v8, v4, 0x1

    sub-int v4, v8, v5

    .line 460
    iget v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    iget v9, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    sub-int/2addr v8, v9

    shr-int/lit8 v9, v4, 0x1

    add-int/lit8 v9, v9, 0x2

    if-ge v8, v9, :cond_3

    move v4, v7

    .line 461
    goto :goto_0

    .line 464
    :cond_3
    iget v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    shl-int/lit8 v8, v8, 0x3

    add-int/lit8 v6, v8, 0xc

    .line 468
    .local v6, startBitIndex:I
    iget-byte v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddrType:B

    packed-switch v8, :pswitch_data_0

    move v4, v7

    .line 554
    goto :goto_0

    .line 470
    :pswitch_0
    iget v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    add-int/lit8 v9, v6, 0x8

    add-int/lit8 v9, v9, 0x7

    shr-int/lit8 v9, v9, 0x3

    if-ge v8, v9, :cond_4

    move v4, v7

    .line 471
    goto :goto_0

    .line 473
    :cond_4
    invoke-direct {p0, v6, v11}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v2

    .line 474
    .local v2, afiField:I
    add-int/lit8 v6, v6, 0x8

    .line 475
    add-int/lit8 v4, v4, -0x2

    .line 477
    sparse-switch v2, :sswitch_data_0

    move v4, v7

    .line 545
    goto :goto_0

    .line 479
    :sswitch_0
    iget v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    add-int/lit8 v9, v6, 0x10

    add-int/lit8 v9, v9, 0x7

    shr-int/lit8 v9, v9, 0x3

    if-ge v8, v9, :cond_5

    move v4, v7

    .line 480
    goto/16 :goto_0

    .line 482
    :cond_5
    invoke-direct {p0, v6, v11}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBCDnumber(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x64

    add-int/lit8 v9, v6, 0x8

    invoke-direct {p0, v9, v11}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBCDnumber(I)I

    move-result v9

    add-int/2addr v8, v9

    int-to-short v0, v8

    .line 484
    .local v0, NSAP_internetCodePoint:S
    add-int/lit8 v6, v6, 0x10

    .line 486
    packed-switch v0, :pswitch_data_1

    move v4, v7

    .line 516
    goto/16 :goto_0

    .line 488
    :pswitch_1
    iget v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    add-int/lit16 v9, v6, 0x80

    add-int/lit8 v9, v9, 0x7

    shr-int/lit8 v9, v9, 0x3

    if-ge v8, v9, :cond_6

    move v4, v7

    .line 489
    goto/16 :goto_0

    .line 491
    :cond_6
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 492
    .local v3, ipAddress:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, addrIndex:I
    :goto_1
    if-ge v1, v11, :cond_8

    .line 493
    const/16 v7, 0x10

    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 494
    add-int/lit8 v6, v6, 0x10

    .line 495
    const/4 v7, 0x7

    if-ge v1, v7, :cond_7

    .line 496
    new-instance v7, Ljava/lang/String;

    const-string v8, ":"

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 492
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 499
    :cond_8
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddr:[B

    goto/16 :goto_0

    .line 502
    .end local v1           #addrIndex:I
    .end local v3           #ipAddress:Ljava/lang/String;
    :pswitch_2
    iget v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    add-int/lit8 v9, v6, 0x20

    add-int/lit8 v9, v9, 0x7

    shr-int/lit8 v9, v9, 0x3

    if-ge v8, v9, :cond_9

    move v4, v7

    .line 503
    goto/16 :goto_0

    .line 505
    :cond_9
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 506
    .restart local v3       #ipAddress:Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1       #addrIndex:I
    :goto_2
    if-ge v1, v12, :cond_b

    .line 507
    invoke-direct {p0, v6, v11}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toOctalString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 508
    add-int/lit8 v6, v6, 0x8

    .line 509
    const/4 v7, 0x3

    if-ge v1, v7, :cond_a

    .line 510
    new-instance v7, Ljava/lang/String;

    const-string v8, "."

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 506
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 513
    :cond_b
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddr:[B

    goto/16 :goto_0

    .line 520
    .end local v0           #NSAP_internetCodePoint:S
    .end local v1           #addrIndex:I
    .end local v3           #ipAddress:Ljava/lang/String;
    :sswitch_1
    shr-int/lit8 v4, v4, 0x1

    .line 521
    const/16 v7, 0x13

    if-le v4, v7, :cond_c

    .line 523
    const/16 v4, 0x13

    .line 525
    :cond_c
    new-array v7, v4, [B

    iput-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddr:[B

    .line 526
    const/4 v1, 0x0

    .restart local v1       #addrIndex:I
    :goto_3
    if-ge v1, v4, :cond_0

    .line 527
    iget-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddr:[B

    invoke-direct {p0, v6, v11}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v8

    and-int/lit8 v8, v8, 0x7f

    int-to-byte v8, v8

    aput-byte v8, v7, v1

    .line 528
    add-int/lit8 v6, v6, 0x8

    .line 526
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 532
    .end local v1           #addrIndex:I
    :sswitch_2
    shr-int/lit8 v4, v4, 0x1

    .line 533
    const/16 v7, 0x9

    if-le v4, v7, :cond_d

    .line 535
    const/16 v4, 0x9

    .line 537
    :cond_d
    new-array v7, v4, [B

    iput-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddr:[B

    .line 538
    const/4 v1, 0x0

    .restart local v1       #addrIndex:I
    :goto_4
    if-ge v1, v4, :cond_0

    .line 539
    iget-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddr:[B

    invoke-direct {p0, v6, v11}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v8

    and-int/lit8 v8, v8, 0x7f

    int-to-byte v8, v8

    aput-byte v8, v7, v1

    .line 540
    add-int/lit8 v6, v6, 0x8

    .line 538
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 549
    .end local v1           #addrIndex:I
    .end local v2           #afiField:I
    :pswitch_3
    invoke-direct {p0, v6, v12, v4}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStreamIntoBytes(III)[B

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddr:[B

    .line 550
    shl-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    .line 552
    goto/16 :goto_0

    .line 468
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 477
    :sswitch_data_0
    .sparse-switch
        0x35 -> :sswitch_0
        0x50 -> :sswitch_1
        0x51 -> :sswitch_2
    .end sparse-switch

    .line 486
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private decodeTransportParamTeleserviceId()V
    .locals 4

    .prologue
    .line 213
    iget v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    iget v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 221
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 219
    .local v0, id:I
    iget-object v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    iget-object v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    iget-byte v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mMsgType:B

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 687
    iget-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 689
    iput-object v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    .line 691
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    .line 693
    iput-byte v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mMsgType:B

    .line 694
    iput v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startBitIndex_decodeAddress:I

    .line 695
    iput-byte v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddrType:B

    .line 696
    iput-object v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddr:[B

    .line 697
    iput v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    .line 698
    iput v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    .line 699
    iput-object v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    .line 700
    return-void
.end method

.method private parseCdmaSMS(Ljava/lang/String;)V
    .locals 9
    .parameter "pdu"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 564
    invoke-direct {p0}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->init()V

    .line 565
    const/4 v3, -0x1

    .line 566
    .local v3, preParam_id:I
    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    .line 571
    iget v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    .line 572
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    aget-byte v4, v4, v7

    iput-byte v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mMsgType:B

    .line 573
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    array-length v4, v4

    iput v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    .line 576
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeParameter_header()B

    move-result v2

    .line 577
    .local v2, param_id:B
    iget v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    .line 578
    .local v0, current_dataEnd:I
    iget v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    iget-short v5, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->param_len:S

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    .line 579
    packed-switch v2, :pswitch_data_0

    .line 649
    :goto_0
    :pswitch_0
    iget v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    iput v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    .line 650
    iput v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    .line 651
    iget v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    iget v5, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    if-gt v4, v5, :cond_0

    .line 654
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 655
    const-string v4, "Jerry1"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mParcel.size >"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v6}, Landroid/os/Parcel;->dataSize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    return-void

    .line 581
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeTransportParamTeleserviceId()V

    .line 582
    const/4 v3, 0x0

    .line 583
    goto :goto_0

    .line 585
    :pswitch_2
    if-gez v3, :cond_1

    .line 586
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    iget-byte v5, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mMsgType:B

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeByte(B)V

    .line 588
    const-string v4, "FakeSmsReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set empty tele id. type>0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-byte v6, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mMsgType:B

    invoke-static {v6}, Lcom/android/internal/util/HexDump;->toHexString(B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const/4 v3, 0x0

    .line 591
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeTransportParamServiceCategory()V

    .line 592
    const/4 v3, 0x1

    .line 593
    goto :goto_0

    .line 595
    :pswitch_3
    if-nez v3, :cond_2

    .line 596
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 597
    const/4 v3, 0x1

    .line 599
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeTransportParamAddress()V

    .line 600
    const/4 v3, 0x2

    .line 601
    goto :goto_0

    .line 603
    :pswitch_4
    if-nez v3, :cond_3

    .line 604
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 605
    const/4 v3, 0x1

    .line 607
    :cond_3
    if-ne v3, v8, :cond_4

    .line 608
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 609
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 610
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 611
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 612
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeByte(B)V

    .line 613
    const/4 v3, 0x2

    .line 615
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeTransportParamSubAddress()I

    move-result v4

    if-lez v4, :cond_5

    .line 616
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    iget-object v5, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddr:[B

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 617
    :cond_5
    const/4 v3, 0x3

    .line 618
    goto/16 :goto_0

    .line 620
    :pswitch_5
    if-nez v3, :cond_6

    .line 621
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 622
    const/4 v3, 0x1

    .line 624
    :cond_6
    if-ne v3, v8, :cond_7

    .line 625
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 626
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 627
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 628
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 629
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeByte(B)V

    .line 630
    const/4 v3, 0x2

    .line 633
    :cond_7
    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    .line 634
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 635
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 636
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeByte(B)V

    .line 639
    :cond_8
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    iget-short v5, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->param_len:S

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 640
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-short v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->param_len:S

    if-ge v1, v4, :cond_9

    .line 641
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    iget-object v5, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v6, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    add-int/2addr v6, v1

    aget-byte v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeByte(B)V

    .line 640
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 644
    :cond_9
    const/16 v3, 0x8

    .line 645
    goto/16 :goto_0

    .line 579
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public static registerReceiver(Landroid/content/Context;Lcom/android/internal/telephony/SMSDispatcher;)Lcom/android/internal/telephony/test/FakeSmsReceiver;
    .locals 2
    .parameter "context"
    .parameter "dispatcher"

    .prologue
    .line 146
    sget-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    if-nez v0, :cond_1

    .line 147
    const-class v1, Lcom/android/internal/telephony/test/FakeSmsReceiver;

    monitor-enter v1

    .line 148
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/test/FakeSmsReceiver;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    .line 151
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :cond_1
    instance-of v0, p1, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    if-eqz v0, :cond_3

    .line 154
    sget-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    check-cast p1, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .end local p1
    iput-object p1, v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mCdmaSMSDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .line 158
    :cond_2
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    return-object v0

    .line 151
    .restart local p1
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 155
    :cond_3
    instance-of v0, p1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    if-eqz v0, :cond_2

    .line 156
    sget-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    check-cast p1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    .end local p1
    iput-object p1, v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mGsmSMSDispatcher:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    goto :goto_0
.end method

.method private translateAddrNumberType(ZB)I
    .locals 2
    .parameter "dataNetwork"
    .parameter "numberType"

    .prologue
    .line 239
    const/16 v0, 0x9

    .line 240
    .local v0, returnValue:I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 241
    packed-switch p2, :pswitch_data_0

    .line 279
    :goto_0
    return v0

    .line 243
    :pswitch_0
    const/4 v0, 0x6

    .line 244
    goto :goto_0

    .line 246
    :pswitch_1
    const/4 v0, 0x7

    .line 247
    goto :goto_0

    .line 249
    :pswitch_2
    const/16 v0, 0x8

    .line 250
    goto :goto_0

    .line 256
    :cond_0
    packed-switch p2, :pswitch_data_1

    :pswitch_3
    goto :goto_0

    .line 258
    :pswitch_4
    const/4 v0, 0x0

    .line 259
    goto :goto_0

    .line 261
    :pswitch_5
    const/4 v0, 0x1

    .line 262
    goto :goto_0

    .line 264
    :pswitch_6
    const/4 v0, 0x2

    .line 265
    goto :goto_0

    .line 267
    :pswitch_7
    const/4 v0, 0x3

    .line 268
    goto :goto_0

    .line 270
    :pswitch_8
    const/4 v0, 0x4

    .line 271
    goto :goto_0

    .line 273
    :pswitch_9
    const/4 v0, 0x5

    .line 274
    goto :goto_0

    .line 241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 256
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_3
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 163
    const-string v0, "FakeSmsReceiver"

    const-string v1, "dispose()> "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    sget-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    if-eqz v0, :cond_0

    .line 168
    sget-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    iget-object v0, v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mHandler:Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->removeMessages(I)V

    .line 169
    sget-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    iget-object v0, v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mHandler:Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->removeMessages(I)V

    .line 170
    sget-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    iget-object v0, v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mHandler:Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->removeMessages(I)V

    .line 171
    sget-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    iget-object v0, v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 172
    sget-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    iget-object v0, v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 173
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    .line 175
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 181
    const-string v2, "Jerry1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received FakeSms Intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string v2, "pdu"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, str:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, action:Ljava/lang/String;
    sget-object v2, Lcom/android/internal/telephony/test/FakeSmsReceiver;->CDMA_FAKE_SMS_ACTION:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 188
    iget-object v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mHandler:Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    iget-object v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mHandler:Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/test/FakeSmsReceiver;->GSM_FAKE_SMS_ACTION:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 190
    iget-object v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mHandler:Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    iget-object v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mHandler:Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1}, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 191
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/test/FakeSmsReceiver;->GSM_FAKE_CB_ACTION:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    iget-object v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mHandler:Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    iget-object v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mHandler:Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1}, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
