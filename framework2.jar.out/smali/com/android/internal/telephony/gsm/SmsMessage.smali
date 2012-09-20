.class public Lcom/android/internal/telephony/gsm/SmsMessage;
.super Lcom/android/internal/telephony/SmsMessageBase;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;,
        Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    }
.end annotation


# static fields
.field private static final KT_SINGLE_SMS_MAX_SEPTETS:I = 0x5a

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static final PROTOCOL_ID_CBS:I = 0x52

.field private static final PROTOCOL_ID_EXTRA:I = 0x53

.field private static final PROTOCOL_ID_LBS:I = 0x51

.field private static final PROTOCOL_ID_LMS:I = 0x4f

.field private static final PROTOCOL_ID_MAX_23_040:I = 0x7f

.field private static final PROTOCOL_ID_OTA_DM:I = 0x7d

.field private static final PROTOCOL_ID_PLATFORM_CALLBACK:I = 0x4d

.field private static final PROTOCOL_ID_RESERVE_SEG1_END:I = 0x2f

.field private static final PROTOCOL_ID_RESERVE_SEG1_START:I = 0x2e

.field private static final PROTOCOL_ID_RESERVE_SEG2_END:I = 0x37

.field private static final PROTOCOL_ID_RESERVE_SEG2_START:I = 0x33

.field private static final PROTOCOL_ID_RESERVE_SEG3_END:I = 0x5d

.field private static final PROTOCOL_ID_RESERVE_SEG3_START:I = 0x48

.field private static final PROTOCOL_ID_RESERVE_SEG4_END:I = 0x6b

.field private static final PROTOCOL_ID_RESERVE_SEG4_START:I = 0x60

.field private static final PROTOCOL_ID_URL_CALLBACK:I = 0x4e

.field private static final PROTOCOL_ID_VOICE_VIDEO:I = 0x48

.field public static final TP_VPF_ABSOLUTE:I = 0x18

.field public static final TP_VPF_ENHANCED:I = 0x8

.field public static final TP_VPF_MASK:I = 0x18

.field public static final TP_VPF_NOT_PRESENT:I = 0x0

.field public static final TP_VPF_RELATIVE:I = 0x10


# instance fields
.field private automaticDeletion:Z

.field private dataCodingScheme:I

.field private forSubmit:Z

.field private isStatusReportMessage:Z

.field private mRawSmsc:[B

.field private messageClass:Landroid/telephony/SmsMessage$MessageClass;

.field private mti:I

.field private mwiCounter:I

.field private protocolIdentifier:I

.field private recipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

.field private replyPathPresent:Z

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 166
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    .line 91
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z

    .line 114
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isStatusReportMessage:Z

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiCounter:I

    .line 167
    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->isCdmaFormat:Z

    .line 168
    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 1
    .parameter "msgBody"
    .parameter "use7bitOnly"

    .prologue
    .line 1117
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 11
    .parameter "msgBody"
    .parameter "use7bitOnly"
    .parameter "nli"

    .prologue
    const/4 v9, 0x0

    const/16 v2, 0xa0

    const/16 v1, 0x99

    const/4 v8, 0x1

    const/4 v10, -0x1

    .line 1133
    new-instance v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    invoke-direct {v6}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .line 1135
    .local v6, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    if-nez p1, :cond_1

    move v7, v8

    :goto_0
    :try_start_0
    invoke-static {p0, v7, p2}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;ZI)I

    move-result v5

    .line 1136
    .local v5, septets:I
    iput v5, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 1139
    const/4 v7, 0x2

    if-ne p2, v7, :cond_3

    .line 1140
    if-ne p2, v10, :cond_2

    .line 1157
    .local v2, maxSeptets:I
    :goto_1
    const/4 v7, 0x2

    if-ne p2, v7, :cond_c

    .line 1158
    if-ne p2, v10, :cond_b

    .line 1174
    .local v1, maxConcatenatedSeptets:I
    :goto_2
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v10, 0xd2

    if-ne v7, v10, :cond_14

    .line 1175
    const/16 v2, 0x50

    .line 1176
    const/16 v1, 0x50

    .line 1184
    :cond_0
    :goto_3
    if-le v5, v2, :cond_16

    .line 1185
    rem-int v7, v5, v1

    if-nez v7, :cond_15

    .line 1186
    div-int v7, v5, v1

    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1187
    const/4 v7, 0x0

    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1197
    :goto_4
    const/4 v7, 0x1

    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 1244
    .end local v1           #maxConcatenatedSeptets:I
    .end local v2           #maxSeptets:I
    .end local v5           #septets:I
    :goto_5
    return-object v6

    :cond_1
    move v7, v9

    .line 1135
    goto :goto_0

    .line 1140
    .restart local v5       #septets:I
    :cond_2
    const/16 v2, 0x9b

    goto :goto_1

    .line 1142
    :cond_3
    if-ne p2, v8, :cond_5

    .line 1143
    if-ne p2, v10, :cond_4

    .restart local v2       #maxSeptets:I
    :goto_6
    goto :goto_1

    .end local v2           #maxSeptets:I
    :cond_4
    const/16 v2, 0x9b

    goto :goto_6

    .line 1145
    :cond_5
    const/16 v7, 0xe

    if-ne p2, v7, :cond_7

    .line 1146
    if-ne p2, v10, :cond_6

    .restart local v2       #maxSeptets:I
    :cond_6
    goto :goto_1

    .line 1148
    .end local v2           #maxSeptets:I
    :cond_7
    const/4 v7, 0x3

    if-ne p2, v7, :cond_9

    .line 1149
    if-ne p2, v10, :cond_8

    .restart local v2       #maxSeptets:I
    :goto_7
    goto :goto_1

    .end local v2           #maxSeptets:I
    :cond_8
    const/16 v2, 0x98

    goto :goto_7

    .line 1152
    :cond_9
    if-ne p2, v10, :cond_a

    .restart local v2       #maxSeptets:I
    :goto_8
    goto :goto_1

    .end local v2           #maxSeptets:I
    :cond_a
    const/16 v2, 0x98

    goto :goto_8

    .line 1158
    .restart local v2       #maxSeptets:I
    :cond_b
    const/16 v1, 0x95

    goto :goto_2

    .line 1160
    :cond_c
    if-ne p2, v8, :cond_e

    .line 1161
    if-ne p2, v10, :cond_d

    .restart local v1       #maxConcatenatedSeptets:I
    :goto_9
    goto :goto_2

    .end local v1           #maxConcatenatedSeptets:I
    :cond_d
    const/16 v1, 0x95

    goto :goto_9

    .line 1163
    :cond_e
    const/16 v7, 0xe

    if-ne p2, v7, :cond_10

    .line 1164
    if-ne p2, v10, :cond_f

    .restart local v1       #maxConcatenatedSeptets:I
    :cond_f
    goto :goto_2

    .line 1166
    .end local v1           #maxConcatenatedSeptets:I
    :cond_10
    const/4 v7, 0x3

    if-ne p2, v7, :cond_12

    .line 1167
    if-ne p2, v10, :cond_11

    .restart local v1       #maxConcatenatedSeptets:I
    :goto_a
    goto :goto_2

    .end local v1           #maxConcatenatedSeptets:I
    :cond_11
    const/16 v1, 0x92

    goto :goto_a

    .line 1170
    :cond_12
    if-ne p2, v10, :cond_13

    .restart local v1       #maxConcatenatedSeptets:I
    :goto_b
    goto :goto_2

    .end local v1           #maxConcatenatedSeptets:I
    :cond_13
    const/16 v1, 0x92

    goto :goto_b

    .line 1177
    .restart local v1       #maxConcatenatedSeptets:I
    :cond_14
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v10, 0x50

    if-ne v7, v10, :cond_0

    .line 1178
    const/16 v2, 0x5a

    .line 1179
    const/16 v1, 0x5a

    goto :goto_3

    .line 1189
    :cond_15
    div-int v7, v5, v1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1190
    rem-int v7, v5, v1

    sub-int v7, v1, v7

    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 1198
    .end local v1           #maxConcatenatedSeptets:I
    .end local v2           #maxSeptets:I
    .end local v5           #septets:I
    :catch_0
    move-exception v0

    .line 1199
    .local v0, ex:Lcom/android/internal/telephony/EncodeException;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    mul-int/lit8 v4, v7, 0x2

    .line 1200
    .local v4, octets:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 1202
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v10, 0xd2

    if-ne v7, v10, :cond_18

    .line 1204
    const/16 v7, 0x50

    if-le v4, v7, :cond_17

    .line 1205
    div-int/lit8 v7, v4, 0x50

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1206
    rem-int/lit8 v7, v4, 0x50

    rsub-int/lit8 v7, v7, 0x50

    div-int/lit8 v7, v7, 0x2

    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1242
    :goto_c
    const/4 v7, 0x3

    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    goto/16 :goto_5

    .line 1194
    .end local v0           #ex:Lcom/android/internal/telephony/EncodeException;
    .end local v4           #octets:I
    .restart local v1       #maxConcatenatedSeptets:I
    .restart local v2       #maxSeptets:I
    .restart local v5       #septets:I
    :cond_16
    const/4 v7, 0x1

    :try_start_1
    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1195
    sub-int v7, v2, v5

    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I
    :try_end_1
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 1208
    .end local v1           #maxConcatenatedSeptets:I
    .end local v2           #maxSeptets:I
    .end local v5           #septets:I
    .restart local v0       #ex:Lcom/android/internal/telephony/EncodeException;
    .restart local v4       #octets:I
    :cond_17
    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1209
    rsub-int/lit8 v7, v4, 0x50

    div-int/lit8 v7, v7, 0x2

    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_c

    .line 1211
    :cond_18
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v10, 0x50

    if-ne v7, v10, :cond_1a

    .line 1213
    const/16 v3, 0x5a

    .line 1215
    .local v3, maxlen:I
    if-le v4, v3, :cond_19

    .line 1216
    div-int v7, v4, v3

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1217
    rem-int v7, v4, v3

    sub-int v7, v3, v7

    div-int/lit8 v7, v7, 0x2

    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_c

    .line 1219
    :cond_19
    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1220
    sub-int v7, v3, v4

    div-int/lit8 v7, v7, 0x2

    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_c

    .line 1226
    .end local v3           #maxlen:I
    :cond_1a
    const/16 v7, 0x8c

    if-le v4, v7, :cond_1c

    .line 1227
    rem-int/lit16 v7, v4, 0x86

    if-nez v7, :cond_1b

    .line 1228
    div-int/lit16 v7, v4, 0x86

    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1229
    iput v9, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_c

    .line 1231
    :cond_1b
    div-int/lit16 v7, v4, 0x86

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1232
    rem-int/lit16 v7, v4, 0x86

    rsub-int v7, v7, 0x86

    div-int/lit8 v7, v7, 0x2

    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_c

    .line 1236
    :cond_1c
    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1237
    rsub-int v7, v4, 0x8c

    div-int/lit8 v7, v7, 0x2

    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_c
.end method

.method private checkMWIStatus(Lcom/android/internal/telephony/SmsHeader$MiscElt;)V
    .locals 5
    .parameter "element"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1802
    iget-object v0, p1, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    .line 1804
    .local v0, data:[B
    aget-byte v1, v0, v3

    and-int/lit8 v1, v1, 0x3

    if-nez v1, :cond_2

    .line 1805
    iput-boolean v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    .line 1806
    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiCounter:I

    .line 1807
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiCounter:I

    if-lez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiSense:Z

    .line 1808
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiDontStore:Z

    .line 1815
    :goto_2
    return-void

    :cond_0
    move v1, v3

    .line 1807
    goto :goto_0

    :cond_1
    move v2, v3

    .line 1808
    goto :goto_1

    .line 1811
    :cond_2
    iput-boolean v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    .line 1812
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MWI for fax, email, or other "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 7
    .parameter "index"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 244
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 246
    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    iput p0, v1, Lcom/android/internal/telephony/SmsMessageBase;->indexOnIcc:I

    .line 251
    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    .line 252
    const-string v5, "GSM"

    const-string v6, "SMS parsing failed: Trying to parse a free record"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    .line 269
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v1

    .line 256
    .restart local v1       #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :cond_0
    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x7

    iput v5, v1, Lcom/android/internal/telephony/SmsMessageBase;->statusOnIcc:I

    .line 259
    array-length v5, p1

    add-int/lit8 v3, v5, -0x1

    .line 263
    .local v3, size:I
    new-array v2, v3, [B

    .line 264
    .local v2, pdu:[B
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {p1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 267
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v2           #pdu:[B
    .end local v3           #size:I
    :catch_0
    move-exception v0

    .line 268
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v5, "GSM"

    const-string v6, "SMS PDU parsing failed: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v4

    .line 269
    goto :goto_0
.end method

.method public static createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 5
    .parameter "pdu"

    .prologue
    const/4 v2, 0x0

    .line 175
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 176
    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 183
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v1

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v3, "GSM"

    const-string v4, "SMS PDU parsing failed: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 180
    goto :goto_0

    .line 181
    .end local v0           #ex:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 182
    .local v0, ex:Ljava/lang/OutOfMemoryError;
    const-string v3, "GSM"

    const-string v4, "SMS PDU parsing failed, OOM: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 183
    goto :goto_0
.end method

.method private static encodeUCS2(Ljava/lang/String;[B)[B
    .locals 7
    .parameter "message"
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 573
    const-string v3, "utf-16be"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 575
    .local v1, textPart:[B
    if-eqz p1, :cond_0

    .line 577
    array-length v3, p1

    array-length v4, v1

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [B

    .line 579
    .local v2, userData:[B
    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 580
    array-length v3, p1

    invoke-static {p1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 581
    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    array-length v4, v1

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 586
    :goto_0
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .line 587
    .local v0, ret:[B
    array-length v3, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v5

    .line 588
    array-length v3, v2

    invoke-static {v2, v5, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 589
    return-object v0

    .line 584
    .end local v0           #ret:[B
    .end local v2           #userData:[B
    :cond_0
    move-object v2, v1

    .restart local v2       #userData:[B
    goto :goto_0
.end method

.method public static getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 11
    .parameter "scAddress"
    .parameter "peerAddress"
    .parameter "message"
    .parameter "timeStamp"

    .prologue
    .line 2028
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2029
    :cond_0
    const/4 v5, 0x0

    .line 2097
    :goto_0
    return-object v5

    .line 2031
    :cond_1
    new-instance v5, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v5}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 2033
    .local v5, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-nez p0, :cond_2

    .line 2034
    const/4 v8, 0x0

    iput-object v8, v5, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    .line 2039
    :goto_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v8, 0xb4

    invoke-direct {v0, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2040
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2043
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 2047
    .local v1, daBytes:[B
    array-length v8, v1

    add-int/lit8 v8, v8, -0x1

    mul-int/lit8 v9, v8, 0x2

    array-length v8, v1

    add-int/lit8 v8, v8, -0x1

    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xf0

    const/16 v10, 0xf0

    if-ne v8, v10, :cond_3

    const/4 v8, 0x1

    :goto_2
    sub-int v8, v9, v8

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2050
    const/4 v8, 0x0

    array-length v9, v1

    invoke-virtual {v0, v1, v8, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2051
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2054
    const/4 v3, 0x1

    .line 2056
    .local v3, encoding:I
    const/4 v8, 0x1

    if-ne v3, v8, :cond_4

    .line 2057
    const/4 v8, 0x0

    :try_start_0
    invoke-static {p2, v8}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 2078
    .local v2, data:[B
    :goto_3
    const/4 v8, 0x1

    if-ne v3, v8, :cond_6

    .line 2079
    const/4 v8, 0x0

    aget-byte v8, v2, v8

    and-int/lit16 v8, v8, 0xff

    const/16 v9, 0xa0

    if-le v8, v9, :cond_5

    .line 2080
    const/4 v5, 0x0

    goto :goto_0

    .line 2036
    .end local v0           #bo:Ljava/io/ByteArrayOutputStream;
    .end local v1           #daBytes:[B
    .end local v2           #data:[B
    .end local v3           #encoding:I
    :cond_2
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v8

    iput-object v8, v5, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    goto :goto_1

    .line 2047
    .restart local v0       #bo:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #daBytes:[B
    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    .line 2060
    .restart local v3       #encoding:I
    :cond_4
    const/4 v8, 0x0

    :try_start_1
    invoke-static {p2, v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .restart local v2       #data:[B
    goto :goto_3

    .line 2061
    .end local v2           #data:[B
    :catch_0
    move-exception v7

    .line 2062
    .local v7, uex:Ljava/io/UnsupportedEncodingException;
    :try_start_2
    const-string v8, "GSM"

    const-string v9, "Implausible UnsupportedEncodingException "

    invoke-static {v8, v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2063
    const/4 v5, 0x0

    goto :goto_0

    .line 2066
    .end local v7           #uex:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v4

    .line 2070
    .local v4, ex:Lcom/android/internal/telephony/EncodeException;
    const/4 v8, 0x0

    :try_start_3
    invoke-static {p2, v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v2

    .line 2071
    .restart local v2       #data:[B
    const/4 v3, 0x3

    goto :goto_3

    .line 2072
    .end local v2           #data:[B
    :catch_2
    move-exception v7

    .line 2073
    .restart local v7       #uex:Ljava/io/UnsupportedEncodingException;
    const-string v8, "GSM"

    const-string v9, "Implausible UnsupportedEncodingException "

    invoke-static {v8, v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2074
    const/4 v5, 0x0

    goto :goto_0

    .line 2082
    .end local v4           #ex:Lcom/android/internal/telephony/EncodeException;
    .end local v7           #uex:Ljava/io/UnsupportedEncodingException;
    .restart local v2       #data:[B
    :cond_5
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2091
    :goto_4
    invoke-static {p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->packTimeStamp(Landroid/text/format/Time;)[B

    move-result-object v6

    .line 2092
    .local v6, timeArray:[B
    const/4 v8, 0x0

    array-length v9, v6

    invoke-virtual {v0, v6, v8, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2094
    const/4 v8, 0x0

    array-length v9, v2

    invoke-virtual {v0, v2, v8, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2095
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    iput-object v8, v5, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    goto/16 :goto_0

    .line 2084
    .end local v6           #timeArray:[B
    :cond_6
    const/4 v8, 0x0

    aget-byte v8, v2, v8

    and-int/lit16 v8, v8, 0xff

    const/16 v9, 0x8c

    if-le v8, v9, :cond_7

    .line 2086
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2088
    :cond_7
    const/16 v8, 0xb

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4
.end method

.method public static getDeliveryPdu(Ljava/lang/String;JLjava/lang/String;ZLandroid/os/Bundle;)Landroid/telephony/SmsMessage$DeliveryPdu;
    .locals 17
    .parameter "sOriginatorAddress"
    .parameter "lTimeMilli"
    .parameter "sMessage"
    .parameter "bIs7Bit"
    .parameter "bundle"

    .prologue
    .line 1820
    const/4 v6, 0x1

    .line 1821
    .local v6, is7Bit:Z
    new-instance v10, Landroid/telephony/SmsMessage$DeliveryPdu;

    invoke-direct {v10}, Landroid/telephony/SmsMessage$DeliveryPdu;-><init>()V

    .line 1824
    .local v10, ret:Landroid/telephony/SmsMessage$DeliveryPdu;
    const/4 v9, -0x1

    .line 1825
    .local v9, nli:I
    if-eqz p5, :cond_0

    .line 1826
    const-string v15, "NLI"

    const/16 v16, -0x1

    move-object/from16 v0, p5

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 1829
    :cond_0
    const/4 v15, -0x1

    if-eq v9, v15, :cond_4

    const/16 v15, 0x40

    :goto_0
    or-int/lit8 v15, v15, 0x0

    int-to-byte v8, v15

    .line 1830
    .local v8, mtiByte:B
    move-object/from16 v0, p0

    invoke-static {v0, v8, v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDeliveryPduHead(Ljava/lang/String;BLandroid/telephony/SmsMessage$DeliveryPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v2

    .line 1835
    .local v2, bo:Ljava/io/ByteArrayOutputStream;
    const/4 v15, 0x1

    move/from16 v0, p4

    if-ne v0, v15, :cond_5

    .line 1836
    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1846
    :goto_1
    new-instance v12, Landroid/text/format/Time;

    const-string v15, "UTC"

    invoke-direct {v12, v15}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1848
    .local v12, time:Landroid/text/format/Time;
    move-wide/from16 v0, p1

    invoke-virtual {v12, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1850
    iget v15, v12, Landroid/text/format/Time;->year:I

    invoke-static {v15}, Lcom/android/internal/telephony/IccUtils;->intToBcdByte(I)B

    move-result v15

    invoke-virtual {v2, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1851
    iget v15, v12, Landroid/text/format/Time;->month:I

    add-int/lit8 v15, v15, 0x1

    invoke-static {v15}, Lcom/android/internal/telephony/IccUtils;->intToBcdByte(I)B

    move-result v15

    invoke-virtual {v2, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1852
    iget v15, v12, Landroid/text/format/Time;->monthDay:I

    invoke-static {v15}, Lcom/android/internal/telephony/IccUtils;->intToBcdByte(I)B

    move-result v15

    invoke-virtual {v2, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1853
    iget v15, v12, Landroid/text/format/Time;->hour:I

    invoke-static {v15}, Lcom/android/internal/telephony/IccUtils;->intToBcdByte(I)B

    move-result v15

    invoke-virtual {v2, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1854
    iget v15, v12, Landroid/text/format/Time;->minute:I

    invoke-static {v15}, Lcom/android/internal/telephony/IccUtils;->intToBcdByte(I)B

    move-result v15

    invoke-virtual {v2, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1855
    iget v15, v12, Landroid/text/format/Time;->second:I

    invoke-static {v15}, Lcom/android/internal/telephony/IccUtils;->intToBcdByte(I)B

    move-result v15

    invoke-virtual {v2, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1856
    const/4 v15, 0x0

    invoke-static {v15}, Lcom/android/internal/telephony/IccUtils;->intToBcdByte(I)B

    move-result v15

    invoke-virtual {v2, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1858
    const/4 v14, 0x0

    .line 1859
    .local v14, userData:[B
    const/4 v5, 0x0

    .line 1861
    .local v5, header:[B
    const/4 v15, 0x1

    move/from16 v0, p4

    if-ne v0, v15, :cond_6

    .line 1862
    const/4 v15, -0x1

    if-eq v9, v15, :cond_3

    .line 1863
    const/4 v15, 0x1

    new-array v3, v15, [B

    .line 1864
    .local v3, data:[B
    const/4 v15, 0x0

    int-to-byte v0, v9

    move/from16 v16, v0

    aput-byte v16, v3, v15

    .line 1865
    new-instance v11, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v11}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 1866
    .local v11, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    new-instance v7, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    invoke-direct {v7}, Lcom/android/internal/telephony/SmsHeader$MiscElt;-><init>()V

    .line 1868
    .local v7, miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    const/16 v15, 0xe

    if-eq v9, v15, :cond_1

    .line 1869
    const/16 v15, 0x24

    iput v15, v7, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    .line 1870
    iput-object v3, v7, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    .line 1871
    iget-object v15, v11, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1874
    :cond_1
    const/4 v15, 0x3

    if-ne v9, v15, :cond_2

    .line 1875
    new-instance v7, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    .end local v7           #miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    invoke-direct {v7}, Lcom/android/internal/telephony/SmsHeader$MiscElt;-><init>()V

    .line 1876
    .restart local v7       #miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    const/16 v15, 0x25

    iput v15, v7, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    .line 1877
    iput-object v3, v7, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    .line 1878
    iget-object v15, v11, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1881
    :cond_2
    invoke-static {v11}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v5

    .line 1885
    .end local v3           #data:[B
    .end local v7           #miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    .end local v11           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_3
    :try_start_0
    move-object/from16 v0, p3

    invoke-static {v0, v5, v9}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BI)[B
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 1911
    :goto_2
    const/4 v15, 0x0

    array-length v0, v14

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v2, v14, v15, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1913
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    iput-object v15, v10, Landroid/telephony/SmsMessage$DeliveryPdu;->encodedMessage:[B

    .line 1914
    .end local v10           #ret:Landroid/telephony/SmsMessage$DeliveryPdu;
    :goto_3
    return-object v10

    .line 1829
    .end local v2           #bo:Ljava/io/ByteArrayOutputStream;
    .end local v5           #header:[B
    .end local v8           #mtiByte:B
    .end local v12           #time:Landroid/text/format/Time;
    .end local v14           #userData:[B
    .restart local v10       #ret:Landroid/telephony/SmsMessage$DeliveryPdu;
    :cond_4
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 1838
    .restart local v2       #bo:Ljava/io/ByteArrayOutputStream;
    .restart local v8       #mtiByte:B
    :cond_5
    const/16 v15, 0x8

    invoke-virtual {v2, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_1

    .line 1886
    .restart local v5       #header:[B
    .restart local v12       #time:Landroid/text/format/Time;
    .restart local v14       #userData:[B
    :catch_0
    move-exception v4

    .line 1887
    .local v4, ex:Lcom/android/internal/telephony/EncodeException;
    const-string v15, "SmsMessage"

    const-string v16, "Implausible EncodeException "

    move-object/from16 v0, v16

    invoke-static {v15, v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1891
    .end local v4           #ex:Lcom/android/internal/telephony/EncodeException;
    :cond_6
    :try_start_1
    const-string v15, "utf-16be"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    .line 1893
    array-length v15, v14

    invoke-virtual {v2, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1894
    :catch_1
    move-exception v13

    .line 1895
    .local v13, uex:Ljava/io/UnsupportedEncodingException;
    const-string v15, "SmsMessage"

    const-string v16, "Implausible UnsupportedEncodingException "

    move-object/from16 v0, v16

    invoke-static {v15, v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1896
    const/4 v10, 0x0

    goto :goto_3
.end method

.method private static getDeliveryPduHead(Ljava/lang/String;BLandroid/telephony/SmsMessage$DeliveryPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 8
    .parameter "sOriginatorAddress"
    .parameter "mtiByte"
    .parameter "ret"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1920
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0xb4

    invoke-direct {v0, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1924
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x1

    .line 1925
    .local v2, isWellFormed:Z
    if-nez p0, :cond_0

    .line 1926
    const/4 v5, 0x0

    iput-object v5, p2, Landroid/telephony/SmsMessage$DeliveryPdu;->encodedOriginatorAddress:[B

    .line 1943
    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1949
    if-eqz v2, :cond_2

    .line 1950
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 1956
    .local v1, daBytes:[B
    :goto_1
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    mul-int/lit8 v5, v5, 0x2

    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xf0

    const/16 v7, 0xf0

    if-ne v6, v7, :cond_3

    :goto_2
    sub-int v3, v5, v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1960
    array-length v3, v1

    invoke-virtual {v0, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1963
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1964
    return-object v0

    .line 1929
    .end local v1           #daBytes:[B
    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isWellFormedSmsAddress(Ljava/lang/String;)Z

    move-result v2

    .line 1930
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isWellFormedSmsAddress: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    if-eqz v2, :cond_1

    .line 1932
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v5

    iput-object v5, p2, Landroid/telephony/SmsMessage$DeliveryPdu;->encodedOriginatorAddress:[B

    goto :goto_0

    .line 1936
    :cond_1
    invoke-static {p0, v3}, Landroid/telephony/PhoneNumberUtils;->alphabetAddressEncode(Ljava/lang/String;Z)[B

    move-result-object v5

    iput-object v5, p2, Landroid/telephony/SmsMessage$DeliveryPdu;->encodedOriginatorAddress:[B

    goto :goto_0

    .line 1952
    :cond_2
    invoke-static {p0, v4}, Landroid/telephony/PhoneNumberUtils;->alphabetAddressEncode(Ljava/lang/String;Z)[B

    move-result-object v1

    .restart local v1       #daBytes:[B
    goto :goto_1

    :cond_3
    move v3, v4

    .line 1956
    goto :goto_2
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 8
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "originPort"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "statusReportRequested"

    .prologue
    const/4 v7, 0x0

    .line 643
    new-instance v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 644
    .local v1, portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p3, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 645
    iput p2, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 646
    iput-boolean v7, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 648
    new-instance v3, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v3}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 649
    .local v3, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v1, v3, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 651
    invoke-static {v3}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v4

    .line 653
    .local v4, smsHeaderData:[B
    array-length v5, p4

    array-length v6, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x8c

    if-le v5, v6, :cond_0

    .line 654
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SMS data message may only contain "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v4

    rsub-int v7, v7, 0x8c

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const/4 v2, 0x0

    .line 682
    :goto_0
    return-object v2

    .line 659
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 660
    .local v2, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/16 v5, 0x41

    invoke-static {p0, p1, v5, p5, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 667
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 672
    array-length v5, p4

    array-length v6, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 675
    array-length v5, v4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 676
    array-length v5, v4

    invoke-virtual {v0, v4, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 679
    array-length v5, p4

    invoke-virtual {v0, p4, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 681
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/SmsHeader;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 8
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "destinationPort"
    .parameter "smsHeader"
    .parameter "message"
    .parameter "statusReportRequested"

    .prologue
    const/4 v7, 0x0

    .line 690
    new-instance v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v2}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 691
    .local v2, portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p2, v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 692
    iput v7, v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 693
    iput-boolean v7, v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 695
    iput-object v2, p3, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 697
    invoke-static {p3}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v4

    .line 699
    .local v4, smsHeaderData:[B
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 703
    .local v1, data:[B
    array-length v5, v1

    array-length v6, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x8c

    if-le v5, v6, :cond_0

    .line 707
    const/4 v3, 0x0

    .line 734
    :goto_0
    return-object v3

    .line 710
    :cond_0
    new-instance v3, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v3}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 711
    .local v3, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/16 v5, 0x41

    invoke-static {p0, p1, v5, p5, v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 719
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 724
    array-length v5, v1

    array-length v6, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 727
    array-length v5, v4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 728
    array-length v5, v4

    invoke-virtual {v0, v4, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 731
    array-length v5, v1

    invoke-virtual {v0, v1, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 733
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 6
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "statusReportRequested"

    .prologue
    .line 623
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 1
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"

    .prologue
    .line 604
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 7
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"

    .prologue
    .line 299
    const/4 v5, -0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 15
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"
    .parameter "encoding"
    .parameter "languageTable"
    .parameter "languageShiftTable"

    .prologue
    .line 324
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 325
    :cond_0
    const/4 v7, 0x0

    .line 422
    :goto_0
    return-object v7

    .line 328
    :cond_1
    if-nez p5, :cond_4

    .line 330
    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v9

    .line 331
    .local v9, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    iget v0, v9, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    move/from16 p5, v0

    .line 332
    iget v0, v9, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    move/from16 p6, v0

    .line 333
    iget v0, v9, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    move/from16 p7, v0

    .line 335
    const/4 v12, 0x1

    move/from16 v0, p5

    if-ne v0, v12, :cond_4

    if-nez p6, :cond_2

    if-eqz p7, :cond_4

    .line 336
    :cond_2
    if-eqz p4, :cond_5

    .line 337
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v8

    .line 338
    .local v8, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iget v12, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move/from16 v0, p6

    if-ne v12, v0, :cond_3

    iget v12, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move/from16 v0, p7

    if-eq v12, v0, :cond_4

    .line 340
    :cond_3
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Updating language table in SMS header: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " -> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p6

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " -> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p7

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    move/from16 v0, p6

    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 344
    move/from16 v0, p7

    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 345
    invoke-static {v8}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object p4

    .line 356
    .end local v8           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v9           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_4
    :goto_1
    new-instance v7, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v7}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 358
    .local v7, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz p4, :cond_6

    const/16 v12, 0x40

    :goto_2
    or-int/lit8 v12, v12, 0x1

    int-to-byte v6, v12

    .line 359
    .local v6, mtiByte:B
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static {p0, v0, v6, v1, v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v4

    .line 366
    .local v4, bo:Ljava/io/ByteArrayOutputStream;
    const/4 v12, 0x1

    move/from16 v0, p5

    if-ne v0, v12, :cond_7

    .line 367
    :try_start_0
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v11

    .line 393
    .local v11, userData:[B
    :goto_3
    const/4 v12, 0x1

    move/from16 v0, p5

    if-ne v0, v12, :cond_9

    .line 394
    const/4 v12, 0x0

    aget-byte v12, v11, v12

    and-int/lit16 v12, v12, 0xff

    const/16 v13, 0xa0

    if-le v12, v13, :cond_8

    .line 396
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Message too long ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget-byte v14, v11, v14

    and-int/lit16 v14, v14, 0xff

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " septets)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 348
    .end local v4           #bo:Ljava/io/ByteArrayOutputStream;
    .end local v6           #mtiByte:B
    .end local v7           #ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v11           #userData:[B
    .restart local v9       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_5
    new-instance v8, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v8}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 349
    .restart local v8       #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move/from16 v0, p6

    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 350
    move/from16 v0, p7

    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 351
    invoke-static {v8}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object p4

    goto :goto_1

    .line 358
    .end local v8           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v9           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .restart local v7       #ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_6
    const/4 v12, 0x0

    goto :goto_2

    .line 371
    .restart local v4       #bo:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #mtiByte:B
    :cond_7
    :try_start_1
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .restart local v11       #userData:[B
    goto :goto_3

    .line 372
    .end local v11           #userData:[B
    :catch_0
    move-exception v10

    .line 373
    .local v10, uex:Ljava/io/UnsupportedEncodingException;
    :try_start_2
    const-string v12, "GSM"

    const-string v13, "Implausible UnsupportedEncodingException "

    invoke-static {v12, v13, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 376
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 379
    .end local v10           #uex:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v5

    .line 383
    .local v5, ex:Lcom/android/internal/telephony/EncodeException;
    :try_start_3
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v11

    .line 384
    .restart local v11       #userData:[B
    const/16 p5, 0x3

    goto :goto_3

    .line 385
    .end local v11           #userData:[B
    :catch_2
    move-exception v10

    .line 386
    .restart local v10       #uex:Ljava/io/UnsupportedEncodingException;
    const-string v12, "GSM"

    const-string v13, "Implausible UnsupportedEncodingException "

    invoke-static {v12, v13, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 389
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 407
    .end local v5           #ex:Lcom/android/internal/telephony/EncodeException;
    .end local v10           #uex:Ljava/io/UnsupportedEncodingException;
    .restart local v11       #userData:[B
    :cond_8
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 420
    :goto_4
    const/4 v12, 0x0

    array-length v13, v11

    invoke-virtual {v4, v11, v12, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 421
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    iput-object v12, v7, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    goto/16 :goto_0

    .line 409
    :cond_9
    const/4 v12, 0x0

    aget-byte v12, v11, v12

    and-int/lit16 v12, v12, 0xff

    const/16 v13, 0x8c

    if-le v12, v13, :cond_a

    .line 411
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Message too long ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget-byte v14, v11, v14

    and-int/lit16 v14, v14, 0xff

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " bytes)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 416
    :cond_a
    const/16 v12, 0x8

    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 15
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"
    .parameter "nli"
    .parameter "is7bitOnly"

    .prologue
    .line 441
    if-nez p1, :cond_1

    .line 442
    const-string v11, "GSM"

    const-string v12, "dest addr is null"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const/4 v7, 0x0

    .line 560
    :cond_0
    :goto_0
    return-object v7

    .line 447
    :cond_1
    new-instance v7, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v7}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 449
    .local v7, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/4 v3, 0x0

    .line 450
    .local v3, bRelativeValidityPeriod:Z
    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v12, 0xa

    if-eq v11, v12, :cond_2

    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v12, 0xa

    if-eq v11, v12, :cond_2

    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v12, 0x25

    if-ne v11, v12, :cond_3

    .line 453
    :cond_2
    const/4 v3, 0x1

    .line 455
    :cond_3
    if-eqz p4, :cond_4

    const/16 v11, 0x40

    :goto_1
    or-int/lit8 v12, v11, 0x1

    const/4 v11, 0x1

    if-ne v3, v11, :cond_5

    const/16 v11, 0x10

    :goto_2
    or-int/2addr v11, v12

    int-to-byte v6, v11

    .line 456
    .local v6, mtiByte:B
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static {p0, v0, v6, v1, v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v4

    .line 460
    .local v4, bo:Ljava/io/ByteArrayOutputStream;
    if-eqz p6, :cond_9

    .line 464
    :try_start_0
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BI)[B

    move-result-object v10

    .line 466
    .local v10, userData:[B
    const/4 v11, 0x0

    aget-byte v11, v10, v11

    and-int/lit16 v11, v11, 0xff

    const/16 v12, 0xa0

    if-le v11, v12, :cond_6

    .line 468
    const-string v11, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Msg too long: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    aget-byte v13, v10, v13

    and-int/lit16 v13, v13, 0xff

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0xa0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    const/4 v7, 0x0

    .line 494
    .end local v7           #ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-nez p6, :cond_0

    .line 500
    :try_start_1
    const-string v11, "utf-16be"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v8

    .line 508
    .local v8, textPart:[B
    if-eqz p4, :cond_14

    .line 510
    move-object/from16 v0, p4

    array-length v11, v0

    array-length v12, v8

    add-int/2addr v11, v12

    add-int/lit8 v11, v11, 0x1

    new-array v10, v11, [B

    .line 512
    const/4 v11, 0x0

    move-object/from16 v0, p4

    array-length v12, v0

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 513
    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v0, p4

    array-length v13, v0

    move-object/from16 v0, p4

    invoke-static {v0, v11, v10, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 514
    const/4 v11, 0x0

    move-object/from16 v0, p4

    array-length v12, v0

    add-int/lit8 v12, v12, 0x1

    array-length v13, v8

    invoke-static {v8, v11, v10, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 520
    :goto_3
    array-length v11, v10

    const/16 v12, 0x8c

    if-le v11, v12, :cond_15

    .line 522
    const-string v11, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Msg too long: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v10

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x8c

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :goto_4
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 455
    .end local v4           #bo:Ljava/io/ByteArrayOutputStream;
    .end local v6           #mtiByte:B
    .end local v8           #textPart:[B
    .end local v10           #userData:[B
    .restart local v7       #ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_1

    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 480
    .restart local v4       #bo:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #mtiByte:B
    .restart local v10       #userData:[B
    :cond_6
    const/4 v11, 0x0

    :try_start_2
    invoke-virtual {v4, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 483
    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v12, 0xa

    if-eq v11, v12, :cond_7

    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v12, 0xa

    if-eq v11, v12, :cond_7

    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v12, 0x25

    if-ne v11, v12, :cond_8

    .line 486
    :cond_7
    const/16 v11, 0xa9

    invoke-virtual {v4, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 489
    :cond_8
    const/4 v11, 0x0

    array-length v12, v10

    invoke-virtual {v4, v10, v11, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 494
    .end local v10           #userData:[B
    :cond_9
    if-nez p6, :cond_11

    .line 500
    :try_start_3
    const-string v11, "utf-16be"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v8

    .line 508
    .restart local v8       #textPart:[B
    if-eqz p4, :cond_18

    .line 510
    move-object/from16 v0, p4

    array-length v11, v0

    array-length v12, v8

    add-int/2addr v11, v12

    add-int/lit8 v11, v11, 0x1

    new-array v10, v11, [B

    .line 512
    .restart local v10       #userData:[B
    const/4 v11, 0x0

    move-object/from16 v0, p4

    array-length v12, v0

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 513
    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v0, p4

    array-length v13, v0

    move-object/from16 v0, p4

    invoke-static {v0, v11, v10, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 514
    const/4 v11, 0x0

    move-object/from16 v0, p4

    array-length v12, v0

    add-int/lit8 v12, v12, 0x1

    array-length v13, v8

    invoke-static {v8, v11, v10, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 520
    :goto_5
    array-length v11, v10

    const/16 v12, 0x8c

    if-le v11, v12, :cond_19

    .line 522
    const-string v11, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Msg too long: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v10

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x8c

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 491
    .end local v8           #textPart:[B
    .end local v10           #userData:[B
    :catch_0
    move-exception v5

    .line 492
    .local v5, ex:Lcom/android/internal/telephony/EncodeException;
    const/16 p6, 0x0

    .line 494
    if-nez p6, :cond_11

    .line 500
    :try_start_4
    const-string v11, "utf-16be"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v8

    .line 508
    .restart local v8       #textPart:[B
    if-eqz p4, :cond_12

    .line 510
    move-object/from16 v0, p4

    array-length v11, v0

    array-length v12, v8

    add-int/2addr v11, v12

    add-int/lit8 v11, v11, 0x1

    new-array v10, v11, [B

    .line 512
    .restart local v10       #userData:[B
    const/4 v11, 0x0

    move-object/from16 v0, p4

    array-length v12, v0

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 513
    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v0, p4

    array-length v13, v0

    move-object/from16 v0, p4

    invoke-static {v0, v11, v10, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 514
    const/4 v11, 0x0

    move-object/from16 v0, p4

    array-length v12, v0

    add-int/lit8 v12, v12, 0x1

    array-length v13, v8

    invoke-static {v8, v11, v10, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 520
    :goto_6
    array-length v11, v10

    const/16 v12, 0x8c

    if-le v11, v12, :cond_e

    .line 522
    const-string v11, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Msg too long: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v10

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x8c

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 542
    .end local v5           #ex:Lcom/android/internal/telephony/EncodeException;
    :cond_a
    const/16 v12, 0x8

    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 546
    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v13, 0xa

    if-eq v12, v13, :cond_b

    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v13, 0xa

    if-eq v12, v13, :cond_b

    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v13, 0x25

    if-ne v12, v13, :cond_c

    .line 549
    :cond_b
    const/16 v12, 0xa9

    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 553
    :cond_c
    array-length v12, v10

    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 555
    const/4 v12, 0x0

    array-length v13, v10

    invoke-virtual {v4, v10, v12, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 494
    .end local v8           #textPart:[B
    .end local v10           #userData:[B
    :cond_d
    throw v11

    .line 542
    .restart local v5       #ex:Lcom/android/internal/telephony/EncodeException;
    .restart local v8       #textPart:[B
    .restart local v10       #userData:[B
    :cond_e
    const/16 v11, 0x8

    invoke-virtual {v4, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 546
    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v12, 0xa

    if-eq v11, v12, :cond_f

    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v12, 0xa

    if-eq v11, v12, :cond_f

    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v12, 0x25

    if-ne v11, v12, :cond_10

    .line 549
    :cond_f
    const/16 v11, 0xa9

    invoke-virtual {v4, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 553
    :cond_10
    array-length v11, v10

    invoke-virtual {v4, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 555
    const/4 v11, 0x0

    array-length v12, v10

    .end local v5           #ex:Lcom/android/internal/telephony/EncodeException;
    :goto_7
    invoke-virtual {v4, v10, v11, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 559
    .end local v8           #textPart:[B
    .end local v10           #userData:[B
    :cond_11
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    iput-object v11, v7, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    goto/16 :goto_0

    .line 501
    .restart local v5       #ex:Lcom/android/internal/telephony/EncodeException;
    :catch_1
    move-exception v9

    .line 502
    .local v9, uex:Ljava/io/UnsupportedEncodingException;
    const-string v11, "GSM"

    const-string v12, "Implausible UnsupportedEncodingException "

    invoke-static {v11, v12, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 505
    .end local v5           #ex:Lcom/android/internal/telephony/EncodeException;
    .end local v7           #ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :goto_8
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 517
    .end local v9           #uex:Ljava/io/UnsupportedEncodingException;
    .restart local v5       #ex:Lcom/android/internal/telephony/EncodeException;
    .restart local v7       #ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .restart local v8       #textPart:[B
    :cond_12
    move-object v10, v8

    .restart local v10       #userData:[B
    goto/16 :goto_6

    .line 494
    .end local v5           #ex:Lcom/android/internal/telephony/EncodeException;
    .end local v8           #textPart:[B
    .end local v10           #userData:[B
    :catchall_0
    move-exception v11

    if-nez p6, :cond_d

    .line 500
    :try_start_5
    const-string v12, "utf-16be"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v8

    .line 508
    .restart local v8       #textPart:[B
    if-eqz p4, :cond_13

    .line 510
    move-object/from16 v0, p4

    array-length v12, v0

    array-length v13, v8

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, 0x1

    new-array v10, v12, [B

    .line 512
    .restart local v10       #userData:[B
    const/4 v12, 0x0

    move-object/from16 v0, p4

    array-length v13, v0

    int-to-byte v13, v13

    aput-byte v13, v10, v12

    .line 513
    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v0, p4

    array-length v14, v0

    move-object/from16 v0, p4

    invoke-static {v0, v12, v10, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 514
    const/4 v12, 0x0

    move-object/from16 v0, p4

    array-length v13, v0

    add-int/lit8 v13, v13, 0x1

    array-length v14, v8

    invoke-static {v8, v12, v10, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 520
    :goto_9
    array-length v12, v10

    const/16 v13, 0x8c

    if-le v12, v13, :cond_a

    .line 522
    const-string v11, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Msg too long: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v10

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x8c

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 501
    .end local v8           #textPart:[B
    .end local v10           #userData:[B
    :catch_2
    move-exception v9

    .line 502
    .restart local v9       #uex:Ljava/io/UnsupportedEncodingException;
    const-string v11, "GSM"

    const-string v12, "Implausible UnsupportedEncodingException "

    invoke-static {v11, v12, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 517
    .end local v9           #uex:Ljava/io/UnsupportedEncodingException;
    .restart local v8       #textPart:[B
    :cond_13
    move-object v10, v8

    .restart local v10       #userData:[B
    goto :goto_9

    .line 501
    .end local v7           #ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v8           #textPart:[B
    :catch_3
    move-exception v9

    .line 502
    .restart local v9       #uex:Ljava/io/UnsupportedEncodingException;
    const-string v11, "GSM"

    const-string v12, "Implausible UnsupportedEncodingException "

    invoke-static {v11, v12, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 517
    .end local v9           #uex:Ljava/io/UnsupportedEncodingException;
    .restart local v8       #textPart:[B
    :cond_14
    move-object v10, v8

    goto/16 :goto_3

    .line 542
    :cond_15
    const/16 v11, 0x8

    invoke-virtual {v4, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 546
    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v12, 0xa

    if-eq v11, v12, :cond_16

    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v12, 0xa

    if-eq v11, v12, :cond_16

    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v12, 0x25

    if-ne v11, v12, :cond_17

    .line 549
    :cond_16
    const/16 v11, 0xa9

    invoke-virtual {v4, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 553
    :cond_17
    array-length v11, v10

    invoke-virtual {v4, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 555
    const/4 v11, 0x0

    array-length v12, v10

    invoke-virtual {v4, v10, v11, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto/16 :goto_0

    .line 501
    .end local v8           #textPart:[B
    .end local v10           #userData:[B
    .restart local v7       #ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :catch_4
    move-exception v9

    .line 502
    .restart local v9       #uex:Ljava/io/UnsupportedEncodingException;
    const-string v11, "GSM"

    const-string v12, "Implausible UnsupportedEncodingException "

    invoke-static {v11, v12, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .line 517
    .end local v9           #uex:Ljava/io/UnsupportedEncodingException;
    .restart local v8       #textPart:[B
    :cond_18
    move-object v10, v8

    .restart local v10       #userData:[B
    goto/16 :goto_5

    .line 542
    :cond_19
    const/16 v11, 0x8

    invoke-virtual {v4, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 546
    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v12, 0xa

    if-eq v11, v12, :cond_1a

    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v12, 0xa

    if-eq v11, v12, :cond_1a

    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v12, 0x25

    if-ne v11, v12, :cond_1b

    .line 549
    :cond_1a
    const/16 v11, 0xa9

    invoke-virtual {v4, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 553
    :cond_1b
    array-length v11, v10

    invoke-virtual {v4, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 555
    const/4 v11, 0x0

    array-length v12, v10

    goto/16 :goto_7
.end method

.method private static getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 7
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "mtiByte"
    .parameter "statusReportRequested"
    .parameter "ret"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 752
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xb4

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 756
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_1

    .line 757
    const/4 v2, 0x0

    iput-object v2, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    .line 764
    :goto_0
    if-eqz p3, :cond_0

    .line 766
    or-int/lit8 v2, p2, 0x20

    int-to-byte p2, v2

    .line 767
    const-string v2, "GSM"

    const-string v5, "SMS status report requested"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    :cond_0
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 772
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 776
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 780
    .local v1, daBytes:[B
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v5, v2, 0x2

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xf0

    const/16 v6, 0xf0

    if-ne v2, v6, :cond_2

    move v2, v3

    :goto_1
    sub-int v2, v5, v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 784
    array-length v2, v1

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 787
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x50

    if-ne v2, v5, :cond_3

    const-string v2, "0000001005"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v3, :cond_3

    .line 789
    const/16 v2, 0x7f

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 793
    :goto_2
    return-object v0

    .line 759
    .end local v1           #daBytes:[B
    :cond_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    goto :goto_0

    .restart local v1       #daBytes:[B
    :cond_2
    move v2, v4

    .line 780
    goto :goto_1

    .line 791
    :cond_3
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 4
    .parameter "pdu"

    .prologue
    .line 278
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 279
    .local v0, len:I
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 281
    .local v1, smscLen:I
    sub-int v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    return v2
.end method

.method private static intToBCDbyte(I)B
    .locals 3
    .parameter "paramInt"

    .prologue
    .line 1994
    rem-int/lit8 v2, p0, 0xa

    shl-int/lit8 v0, v2, 0x4

    .line 1995
    .local v0, i:I
    div-int/lit8 v1, p0, 0xa

    .line 1996
    .local v1, j:I
    or-int v2, v0, v1

    int-to-byte v2, v2

    return v2
.end method

.method public static newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 4
    .parameter "line"

    .prologue
    .line 218
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 219
    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-static {p0}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v1

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "GSM"

    const-string v3, "CDS SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static newFromCMT([Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 4
    .parameter "lines"

    .prologue
    .line 206
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 207
    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v1

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "GSM"

    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static newFromCMTI(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 2
    .parameter "line"

    .prologue
    .line 2108
    const-string v0, "GSM"

    const-string v1, "newFromCMTI: not yet supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    const/4 v0, 0x0

    return-object v0
.end method

.method public static newFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/SmsMessageBase;
    .locals 2
    .parameter "p"

    .prologue
    .line 2116
    const-string v0, "GSM"

    const-string v1, "newFromParcel: is not supported in GSM mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    const/4 v0, 0x0

    return-object v0
.end method

.method static packTimeStamp(Landroid/text/format/Time;)[B
    .locals 8
    .parameter "paramTime"

    .prologue
    const-wide/16 v6, 0x384

    const/4 v5, 0x6

    const/4 v3, 0x0

    .line 2000
    const/4 v1, 0x7

    new-array v0, v1, [B

    .line 2001
    .local v0, arrayOfByte:[B
    if-nez p0, :cond_0

    .line 2003
    new-instance p0, Landroid/text/format/Time;

    .end local p0
    invoke-direct {p0}, Landroid/text/format/Time;-><init>()V

    .line 2004
    .restart local p0
    invoke-virtual {p0}, Landroid/text/format/Time;->setToNow()V

    .line 2007
    :cond_0
    iget v1, p0, Landroid/text/format/Time;->year:I

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_1

    .line 2008
    iget v1, p0, Landroid/text/format/Time;->year:I

    add-int/lit16 v1, v1, -0x7d0

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->intToBCDbyte(I)B

    move-result v1

    aput-byte v1, v0, v3

    .line 2013
    :goto_0
    const/4 v1, 0x1

    iget v2, p0, Landroid/text/format/Time;->month:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->intToBCDbyte(I)B

    move-result v2

    aput-byte v2, v0, v1

    .line 2014
    const/4 v1, 0x2

    iget v2, p0, Landroid/text/format/Time;->monthDay:I

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->intToBCDbyte(I)B

    move-result v2

    aput-byte v2, v0, v1

    .line 2015
    const/4 v1, 0x3

    iget v2, p0, Landroid/text/format/Time;->hour:I

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->intToBCDbyte(I)B

    move-result v2

    aput-byte v2, v0, v1

    .line 2016
    const/4 v1, 0x4

    iget v2, p0, Landroid/text/format/Time;->minute:I

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->intToBCDbyte(I)B

    move-result v2

    aput-byte v2, v0, v1

    .line 2017
    const/4 v1, 0x5

    iget v2, p0, Landroid/text/format/Time;->second:I

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->intToBCDbyte(I)B

    move-result v2

    aput-byte v2, v0, v1

    .line 2018
    iget-wide v1, p0, Landroid/text/format/Time;->gmtoff:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    .line 2019
    iget-wide v1, p0, Landroid/text/format/Time;->gmtoff:J

    div-long/2addr v1, v6

    long-to-int v1, v1

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->intToBCDbyte(I)B

    move-result v1

    aput-byte v1, v0, v5

    .line 2023
    :goto_1
    return-object v0

    .line 2010
    :cond_1
    iget v1, p0, Landroid/text/format/Time;->year:I

    add-int/lit16 v1, v1, -0x76c

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->intToBCDbyte(I)B

    move-result v1

    aput-byte v1, v0, v3

    goto :goto_0

    .line 2021
    :cond_2
    iget-wide v1, p0, Landroid/text/format/Time;->gmtoff:J

    div-long/2addr v1, v6

    long-to-int v1, v1

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->intToBCDbyte(I)B

    move-result v1

    or-int/lit8 v1, v1, -0x80

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    goto :goto_1
.end method

.method private parsePdu([B)V
    .locals 6
    .parameter "pdu"

    .prologue
    const/4 v5, 0x0

    .line 1360
    iput-object p1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPdu:[B

    .line 1364
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;-><init>([B)V

    .line 1366
    .local v1, p:Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->scAddress:Ljava/lang/String;

    .line 1368
    iget-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->scAddress:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1369
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SMS SC address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SmsMessageBase;->scAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    :cond_0
    iget v2, v1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    if-lez v2, :cond_1

    .line 1374
    iget v2, v1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->mTpdu:[B

    .line 1375
    iget-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->mTpdu:[B

    iget v3, v1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    invoke-static {p1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1378
    :cond_1
    iget v2, v1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 1379
    array-length v2, p1

    iget v3, v1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    sub-int/2addr v2, v3

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRawSmsc:[B

    .line 1380
    iget v2, v1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRawSmsc:[B

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRawSmsc:[B

    array-length v4, v4

    invoke-static {p1, v2, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1388
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    .line 1390
    .local v0, firstByte:I
    and-int/lit8 v2, v0, 0x3

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mti:I

    .line 1391
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mti:I

    packed-switch v2, :pswitch_data_0

    .line 1409
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unsupported message type"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1397
    :pswitch_0
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    .line 1411
    :goto_0
    return-void

    .line 1401
    :pswitch_1
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    goto :goto_0

    .line 1405
    :pswitch_2
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    goto :goto_0

    .line 1391
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 8
    .parameter "p"
    .parameter "firstByte"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1463
    and-int/lit16 v2, p2, 0x80

    const/16 v5, 0x80

    if-ne v2, v5, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z

    .line 1465
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1467
    iget-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v2, :cond_0

    .line 1474
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    .line 1477
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x50

    if-ne v2, v5, :cond_9

    .line 1478
    const/4 v0, 0x0

    .line 1479
    .local v0, bdrop:Z
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v5, 0x7f

    if-le v2, v5, :cond_3

    .line 1480
    const/4 v0, 0x1

    .line 1491
    :cond_1
    :goto_1
    if-eqz v0, :cond_9

    .line 1492
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Give up the SMS, KT don\'t accept PID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v0           #bdrop:Z
    :cond_2
    move v2, v4

    .line 1463
    goto :goto_0

    .line 1482
    .restart local v0       #bdrop:Z
    :cond_3
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v5, 0x2e

    if-lt v2, v5, :cond_4

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v5, 0x2f

    if-le v2, v5, :cond_7

    :cond_4
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v5, 0x33

    if-lt v2, v5, :cond_5

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v5, 0x37

    if-le v2, v5, :cond_7

    :cond_5
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v5, 0x48

    if-lt v2, v5, :cond_6

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v5, 0x5d

    if-le v2, v5, :cond_7

    :cond_6
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v5, 0x60

    if-lt v2, v5, :cond_8

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v5, 0x6b

    if-gt v2, v5, :cond_8

    .line 1486
    :cond_7
    const/4 v0, 0x1

    goto :goto_1

    .line 1487
    :cond_8
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v5, 0x7d

    if-ne v2, v5, :cond_1

    .line 1488
    const/4 v0, 0x1

    goto :goto_1

    .line 1498
    .end local v0           #bdrop:Z
    :cond_9
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    .line 1505
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->scTimeMillis:J

    .line 1507
    const-string v2, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SMS SC timestamp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->scTimeMillis:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    and-int/lit8 v2, p2, 0x40

    const/16 v5, 0x40

    if-ne v2, v5, :cond_a

    move v1, v3

    .line 1511
    .local v1, hasUserDataHeader:Z
    :goto_2
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1512
    return-void

    .end local v1           #hasUserDataHeader:Z
    :cond_a
    move v1, v4

    .line 1509
    goto :goto_2
.end method

.method private parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 8
    .parameter "p"
    .parameter "firstByte"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1420
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isStatusReportMessage:Z

    .line 1423
    and-int/lit8 v3, p2, 0x20

    if-nez v3, :cond_0

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->forSubmit:Z

    .line 1425
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    .line 1427
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->recipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    .line 1429
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->scTimeMillis:J

    .line 1431
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->dischargeTimeMillis:J

    .line 1433
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->status:I

    .line 1436
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->moreDataPresent()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1438
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    .line 1439
    .local v0, extraParams:I
    move v2, v0

    .line 1440
    .local v2, moreExtraParams:I
    :goto_1
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_1

    .line 1444
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v2

    goto :goto_1

    .end local v0           #extraParams:I
    .end local v2           #moreExtraParams:I
    :cond_0
    move v3, v5

    .line 1423
    goto :goto_0

    .line 1447
    .restart local v0       #extraParams:I
    .restart local v2       #moreExtraParams:I
    :cond_1
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->moreDataPresent()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1448
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    .line 1451
    :cond_2
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->moreDataPresent()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1452
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    .line 1455
    :cond_3
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->moreDataPresent()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1456
    and-int/lit8 v3, p2, 0x40

    const/16 v6, 0x40

    if-ne v3, v6, :cond_5

    move v1, v4

    .line 1457
    .local v1, hasUserDataHeader:Z
    :goto_2
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1460
    .end local v0           #extraParams:I
    .end local v1           #hasUserDataHeader:Z
    .end local v2           #moreExtraParams:I
    :cond_4
    return-void

    .restart local v0       #extraParams:I
    .restart local v2       #moreExtraParams:I
    :cond_5
    move v1, v5

    .line 1456
    goto :goto_2
.end method

.method private parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 7
    .parameter "p"
    .parameter "firstByte"

    .prologue
    const/4 v4, 0x1

    .line 1516
    and-int/lit8 v3, p2, 0x18

    .line 1517
    .local v3, validityPeriodFormat:I
    and-int/lit8 v5, p2, 0x40

    const/16 v6, 0x40

    if-ne v5, v6, :cond_0

    move v0, v4

    .line 1519
    .local v0, hasUserDataHeader:Z
    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/telephony/SmsMessageBase;->isOutGoingSms:Z

    .line 1522
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    .line 1524
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/SmsMessageBase;->destinationAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1528
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    .line 1532
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    .line 1539
    const/4 v2, 0x0

    .line 1540
    .local v2, lengthTpVp:I
    sparse-switch v3, :sswitch_data_0

    .line 1548
    :goto_1
    const/16 v4, 0x18

    if-eq v3, v4, :cond_1

    .line 1549
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v2, :cond_2

    .line 1550
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    .line 1549
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1517
    .end local v0           #hasUserDataHeader:Z
    .end local v1           #i:I
    .end local v2           #lengthTpVp:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1541
    .restart local v0       #hasUserDataHeader:Z
    .restart local v2       #lengthTpVp:I
    :sswitch_0
    const/4 v2, 0x0

    goto :goto_1

    .line 1543
    :sswitch_1
    const/4 v2, 0x7

    goto :goto_1

    .line 1544
    :sswitch_2
    const/4 v2, 0x1

    goto :goto_1

    .line 1553
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/SmsMessageBase;->absoluteValidityPeriod:J

    .line 1556
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1557
    return-void

    .line 1540
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_1
    .end sparse-switch
.end method

.method private parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V
    .locals 10
    .parameter "p"
    .parameter "hasUserDataHeader"

    .prologue
    .line 1568
    const/4 v2, 0x0

    .line 1569
    .local v2, hasMessageClass:Z
    const/4 v6, 0x0

    .line 1572
    .local v6, userDataCompressed:Z
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->encodingType:I

    .line 1576
    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v7, v7, 0xcc

    const/16 v8, 0x84

    if-ne v7, v8, :cond_4

    .line 1577
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->automaticDeletion:Z

    .line 1578
    const/4 v2, 0x0

    .line 1579
    const/4 v6, 0x0

    .line 1580
    const/4 v7, 0x4

    iput v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->encodingType:I

    .line 1687
    :goto_0
    iget v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->encodingType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_19

    const/4 v7, 0x1

    :goto_1
    invoke-virtual {p1, p2, v7}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->constructUserData(ZZ)I

    move-result v1

    .line 1689
    .local v1, count:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserData()[B

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->userData:[B

    .line 1690
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1693
    const/4 v4, -0x1

    .line 1694
    .local v4, languageTable:I
    const/4 v3, -0x1

    .line 1695
    .local v3, languageShiftTable:I
    iget-object v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v7, :cond_1

    .line 1696
    iget-object v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    invoke-virtual {v7}, Lcom/android/internal/telephony/SmsHeader;->getSsmiElement()Lcom/android/internal/telephony/SmsHeader$MiscElt;

    move-result-object v5

    .line 1697
    .local v5, ssmiElement:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    if-eqz v5, :cond_0

    .line 1698
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->checkMWIStatus(Lcom/android/internal/telephony/SmsHeader$MiscElt;)V

    .line 1701
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v4, v7, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 1702
    iget-object v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v3, v7, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 1707
    .end local v5           #ssmiElement:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    :cond_1
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v8, 0x50

    if-ne v7, v8, :cond_2

    .line 1708
    iget-object v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v7, v7, Lcom/android/internal/telephony/SmsHeader;->mAlternateReplyAddressLength:I

    if-nez v7, :cond_2

    .line 1709
    iget-object v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    const-string v8, ""

    iput-object v8, v7, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 1713
    :cond_2
    iget v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->encodingType:I

    packed-switch v7, :pswitch_data_0

    .line 1749
    :goto_2
    iget-object v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 1750
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseMessageBody()V

    .line 1753
    :cond_3
    if-nez v2, :cond_1a

    .line 1754
    sget-object v7, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    .line 1771
    :goto_3
    return-void

    .line 1581
    .end local v1           #count:I
    .end local v3           #languageShiftTable:I
    .end local v4           #languageTable:I
    :cond_4
    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v7, v7, 0x80

    if-nez v7, :cond_c

    .line 1583
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v8, 0x50

    if-eq v7, v8, :cond_5

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v8, 0xd2

    if-ne v7, v8, :cond_7

    :cond_5
    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v7, v7, 0xcc

    const/4 v8, 0x4

    if-eq v7, v8, :cond_6

    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0xc

    if-ne v7, v8, :cond_7

    .line 1586
    :cond_6
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->automaticDeletion:Z

    .line 1587
    const/4 v2, 0x0

    .line 1588
    const/4 v6, 0x0

    .line 1589
    const/4 v7, 0x4

    iput v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->encodingType:I

    goto/16 :goto_0

    .line 1591
    :cond_7
    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v7, v7, 0x40

    if-eqz v7, :cond_8

    const/4 v7, 0x1

    :goto_4
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->automaticDeletion:Z

    .line 1592
    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_9

    const/4 v6, 0x1

    .line 1593
    :goto_5
    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_a

    const/4 v2, 0x1

    .line 1595
    :goto_6
    if-eqz v6, :cond_b

    .line 1596
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "4 - Unsupported SMS data coding scheme (compression) "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1591
    :cond_8
    const/4 v7, 0x0

    goto :goto_4

    .line 1592
    :cond_9
    const/4 v6, 0x0

    goto :goto_5

    .line 1593
    :cond_a
    const/4 v2, 0x0

    goto :goto_6

    .line 1599
    :cond_b
    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    shr-int/lit8 v7, v7, 0x2

    and-int/lit8 v7, v7, 0x3

    packed-switch v7, :pswitch_data_1

    goto/16 :goto_0

    .line 1601
    :pswitch_0
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->encodingType:I

    goto/16 :goto_0

    .line 1605
    :pswitch_1
    const/4 v7, 0x3

    iput v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->encodingType:I

    goto/16 :goto_0

    .line 1610
    :pswitch_2
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "1 - Unsupported SMS data coding scheme "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->encodingType:I

    goto/16 :goto_0

    .line 1617
    :cond_c
    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v7, v7, 0xf0

    const/16 v8, 0xf0

    if-ne v7, v8, :cond_e

    .line 1618
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->automaticDeletion:Z

    .line 1619
    const/4 v2, 0x1

    .line 1620
    const/4 v6, 0x0

    .line 1622
    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v7, v7, 0x4

    if-nez v7, :cond_d

    .line 1624
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->encodingType:I

    goto/16 :goto_0

    .line 1627
    :cond_d
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->encodingType:I

    goto/16 :goto_0

    .line 1629
    :cond_e
    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v7, v7, 0xf0

    const/16 v8, 0xc0

    if-eq v7, v8, :cond_f

    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v7, v7, 0xf0

    const/16 v8, 0xd0

    if-eq v7, v8, :cond_f

    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v7, v7, 0xf0

    const/16 v8, 0xe0

    if-ne v7, v8, :cond_14

    .line 1638
    :cond_f
    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v7, v7, 0xf0

    const/16 v8, 0xe0

    if-ne v7, v8, :cond_10

    .line 1639
    const/4 v7, 0x3

    iput v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->encodingType:I

    .line 1644
    :goto_7
    const/4 v6, 0x0

    .line 1645
    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v7, v7, 0x8

    const/16 v8, 0x8

    if-ne v7, v8, :cond_11

    const/4 v0, 0x1

    .line 1649
    .local v0, active:Z
    :goto_8
    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v7, v7, 0x3

    if-nez v7, :cond_13

    .line 1650
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    .line 1651
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiSense:Z

    .line 1652
    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v7, v7, 0xf0

    const/16 v8, 0xc0

    if-ne v7, v8, :cond_12

    const/4 v7, 0x1

    :goto_9
    iput-boolean v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiDontStore:Z

    goto/16 :goto_0

    .line 1641
    .end local v0           #active:Z
    :cond_10
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->encodingType:I

    goto :goto_7

    .line 1645
    :cond_11
    const/4 v0, 0x0

    goto :goto_8

    .line 1652
    .restart local v0       #active:Z
    :cond_12
    const/4 v7, 0x0

    goto :goto_9

    .line 1654
    :cond_13
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    .line 1656
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MWI for fax, email, or other "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1659
    .end local v0           #active:Z
    :cond_14
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v8, 0x50

    if-ne v7, v8, :cond_16

    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0xaf

    if-eq v7, v8, :cond_15

    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0x8f

    if-ne v7, v8, :cond_16

    .line 1662
    :cond_15
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "KT force : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->automaticDeletion:Z

    .line 1666
    const/4 v2, 0x0

    .line 1667
    const/4 v6, 0x0

    .line 1670
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->encodingType:I

    goto/16 :goto_0

    .line 1671
    :cond_16
    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v7, v7, 0xc0

    const/16 v8, 0x80

    if-ne v7, v8, :cond_18

    .line 1674
    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    const/16 v8, 0x84

    if-ne v7, v8, :cond_17

    .line 1676
    const/4 v7, 0x4

    iput v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->encodingType:I

    goto/16 :goto_0

    .line 1678
    :cond_17
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "5 - Unsupported SMS data coding scheme "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1682
    :cond_18
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "3 - Unsupported SMS data coding scheme "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1687
    :cond_19
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 1716
    .restart local v1       #count:I
    .restart local v3       #languageShiftTable:I
    .restart local v4       #languageTable:I
    :pswitch_3
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    goto/16 :goto_2

    .line 1720
    :pswitch_4
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    goto/16 :goto_2

    .line 1734
    :pswitch_5
    invoke-virtual {p1, v1, v4, v3}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM7Bit(III)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    goto/16 :goto_2

    .line 1739
    :pswitch_6
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataUCS2(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    goto/16 :goto_2

    .line 1743
    :pswitch_7
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataKSC5601(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    goto/16 :goto_2

    .line 1756
    :cond_1a
    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v7, v7, 0x3

    packed-switch v7, :pswitch_data_2

    goto/16 :goto_3

    .line 1758
    :pswitch_8
    sget-object v7, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_3

    .line 1761
    :pswitch_9
    sget-object v7, Landroid/telephony/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_3

    .line 1764
    :pswitch_a
    sget-object v7, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_3

    .line 1767
    :pswitch_b
    sget-object v7, Landroid/telephony/SmsMessage$MessageClass;->CLASS_3:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_3

    .line 1713
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 1599
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1756
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method getDataCodingScheme()I
    .locals 1

    .prologue
    .line 1260
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    return v0
.end method

.method public getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
    .locals 1

    .prologue
    .line 1778
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    return-object v0
.end method

.method public getMwiCounter()I
    .locals 1

    .prologue
    .line 1797
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiCounter:I

    return v0
.end method

.method public getProtocolIdentifier()I
    .locals 1

    .prologue
    .line 1252
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    return v0
.end method

.method public getRawSmsc()[B
    .locals 1

    .prologue
    .line 1970
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRawSmsc:[B

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 1336
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->status:I

    return v0
.end method

.method public getdataCodingScheme()I
    .locals 1

    .prologue
    .line 1265
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    return v0
.end method

.method public isCphsMwiMessage()Z
    .locals 1

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMWIClearMessage()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1287
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiSense:Z

    if-nez v0, :cond_0

    .line 1291
    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isMWISetMessage()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1298
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiSense:Z

    if-eqz v0, :cond_0

    .line 1302
    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isMwiDontStore()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1309
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiDontStore:Z

    if-eqz v1, :cond_1

    .line 1330
    :cond_0
    :goto_0
    return v0

    .line 1313
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCphsMwiMessage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1317
    const-string v1, " "

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1324
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1330
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReplace()Z
    .locals 2

    .prologue
    .line 1272
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReplyPathPresent()Z
    .locals 1

    .prologue
    .line 1348
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z

    return v0
.end method

.method public isStatusReportMessage()Z
    .locals 1

    .prologue
    .line 1342
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isStatusReportMessage:Z

    return v0
.end method

.method public isTypeZero()Z
    .locals 2

    .prologue
    .line 192
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isUsimDataDownload()Z
    .locals 2

    .prologue
    .line 1788
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    sget-object v1, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v1, 0x7c

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public kddiGetMessageId()I
    .locals 2

    .prologue
    .line 1984
    const-string v0, "GSM"

    const-string v1, "GetMessageID: is not supported in GSM mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    const/4 v0, 0x0

    return v0
.end method

.method public getRecipientAddress()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->recipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->recipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->getAddressString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "GSM"

    const-string v1, "SMS recipient address is null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method
