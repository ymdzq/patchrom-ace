.class public final Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;
.super Landroid/os/Handler;
.source "HtcIccPbkEntryCache_QMI.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;
.implements Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;


# static fields
.field static final ANR_ENTRY_INDEX_1:I = 0x0

.field static final ANR_ENTRY_INDEX_2:I = 0x1

.field static final DBG:Z = false

.field static final ERROR_ANR1_FULL:I = 0x2

.field static final ERROR_ANR2_FULL:I = 0x4

.field static final ERROR_EMAIL_FULL:I = 0x1

.field static final ERROR_NONE:I = 0x0

.field static final ERROR_UNKNOWN:I = 0x8

.field private static final EVENT_ADD_PB_ENTRY_DONE:I = 0x4

.field private static final EVENT_DELETE_PB_ENTRY_DONE:I = 0x6

.field private static final EVENT_GET_PB_LENGTH_DONE:I = 0x1

.field private static final EVENT_GET_PB_USED_NUM_DONE:I = 0x2

.field private static final EVENT_LOAD_PB_ADN_DONE:I = 0x9

.field private static final EVENT_LOAD_PB_ANR_DONE:I = 0xd

.field private static final EVENT_LOAD_PB_CC_DONE:I = 0x16

.field private static final EVENT_LOAD_PB_EMAIL_DONE:I = 0xc

.field private static final EVENT_LOAD_PB_ENTRIES_DONE:I = 0x3

.field private static final EVENT_LOAD_PB_EXT1_DONE:I = 0x8

.field private static final EVENT_LOAD_PB_IAP_DONE:I = 0xb

.field private static final EVENT_LOAD_PB_PBR_DONE:I = 0x7

.field private static final EVENT_LOAD_PB_PSC_DONE:I = 0x14

.field private static final EVENT_LOAD_PB_PUID_DONE:I = 0x18

.field private static final EVENT_LOAD_PB_UID_DONE:I = 0xa

.field private static final EVENT_UPDATE_ANR_DONE:I = 0x12

.field private static final EVENT_UPDATE_ANR_EXT1_DONE:I = 0x13

.field private static final EVENT_UPDATE_EMAIL_DONE:I = 0x11

.field private static final EVENT_UPDATE_EXT1_DONE:I = 0xf

.field private static final EVENT_UPDATE_IAP_DONE:I = 0x10

.field private static final EVENT_UPDATE_PB_CC_DONE:I = 0x17

.field private static final EVENT_UPDATE_PB_ENTRY_DONE:I = 0x5

.field private static final EVENT_UPDATE_PB_PSC_DONE:I = 0x15

.field private static final EVENT_UPDATE_PB_PUID_DONE:I = 0x19

.field private static final EVENT_UPDATE_PB_UID_DONE:I = 0xe

.field static final FOOTER_SIZE_BYTES:I = 0xe

.field static final IAP_ENTRY_ANR_1_INDEX:I = 0x0

.field static final IAP_ENTRY_ANR_2_INDEX:I = 0x1

.field static final IAP_ENTRY_EMAIL_INDEX:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "HtcIccPbkEntryCache_QMI"

.field static final MAX_INT_VALUE:J = 0xffffffffL

.field static final MAX_NUM_ANR_PER_PBK_ENTRY:I = 0x2

.field static final MAX_SHORT_VALUE:I = 0xffff

.field private static final QUERY_SIM_CONTACT_FILE_TIMESTAMP:Ljava/lang/String; = "query_sim_contact_file_timestamp"


# instance fields
.field m2GPhonebook:Z

.field mADNRecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/HtcAdnRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field mANR_swap:Z

.field mAnrFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field mAnrRecordLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AnrRecord;",
            ">;>;>;"
        }
    .end annotation
.end field

.field mChangeCounter:I

.field mDropSIMTimeStamp:J

.field mEmailFileList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mEmailRecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/EmailRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field mExt1RecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/HtcExt1Record;",
            ">;"
        }
    .end annotation
.end field

.field mIAPRecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/IAPRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field mIap_Updatedata:[B

.field mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

.field mMsgNumber:I

.field mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

.field mPSC:J

.field mPUID:I

.field mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mRecordNums:I

.field mSimPbkEntryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/PhoneBookEntry;",
            ">;"
        }
    .end annotation
.end field

.field mSimPbkWaiters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field mSupportAnr:[Z

.field mSupportCC:Z

.field mSupportEmail:Z

.field mSupportPSC:Z

.field mSupportPUID:Z

.field private mTotal:I

.field mUIDRecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/UIDRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUsed:I

.field mUserWriteResponse:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field misloading:Z

.field pollingContext:[I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 4
    .parameter "phone"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 208
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUIDRecordList:Ljava/util/ArrayList;

    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailFileList:Ljava/util/HashMap;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    .line 173
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    .line 175
    iput v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mMsgNumber:I

    .line 177
    iput v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    .line 183
    iput-boolean v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    .line 184
    const/4 v0, 0x2

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->misloading:Z

    .line 186
    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    .line 188
    iput-boolean v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    .line 189
    iput-boolean v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mANR_swap:Z

    .line 193
    iput v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mChangeCounter:I

    .line 194
    iput-wide v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPSC:J

    .line 195
    iput v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPUID:I

    .line 197
    iput-boolean v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportCC:Z

    .line 198
    iput-boolean v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportPSC:Z

    .line 199
    iput-boolean v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportPUID:Z

    .line 202
    iput-wide v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mDropSIMTimeStamp:J

    .line 209
    iput-object p1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 210
    new-instance v0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    .line 211
    return-void
.end method

.method private addAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V
    .locals 8
    .parameter "anrNumber"
    .parameter "entry"
    .parameter "anrEntryIndex"

    .prologue
    const/4 v4, 0x1

    .line 2315
    const-string v0, "addAnrRecord()"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 2316
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    if-lez v0, :cond_1

    .line 2317
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v0

    if-ne v0, v4, :cond_1

    .line 2318
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2320
    iget v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    div-int v7, v0, v1

    .line 2321
    .local v7, num:I
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, v7, p3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v3

    .line 2322
    .local v3, efid:I
    if-eqz v3, :cond_1

    .line 2324
    iget v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    iget v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    mul-int/2addr v1, v7

    sub-int v6, v0, v1

    .line 2326
    .local v6, adnRecordNumber:I
    const/4 v2, 0x0

    .line 2327
    .local v2, anrRecord:Lcom/android/internal/telephony/AnrRecord;
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v0

    if-ne v0, v4, :cond_2

    .line 2328
    invoke-virtual {p0, v7, p3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getFirstEmptyAnrRecord(II)Lcom/android/internal/telephony/AnrRecord;

    move-result-object v2

    .line 2330
    if-eqz v2, :cond_0

    .line 2331
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    iget v1, v2, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, p3

    .line 2355
    :cond_0
    :goto_0
    if-eqz v2, :cond_6

    .line 2356
    const/4 v0, 0x0

    iput v0, v2, Lcom/android/internal/telephony/AnrRecord;->mAnrId:I

    .line 2357
    iput v6, v2, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    .line 2358
    iput-object p1, v2, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 2359
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/16 v1, 0xc0

    invoke-virtual {v0, v7, v1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFSFI(II)I

    move-result v0

    iput v0, v2, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    .line 2361
    iget v1, v2, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    const/16 v0, 0x12

    invoke-virtual {p0, v0, v7, p3, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move-object v0, p0

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateAnrByIndex(ILcom/android/internal/telephony/AnrRecord;IILandroid/os/Message;)V

    .line 2372
    .end local v2           #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    .end local v3           #efid:I
    .end local v6           #adnRecordNumber:I
    .end local v7           #num:I
    :cond_1
    :goto_1
    return-void

    .line 2335
    .restart local v2       #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    .restart local v3       #efid:I
    .restart local v6       #adnRecordNumber:I
    .restart local v7       #num:I
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_5

    .line 2336
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_4

    .line 2338
    if-lez v6, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v6, v0, :cond_3

    .line 2341
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    add-int/lit8 v1, v6, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    check-cast v2, Lcom/android/internal/telephony/AnrRecord;

    .restart local v2       #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    goto :goto_0

    .line 2344
    :cond_3
    const-string v0, "HtcIccPbkEntryCache_QMI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "out of anr index = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2348
    :cond_4
    const-string v0, "HtcIccPbkEntryCache_QMI"

    const-string v1, "anrindex out of mAnrRecordLists.get(num).size()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2351
    :cond_5
    const-string v0, "HtcIccPbkEntryCache_QMI"

    const-string v1, "num out of mAnrRecordLists.size()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2366
    :cond_6
    const-string v0, "HtcIccPbkEntryCache_QMI"

    const-string v1, "Can not find empty ANR record"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private checkFilesStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/PhoneBookEntry;)I
    .locals 7
    .parameter "number1"
    .parameter "number2"
    .parameter "email"
    .parameter "num"
    .parameter "entry"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 2003
    const/4 v2, 0x0

    .line 2004
    .local v2, error:I
    iput-boolean v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mANR_swap:Z

    .line 2006
    iget-boolean v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v5, v5, v3

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v5, v5, v6

    if-nez v5, :cond_0

    .line 2069
    :goto_0
    return v3

    .line 2010
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-nez v5, :cond_1

    move v3, v4

    .line 2011
    goto :goto_0

    .line 2014
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v5

    if-nez v5, :cond_2

    move v3, v4

    .line 2015
    goto :goto_0

    .line 2019
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2020
    iget-boolean v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    if-ne v4, v6, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v4

    if-ne v4, v6, :cond_3

    .line 2021
    iget v4, p5, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    if-nez v4, :cond_3

    .line 2022
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getFirstEmptyEmailRecord(I)Lcom/android/internal/telephony/EmailRecord;

    move-result-object v1

    .line 2023
    .local v1, emailRecord:Lcom/android/internal/telephony/EmailRecord;
    if-nez v1, :cond_3

    .line 2024
    add-int/lit8 v2, v2, 0x1

    .line 2031
    .end local v1           #emailRecord:Lcom/android/internal/telephony/EmailRecord;
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2032
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v4, v4, v3

    if-ne v4, v6, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v4

    if-ne v4, v6, :cond_4

    .line 2033
    iget-object v4, p5, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v4, v4, v3

    if-nez v4, :cond_4

    .line 2034
    invoke-virtual {p0, p4, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getFirstEmptyAnrRecord(II)Lcom/android/internal/telephony/AnrRecord;

    move-result-object v0

    .line 2035
    .local v0, anrRecord:Lcom/android/internal/telephony/AnrRecord;
    if-nez v0, :cond_4

    .line 2036
    add-int/lit8 v2, v2, 0x2

    .line 2042
    .end local v0           #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    :cond_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 2043
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v3, v3, v6

    if-ne v3, v6, :cond_5

    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v3

    if-ne v3, v6, :cond_5

    .line 2044
    iget-object v3, p5, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v3, v3, v6

    if-nez v3, :cond_5

    .line 2045
    invoke-virtual {p0, p4, v6}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getFirstEmptyAnrRecord(II)Lcom/android/internal/telephony/AnrRecord;

    move-result-object v0

    .line 2046
    .restart local v0       #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    if-nez v0, :cond_5

    .line 2047
    add-int/lit8 v2, v2, 0x4

    .end local v0           #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    :cond_5
    :goto_1
    move v3, v2

    .line 2069
    goto :goto_0

    .line 2052
    :cond_6
    const/4 v3, 0x2

    if-eq v2, v3, :cond_7

    const/4 v3, 0x3

    if-ne v2, v3, :cond_8

    .line 2053
    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v3, v3, v6

    if-ne v3, v6, :cond_8

    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v3

    if-ne v3, v6, :cond_8

    .line 2054
    iget-object v3, p5, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v3, v3, v6

    if-nez v3, :cond_9

    .line 2055
    invoke-virtual {p0, p4, v6}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getFirstEmptyAnrRecord(II)Lcom/android/internal/telephony/AnrRecord;

    move-result-object v0

    .line 2056
    .restart local v0       #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    if-eqz v0, :cond_8

    .line 2057
    iput-boolean v6, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mANR_swap:Z

    .line 2064
    .end local v0           #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    :cond_8
    :goto_2
    iget-boolean v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mANR_swap:Z

    if-ne v3, v6, :cond_5

    .line 2065
    add-int/lit8 v2, v2, -0x2

    goto :goto_1

    .line 2060
    :cond_9
    iput-boolean v6, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mANR_swap:Z

    goto :goto_2
.end method

.method private checkNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "number"
    .parameter "number1"
    .parameter "number2"

    .prologue
    const/16 v6, 0x2b

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/16 v1, 0x8

    const/4 v3, 0x1

    .line 1969
    const/4 v0, 0x0

    .line 1971
    .local v0, error:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1972
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v4, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_1

    move v0, v1

    .line 1999
    .end local v0           #error:I
    :cond_0
    :goto_0
    return v0

    .line 1977
    .restart local v0       #error:I
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v2, v2, v5

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v2, v2, v3

    if-ne v2, v3, :cond_4

    .line 1978
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-nez v2, :cond_3

    move v0, v1

    .line 1979
    goto :goto_0

    .line 1982
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 1983
    goto :goto_0

    .line 1987
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v2, v2, v5

    if-ne v2, v3, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1988
    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v4, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_5

    move v0, v1

    .line 1989
    goto :goto_0

    .line 1993
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v2, v2, v5

    if-ne v2, v3, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1994
    invoke-virtual {p3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v4, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 1995
    goto :goto_0
.end method

.method private getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .locals 2

    .prologue
    .line 3062
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    if-eqz v0, :cond_0

    .line 3063
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 3065
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler(Lcom/android/internal/telephony/IccFileHandler;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    goto :goto_0
.end method

.method private getPbkEntryListIfLoaded()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/PhoneBookEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private handleExt1loaded(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 1366
    const-string v4, "handleExt1loaded"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1369
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1370
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    move-object v1, v4

    check-cast v1, Ljava/util/ArrayList;

    .line 1372
    .local v1, ext1Data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 1373
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1374
    .local v2, ext1DataSize:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    .line 1375
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1376
    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v6, v4}, Lcom/android/internal/telephony/HtcExt1Record;->parseFromEf(I[B)Lcom/android/internal/telephony/HtcExt1Record;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1375
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1381
    .end local v2           #ext1DataSize:I
    .end local v3           #i:I
    :cond_0
    const-string v4, "HtcIccPbkEntryCache_QMI"

    const-string v5, "Failed to load EF_EXT1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    :cond_1
    return-void
.end method

.method private handlePollPBResult(ILandroid/os/AsyncResult;)V
    .locals 5
    .parameter "what"
    .parameter "ar"

    .prologue
    .line 1387
    iget-object v3, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->pollingContext:[I

    if-eq v3, v4, :cond_1

    .line 1419
    :cond_0
    :goto_0
    return-void

    .line 1389
    :cond_1
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 1392
    const-string v3, "handlePollPBResult()"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1394
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 1395
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1397
    :pswitch_0
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 1399
    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    .line 1400
    .local v2, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/PhoneBookEntry;>;"
    if-eqz v2, :cond_0

    .line 1402
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePollPBResult() temp.size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1405
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1406
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 1408
    .local v0, entry:Lcom/android/internal/telephony/PhoneBookEntry;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePollPBResult() entry.index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1410
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 1411
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    iget v4, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1405
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1395
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private log(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 2678
    return-void
.end method

.method private notifySimPbkWaiter()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1354
    const-string v2, "notifySimPbkWaiter"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1356
    new-instance v0, Landroid/os/AsyncResult;

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-direct {v0, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1357
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    .line 1358
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1359
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SIM_CONTACTS_READY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1360
    .local v1, intent:Landroid/content/Intent;
    invoke-static {v1, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1363
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V
    .locals 7
    .parameter
    .parameter "ar"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;",
            "Landroid/os/AsyncResult;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    const/4 v6, 0x0

    .line 2580
    if-nez p1, :cond_0

    .line 2591
    :goto_0
    return-void

    .line 2584
    :cond_0
    const-string v3, "HtcIccPbkEntryCache_QMI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyWaiters"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2585
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, s:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 2586
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 2587
    .local v2, waiter:Landroid/os/Message;
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2588
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2585
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2590
    .end local v2           #waiter:Landroid/os/Message;
    :cond_1
    iput-boolean v6, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->misloading:Z

    goto :goto_0
.end method

.method private pollPBList()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1494
    const/4 v3, 0x1

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->pollingContext:[I

    .line 1495
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->pollingContext:[I

    aput v5, v3, v5

    .line 1497
    const/4 v2, 0x0

    .local v2, start:I
    const/4 v0, 0x0

    .line 1499
    .local v0, end:I
    const-string v3, "pollPBList()"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1501
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    if-ge v0, v3, :cond_2

    .line 1502
    add-int/lit8 v2, v0, 0x1

    .line 1503
    add-int/lit8 v0, v2, 0xa

    .line 1505
    iget v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    if-le v0, v3, :cond_0

    .line 1506
    iget v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    .line 1508
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->pollingContext:[I

    aget v4, v3, v5

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v5

    .line 1509
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->pollingContext:[I

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1512
    .local v1, response:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v3, :cond_1

    .line 1513
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v2, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneBookEntries(IILandroid/os/Message;)V

    .line 1518
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " end="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1515
    :cond_1
    const-string v3, "mPhone is null"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1520
    .end local v1           #response:Landroid/os/Message;
    :cond_2
    return-void
.end method

.method private sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    .locals 2
    .parameter "response"
    .parameter "errString"

    .prologue
    .line 2594
    if-eqz p1, :cond_0

    .line 2595
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2596
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2597
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2599
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "response"
    .parameter "result"
    .parameter "ex"

    .prologue
    .line 2602
    if-nez p1, :cond_0

    .line 2608
    :goto_0
    return-void

    .line 2606
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2607
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private setLocalMemberToDefault()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3070
    iput v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    .line 3071
    iput v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    .line 3072
    iput v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUsed:I

    .line 3073
    iput-boolean v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    .line 3074
    iput-boolean v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    .line 3075
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aput-boolean v2, v0, v2

    .line 3076
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aput-boolean v2, v0, v1

    .line 3077
    iput-boolean v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->misloading:Z

    .line 3078
    iput v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mChangeCounter:I

    .line 3079
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPSC:J

    .line 3080
    iput v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPUID:I

    .line 3081
    iput-boolean v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportCC:Z

    .line 3082
    iput-boolean v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportPSC:Z

    .line 3083
    iput-boolean v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportPUID:Z

    .line 3084
    return-void
.end method

.method private static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "number"

    .prologue
    .line 1953
    if-nez p0, :cond_0

    .line 1954
    const/4 v4, 0x0

    .line 1965
    :goto_0
    return-object v4

    .line 1956
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1957
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1959
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 1960
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1961
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator_FDN(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1962
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1959
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1965
    .end local v0           #c:C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private updateADNRecord(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;Landroid/os/Message;)V
    .locals 7
    .parameter "name"
    .parameter "number"
    .parameter "entry"
    .parameter "response"

    .prologue
    .line 2476
    const/4 v2, 0x0

    .line 2477
    .local v2, efid:I
    iget v5, p3, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    div-int v3, v5, v6

    .line 2478
    .local v3, num:I
    iget v5, p3, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    iget v6, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    mul-int/2addr v6, v3

    sub-int v1, v5, v6

    .line 2480
    .local v1, adnRecordNumber:I
    iget-boolean v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    if-nez v5, :cond_1

    .line 2481
    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v5, :cond_0

    .line 2482
    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 2483
    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/16 v6, 0xc0

    invoke-virtual {v5, v3, v6}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v2

    .line 2490
    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    .line 2491
    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 2492
    if-lez v1, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gt v1, v5, :cond_2

    .line 2493
    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HtcAdnRecord;

    .line 2494
    .local v0, adnRecord:Lcom/android/internal/telephony/HtcAdnRecord;
    iput-object p1, v0, Lcom/android/internal/telephony/HtcAdnRecord;->alphaTag:Ljava/lang/String;

    .line 2495
    iput-object p2, v0, Lcom/android/internal/telephony/HtcAdnRecord;->number:Ljava/lang/String;

    .line 2498
    iget v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mMsgNumber:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mMsgNumber:I

    rem-int/lit16 v5, v5, 0xff

    iput v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mMsgNumber:I

    .line 2499
    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    iget v6, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mMsgNumber:I

    invoke-virtual {v5, v6, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2501
    const/4 v5, 0x5

    iget v6, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mMsgNumber:I

    invoke-virtual {p0, v5, v6, v3, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 2503
    .local v4, res:Landroid/os/Message;
    iget v5, v0, Lcom/android/internal/telephony/HtcAdnRecord;->recordNumber:I

    invoke-virtual {p0, v5, v0, v2, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateADNByIndex(ILcom/android/internal/telephony/HtcAdnRecord;ILandroid/os/Message;)V

    .line 2516
    .end local v0           #adnRecord:Lcom/android/internal/telephony/HtcAdnRecord;
    .end local v4           #res:Landroid/os/Message;
    :goto_1
    return-void

    .line 2487
    :cond_1
    const/16 v2, 0x6f3a

    goto :goto_0

    .line 2505
    :cond_2
    const-string v5, "HtcIccPbkEntryCache_QMI"

    const-string v6, "adnRecordNumber out of mADNRecordList.get(num).size()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2506
    const-string v5, "error"

    invoke-direct {p0, p4, v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_1

    .line 2509
    :cond_3
    const-string v5, "HtcIccPbkEntryCache_QMI"

    const-string v6, "num out of mADNRecordList.size()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2510
    const-string v5, "error"

    invoke-direct {p0, p4, v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_1

    .line 2513
    :cond_4
    const-string v5, "HtcIccPbkEntryCache_QMI"

    const-string v6, "The efid of ADN is 0"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2514
    const-string v5, "error"

    invoke-direct {p0, p4, v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V
    .locals 11
    .parameter "anrNumber"
    .parameter "entry"
    .parameter "anrEntryIndex"

    .prologue
    const/16 v5, 0xff

    const/16 v4, 0x12

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAnrRecord()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 2378
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    if-lez v0, :cond_0

    .line 2379
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v0

    if-ne v0, v9, :cond_0

    .line 2380
    iget v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    div-int v8, v0, v1

    .line 2381
    .local v8, num:I
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, v8, p3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v3

    .line 2382
    .local v3, efid:I
    if-eqz v3, :cond_0

    .line 2384
    iget v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    iget v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    mul-int/2addr v1, v8

    sub-int v6, v0, v1

    .line 2386
    .local v6, adnRecordNumber:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v9, :cond_4

    .line 2388
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_3

    .line 2389
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_2

    .line 2390
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v0, v0, p3

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v0, v0, p3

    if-eq v0, v5, :cond_0

    .line 2392
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v0, v0, p3

    if-lez v0, :cond_1

    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v1, v0, p3

    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v1, v0, :cond_1

    .line 2395
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v1, v1, p3

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/AnrRecord;

    .line 2398
    .local v2, anrRecord:Lcom/android/internal/telephony/AnrRecord;
    invoke-virtual {v2}, Lcom/android/internal/telephony/AnrRecord;->clear()V

    .line 2399
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v1, v0, p3

    invoke-virtual {p0, v4, v8, p3, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move-object v0, p0

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateAnrByIndex(ILcom/android/internal/telephony/AnrRecord;IILandroid/os/Message;)V

    .line 2403
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aput v10, v0, p3

    .line 2404
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, p3

    .line 2406
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v0

    if-ne v0, v9, :cond_0

    .line 2407
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getIAPIndex(I)I

    move-result v7

    .line 2408
    .local v7, index:I
    if-ltz v7, :cond_0

    .line 2409
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    const/4 v1, -0x1

    aput-byte v1, v0, v7

    .line 2473
    .end local v2           #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    .end local v3           #efid:I
    .end local v6           #adnRecordNumber:I
    .end local v7           #index:I
    .end local v8           #num:I
    :cond_0
    :goto_0
    return-void

    .line 2413
    .restart local v3       #efid:I
    .restart local v6       #adnRecordNumber:I
    .restart local v8       #num:I
    :cond_1
    const-string v0, "HtcIccPbkEntryCache_QMI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "out of anr index = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v4, v4, p3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2418
    :cond_2
    const-string v0, "HtcIccPbkEntryCache_QMI"

    const-string v1, "anrEntryIndex out of mAnrRecordLists.get(num).size()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2421
    :cond_3
    const-string v0, "HtcIccPbkEntryCache_QMI"

    const-string v1, "num out of mAnrRecordLists.size()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2427
    :cond_4
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v0, v0, p3

    if-eqz v0, :cond_9

    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v0, v0, p3

    if-eq v0, v5, :cond_9

    .line 2430
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v0

    if-ne v0, v9, :cond_5

    .line 2431
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getIAPIndex(I)I

    move-result v7

    .line 2432
    .restart local v7       #index:I
    if-ltz v7, :cond_5

    .line 2433
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    iget-object v1, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v1, v1, p3

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    .line 2437
    .end local v7           #index:I
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_8

    .line 2438
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_7

    .line 2439
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v0, v0, p3

    if-lez v0, :cond_6

    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v1, v0, p3

    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v1, v0, :cond_6

    .line 2442
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v1, v1, p3

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/AnrRecord;

    .line 2445
    .restart local v2       #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    iput v10, v2, Lcom/android/internal/telephony/AnrRecord;->mAnrId:I

    .line 2446
    iput v6, v2, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    .line 2447
    iput-object p1, v2, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 2448
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/16 v1, 0xc0

    invoke-virtual {v0, v8, v1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFSFI(II)I

    move-result v0

    iput v0, v2, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    .line 2450
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v1, v0, p3

    invoke-virtual {p0, v4, v8, p3, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move-object v0, p0

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateAnrByIndex(ILcom/android/internal/telephony/AnrRecord;IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2455
    .end local v2           #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    :cond_6
    const-string v0, "HtcIccPbkEntryCache_QMI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "out of anr index = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v4, v4, p3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2459
    :cond_7
    const-string v0, "HtcIccPbkEntryCache_QMI"

    const-string v1, "anrEntryIndex out of mAnrRecordLists.get(num).size()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2462
    :cond_8
    const-string v0, "HtcIccPbkEntryCache_QMI"

    const-string v1, "num out of mAnrRecordLists.size()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2467
    :cond_9
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->addAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V

    goto/16 :goto_0
.end method

.method private updateEmailRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;)V
    .locals 11
    .parameter "email"
    .parameter "entry"

    .prologue
    const/16 v10, 0xc0

    const/16 v9, 0x11

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2074
    const-string v4, "updateEmailRecord()"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 2075
    iget-boolean v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    if-ne v4, v6, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    if-lez v4, :cond_0

    .line 2077
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v4

    if-ne v4, v6, :cond_0

    .line 2078
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    div-int v3, v4, v5

    .line 2079
    .local v3, num:I
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/16 v5, 0xca

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v1

    .line 2081
    .local v1, efid:I
    if-eqz v1, :cond_0

    .line 2082
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    iget v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    mul-int/2addr v5, v3

    sub-int v0, v4, v5

    .line 2084
    .local v0, adnRecordNumber:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2086
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 2087
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    if-eqz v4, :cond_0

    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    const/16 v5, 0xff

    if-eq v4, v5, :cond_0

    .line 2089
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    if-lez v4, :cond_1

    iget v5, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v5, v4, :cond_1

    .line 2092
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iget v5, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/EmailRecord;

    .line 2095
    .local v2, emailRecord:Lcom/android/internal/telephony/EmailRecord;
    invoke-virtual {v2}, Lcom/android/internal/telephony/EmailRecord;->clear()V

    .line 2096
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    invoke-virtual {p0, v9, v3, v7, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v1, v4, v2, v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateEmailByIndex(IILcom/android/internal/telephony/EmailRecord;Landroid/os/Message;)V

    .line 2103
    iput v7, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    .line 2104
    const-string v4, ""

    iput-object v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->email:Ljava/lang/String;

    .line 2106
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v4

    if-ne v4, v6, :cond_0

    .line 2108
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    const/4 v5, -0x1

    aput-byte v5, v4, v8

    .line 2202
    .end local v0           #adnRecordNumber:I
    .end local v1           #efid:I
    .end local v2           #emailRecord:Lcom/android/internal/telephony/EmailRecord;
    .end local v3           #num:I
    :cond_0
    :goto_0
    return-void

    .line 2111
    .restart local v0       #adnRecordNumber:I
    .restart local v1       #efid:I
    .restart local v3       #num:I
    :cond_1
    const-string v4, "HtcIccPbkEntryCache_QMI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "out of e-mail index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2117
    :cond_2
    const-string v4, "HtcIccPbkEntryCache_QMI"

    const-string v5, "num out of mEmailRecordList.size()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2120
    :cond_3
    const/4 v2, 0x0

    .line 2123
    .restart local v2       #emailRecord:Lcom/android/internal/telephony/EmailRecord;
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    if-eqz v4, :cond_7

    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    const/16 v5, 0xff

    if-eq v4, v5, :cond_7

    .line 2125
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v4

    if-ne v4, v6, :cond_4

    .line 2126
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    iget v5, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v8

    .line 2128
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 2129
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    if-lez v4, :cond_5

    iget v5, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v5, v4, :cond_5

    .line 2132
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iget v5, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #emailRecord:Lcom/android/internal/telephony/EmailRecord;
    check-cast v2, Lcom/android/internal/telephony/EmailRecord;

    .line 2134
    .restart local v2       #emailRecord:Lcom/android/internal/telephony/EmailRecord;
    iput v0, v2, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    .line 2135
    iput-object p1, v2, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    .line 2136
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4, v3, v10}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFSFI(II)I

    move-result v4

    iput v4, v2, Lcom/android/internal/telephony/EmailRecord;->mAdnSFI:I

    .line 2141
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    invoke-virtual {p0, v9, v3, v7, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v1, v4, v2, v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateEmailByIndex(IILcom/android/internal/telephony/EmailRecord;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2149
    :cond_5
    const-string v4, "HtcIccPbkEntryCache_QMI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "out of e-mail index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2154
    :cond_6
    const-string v4, "HtcIccPbkEntryCache_QMI"

    const-string v5, "num out of mEmailRecordList.size()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2159
    :cond_7
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v4

    if-ne v4, v6, :cond_9

    .line 2160
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getFirstEmptyEmailRecord(I)Lcom/android/internal/telephony/EmailRecord;

    move-result-object v2

    .line 2161
    if-eqz v2, :cond_8

    .line 2162
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    iget v5, v2, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v8

    .line 2180
    :cond_8
    :goto_1
    if-eqz v2, :cond_c

    .line 2181
    iput v0, v2, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    .line 2182
    iput-object p1, v2, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    .line 2183
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4, v3, v10}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFSFI(II)I

    move-result v4

    iput v4, v2, Lcom/android/internal/telephony/EmailRecord;->mAdnSFI:I

    .line 2187
    iget v4, v2, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    invoke-virtual {p0, v9, v3, v7, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v1, v4, v2, v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateEmailByIndex(IILcom/android/internal/telephony/EmailRecord;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2165
    :cond_9
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    .line 2166
    if-lez v0, :cond_a

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v0, v4, :cond_a

    .line 2169
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #emailRecord:Lcom/android/internal/telephony/EmailRecord;
    check-cast v2, Lcom/android/internal/telephony/EmailRecord;

    .restart local v2       #emailRecord:Lcom/android/internal/telephony/EmailRecord;
    goto :goto_1

    .line 2173
    :cond_a
    const-string v4, "HtcIccPbkEntryCache_QMI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "out of e-mail index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2176
    :cond_b
    const-string v4, "HtcIccPbkEntryCache_QMI"

    const-string v5, "num out of mEmailRecordList.size()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2195
    :cond_c
    const-string v4, "HtcIccPbkEntryCache_QMI"

    const-string v5, "Can not find empty email record"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private updateIAP(IZ)V
    .locals 15
    .parameter "index"
    .parameter "clear"

    .prologue
    .line 2205
    const-string v11, "updateIAP()"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 2206
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_0

    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_0

    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 2210
    :cond_0
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v11, :cond_3

    iget v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    if-lez v11, :cond_3

    .line 2211
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 2212
    add-int/lit8 v11, p1, -0x1

    iget v12, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    div-int v7, v11, v12

    .line 2214
    .local v7, num:I
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/16 v12, 0xc1

    invoke-virtual {v11, v7, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v3

    .line 2217
    .local v3, efid_iap:I
    if-eqz v3, :cond_9

    .line 2218
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v7, v11, :cond_8

    .line 2219
    iget v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    mul-int/2addr v11, v7

    sub-int v9, p1, v11

    .line 2221
    .local v9, recordNumber:I
    if-lez v9, :cond_7

    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-gt v9, v11, :cond_7

    .line 2224
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    add-int/lit8 v12, v9, -0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/IAPRecord;

    .line 2227
    .local v5, iapRecord:Lcom/android/internal/telephony/IAPRecord;
    iget-object v11, v5, Lcom/android/internal/telephony/IAPRecord;->mRecordData:[B

    array-length v11, v11

    new-array v10, v11, [B

    .line 2229
    .local v10, recordString:[B
    const/4 v1, 0x0

    .line 2230
    .local v1, doUpdate:Z
    const/4 v11, 0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_4

    .line 2231
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget-object v11, v5, Lcom/android/internal/telephony/IAPRecord;->mRecordData:[B

    array-length v11, v11

    if-ge v4, v11, :cond_1

    .line 2232
    const/4 v11, -0x1

    aput-byte v11, v10, v4

    .line 2231
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2234
    :cond_1
    const/4 v1, 0x1

    .line 2285
    .end local v4           #i:I
    :cond_2
    :goto_1
    const/4 v11, 0x1

    if-ne v1, v11, :cond_3

    .line 2286
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "num ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " doUpdate = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " iapRecord.mRecordNumber = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/android/internal/telephony/IAPRecord;->mRecordNumber:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 2289
    const/4 v11, 0x0

    iget-object v12, v5, Lcom/android/internal/telephony/IAPRecord;->mRecordData:[B

    const/4 v13, 0x0

    iget-object v14, v5, Lcom/android/internal/telephony/IAPRecord;->mRecordData:[B

    array-length v14, v14

    invoke-static {v10, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2293
    const/16 v11, 0x10

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v7, v12, v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {p0, v9, v5, v3, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateIAPByIndex(ILcom/android/internal/telephony/IAPRecord;ILandroid/os/Message;)V

    .line 2310
    .end local v1           #doUpdate:Z
    .end local v3           #efid_iap:I
    .end local v5           #iapRecord:Lcom/android/internal/telephony/IAPRecord;
    .end local v7           #num:I
    .end local v9           #recordNumber:I
    .end local v10           #recordString:[B
    :cond_3
    :goto_2
    return-void

    .line 2236
    .restart local v1       #doUpdate:Z
    .restart local v3       #efid_iap:I
    .restart local v5       #iapRecord:Lcom/android/internal/telephony/IAPRecord;
    .restart local v7       #num:I
    .restart local v9       #recordNumber:I
    .restart local v10       #recordString:[B
    :cond_4
    iget-object v11, v5, Lcom/android/internal/telephony/IAPRecord;->mRecordData:[B

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v14, v5, Lcom/android/internal/telephony/IAPRecord;->mRecordData:[B

    array-length v14, v14

    invoke-static {v11, v12, v10, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2239
    iget-boolean v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    .line 2241
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/16 v12, 0xca

    invoke-virtual {v11, v7, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v2

    .line 2243
    .local v2, efid:I
    if-eqz v2, :cond_5

    .line 2244
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v11, v7, v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getIAPTagNumber(II)I

    move-result v8

    .line 2246
    .local v8, position:I
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    const/4 v12, 0x2

    aget-byte v11, v11, v12

    if-eqz v11, :cond_5

    if-lez v8, :cond_5

    .line 2247
    add-int/lit8 v11, v8, -0x1

    iget-object v12, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    const/4 v13, 0x2

    aget-byte v12, v12, v13

    aput-byte v12, v10, v11

    .line 2248
    const/4 v1, 0x1

    .line 2253
    .end local v2           #efid:I
    .end local v8           #position:I
    :cond_5
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v12, 0x0

    aget-boolean v11, v11, v12

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    .line 2256
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v12, 0x0

    invoke-virtual {v11, v7, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v2

    .line 2258
    .restart local v2       #efid:I
    if-eqz v2, :cond_6

    .line 2259
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v11, v7, v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getIAPTagNumber(II)I

    move-result v8

    .line 2261
    .restart local v8       #position:I
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getIAPIndex(I)I

    move-result v6

    .line 2262
    .local v6, index_iap:I
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    aget-byte v11, v11, v6

    if-eqz v11, :cond_6

    if-lez v8, :cond_6

    .line 2263
    add-int/lit8 v11, v8, -0x1

    iget-object v12, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    aget-byte v12, v12, v6

    aput-byte v12, v10, v11

    .line 2264
    const/4 v1, 0x1

    .line 2269
    .end local v2           #efid:I
    .end local v6           #index_iap:I
    .end local v8           #position:I
    :cond_6
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v12, 0x1

    aget-boolean v11, v11, v12

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 2272
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v12, 0x1

    invoke-virtual {v11, v7, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v2

    .line 2274
    .restart local v2       #efid:I
    if-eqz v2, :cond_2

    .line 2275
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v11, v7, v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getIAPTagNumber(II)I

    move-result v8

    .line 2277
    .restart local v8       #position:I
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getIAPIndex(I)I

    move-result v6

    .line 2278
    .restart local v6       #index_iap:I
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    aget-byte v11, v11, v6

    if-eqz v11, :cond_2

    if-lez v8, :cond_2

    .line 2279
    add-int/lit8 v11, v8, -0x1

    iget-object v12, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    aget-byte v12, v12, v6

    aput-byte v12, v10, v11

    .line 2280
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 2298
    .end local v1           #doUpdate:Z
    .end local v2           #efid:I
    .end local v5           #iapRecord:Lcom/android/internal/telephony/IAPRecord;
    .end local v6           #index_iap:I
    .end local v8           #position:I
    .end local v10           #recordString:[B
    :cond_7
    const-string v11, "HtcIccPbkEntryCache_QMI"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "out of mIAPRecordList.get(num).size()"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2301
    .end local v9           #recordNumber:I
    :cond_8
    const-string v11, "HtcIccPbkEntryCache_QMI"

    const-string v12, "num out of mIAPRecordList.size()"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2304
    :cond_9
    const-string v11, "HtcIccPbkEntryCache_QMI"

    const-string v12, "no EF-IAP"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private updatePSCRecord(ZII)V
    .locals 12
    .parameter "addpbk"
    .parameter "num"
    .parameter "index"

    .prologue
    .line 1845
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    .line 1847
    .local v3, iccFh:Lcom/android/internal/telephony/IccFileHandler;
    const/4 v7, 0x0

    .line 1848
    .local v7, updatePSC:Z
    const/4 v5, 0x0

    .line 1849
    .local v5, resetAllUID:Z
    iget-boolean v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportCC:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 1850
    iget v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mChangeCounter:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mChangeCounter:I

    .line 1852
    iget v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mChangeCounter:I

    const v9, 0xffff

    if-le v8, v9, :cond_0

    .line 1853
    const/4 v7, 0x1

    .line 1854
    const/4 v8, 0x1

    iput v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mChangeCounter:I

    .line 1857
    :cond_0
    const/4 v8, 0x2

    new-array v0, v8, [B

    .line 1858
    .local v0, data:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v8, 0x2

    if-ge v2, v8, :cond_1

    .line 1859
    array-length v8, v0

    add-int/lit8 v8, v8, -0x1

    sub-int/2addr v8, v2

    mul-int/lit8 v4, v8, 0x8

    .line 1860
    .local v4, offset:I
    iget v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mChangeCounter:I

    ushr-int/2addr v8, v4

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    .line 1858
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1862
    .end local v4           #offset:I
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Update Change Counter: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1864
    if-eqz v3, :cond_2

    .line 1865
    const/16 v8, 0x4f23

    const/16 v9, 0x17

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v3, v8, v0, v9}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 1869
    .end local v0           #data:[B
    .end local v2           #i:I
    :cond_2
    const/4 v8, 0x1

    if-ne p1, v8, :cond_7

    iget-boolean v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportPUID:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    .line 1870
    iget v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPUID:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPUID:I

    .line 1872
    iget v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPUID:I

    const v9, 0xffff

    if-le v8, v9, :cond_3

    .line 1874
    const/4 v7, 0x1

    .line 1875
    const/4 v8, 0x1

    iput v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPUID:I

    .line 1878
    :cond_3
    const/4 v8, 0x2

    new-array v0, v8, [B

    .line 1879
    .restart local v0       #data:[B
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    const/4 v8, 0x2

    if-ge v2, v8, :cond_4

    .line 1880
    array-length v8, v0

    add-int/lit8 v8, v8, -0x1

    sub-int/2addr v8, v2

    mul-int/lit8 v4, v8, 0x8

    .line 1881
    .restart local v4       #offset:I
    iget v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPUID:I

    ushr-int/2addr v8, v4

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    .line 1879
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1883
    .end local v4           #offset:I
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Update mPUID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1885
    if-eqz v3, :cond_5

    .line 1886
    const/16 v8, 0x4f24

    const/16 v9, 0x19

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v3, v8, v0, v9}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 1890
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v8

    if-ge p2, v8, :cond_c

    .line 1891
    iget-object v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/16 v9, 0xc9

    invoke-virtual {v8, p2, v9}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v1

    .line 1892
    .local v1, efid:I
    if-eqz v1, :cond_b

    .line 1893
    iget-object v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUIDRecordList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge p2, v8, :cond_a

    .line 1894
    iget-object v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUIDRecordList:Ljava/util/ArrayList;

    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge p3, v8, :cond_9

    .line 1895
    iget-object v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUIDRecordList:Ljava/util/ArrayList;

    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    add-int/lit8 v9, p3, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/UIDRecord;

    .line 1896
    .local v6, uidRecord:Lcom/android/internal/telephony/UIDRecord;
    array-length v8, v0

    iget-object v9, v6, Lcom/android/internal/telephony/UIDRecord;->mRecordData:[B

    array-length v9, v9

    if-ne v8, v9, :cond_7

    .line 1897
    const/4 v2, 0x0

    :goto_2
    iget-object v8, v6, Lcom/android/internal/telephony/UIDRecord;->mRecordData:[B

    array-length v8, v8

    if-ge v2, v8, :cond_6

    .line 1898
    iget-object v8, v6, Lcom/android/internal/telephony/UIDRecord;->mRecordData:[B

    aget-byte v9, v0, v2

    aput-byte v9, v8, v2

    .line 1897
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1900
    :cond_6
    new-instance v8, Lcom/android/internal/telephony/UIDRecordLoader;

    iget-object v9, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v10, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v8, v9, v10}, Lcom/android/internal/telephony/UIDRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    iget v9, v6, Lcom/android/internal/telephony/UIDRecord;->mRecordNumber:I

    const/16 v10, 0xe

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v8, v1, v9, v6, v10}, Lcom/android/internal/telephony/UIDRecordLoader;->updateEF(IILcom/android/internal/telephony/UIDRecord;Landroid/os/Message;)V

    .line 1932
    .end local v0           #data:[B
    .end local v1           #efid:I
    .end local v2           #i:I
    .end local v6           #uidRecord:Lcom/android/internal/telephony/UIDRecord;
    :cond_7
    :goto_3
    iget-boolean v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportPSC:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_e

    const/4 v8, 0x1

    if-ne v7, v8, :cond_e

    .line 1933
    iget-wide v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPSC:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPSC:J

    .line 1934
    iget-wide v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPSC:J

    const-wide v10, 0xffffffffL

    cmp-long v8, v8, v10

    if-lez v8, :cond_8

    .line 1935
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPSC:J

    .line 1937
    :cond_8
    const/4 v8, 0x4

    new-array v0, v8, [B

    .line 1938
    .restart local v0       #data:[B
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    const/4 v8, 0x4

    if-ge v2, v8, :cond_d

    .line 1939
    array-length v8, v0

    add-int/lit8 v8, v8, -0x1

    sub-int/2addr v8, v2

    mul-int/lit8 v4, v8, 0x8

    .line 1940
    .restart local v4       #offset:I
    iget-wide v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPSC:J

    ushr-long/2addr v8, v4

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    .line 1938
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1904
    .end local v4           #offset:I
    .restart local v1       #efid:I
    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "out of EFUID index = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 1907
    :cond_a
    const-string v8, "num out of mUIDRecordList().size()"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 1910
    :cond_b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can not find EFUID id num:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 1913
    .end local v1           #efid:I
    :cond_c
    const-string v8, "num out of mPBRParser size()"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 1943
    :cond_d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Update PSC: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1945
    if-eqz v3, :cond_e

    .line 1946
    const/16 v8, 0x4f22

    const/16 v9, 0x15

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v3, v8, v0, v9}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 1949
    .end local v0           #data:[B
    .end local v2           #i:I
    :cond_e
    return-void
.end method


# virtual methods
.method public addPBKEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)J
    .locals 18
    .parameter "name"
    .parameter "number"
    .parameter "number1"
    .parameter "number2"
    .parameter "emailAddress"
    .parameter "response"

    .prologue
    .line 1532
    const-string v4, "addPBKEntry()"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1533
    const-wide/16 v13, 0x0

    .line 1534
    .local v13, index:J
    const/4 v10, 0x0

    .line 1537
    .local v10, error:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-nez v4, :cond_0

    .line 1538
    const-string v4, "mPhone null"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    move-wide v15, v13

    .line 1646
    .end local v13           #index:J
    .local v15, index:J
    :goto_0
    return-wide v15

    .line 1544
    .end local v15           #index:J
    .restart local v13       #index:J
    :cond_0
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    array-length v4, v4

    if-ge v11, v4, :cond_1

    .line 1545
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    const/4 v5, 0x0

    aput-byte v5, v4, v11

    .line 1544
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1548
    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1550
    .local v17, phonenumber:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1551
    const-string v4, "error"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    move-wide v15, v13

    .line 1552
    .end local v13           #index:J
    .restart local v15       #index:J
    goto :goto_0

    .line 1555
    .end local v15           #index:J
    .restart local v13       #index:J
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->checkNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 1557
    if-eqz v10, :cond_3

    .line 1558
    const-string v4, "error"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    move-wide v15, v13

    .line 1559
    .end local v13           #index:J
    .restart local v15       #index:J
    goto :goto_0

    .line 1563
    .end local v15           #index:J
    .restart local v13       #index:J
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v12

    .line 1565
    .local v12, iccCardInterface:Lcom/android/internal/telephony/IccCard;
    if-eqz v12, :cond_4

    invoke-virtual {v12}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v4, v5, :cond_4

    sget-boolean v4, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG:Z

    if-nez v4, :cond_4

    .line 1567
    const-string v4, "error"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    :goto_2
    move-wide v15, v13

    .line 1646
    .end local v13           #index:J
    .restart local v15       #index:J
    goto :goto_0

    .line 1571
    .end local v15           #index:J
    .restart local v13       #index:J
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getFirstEmptyPbkRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/PhoneBookEntry;

    move-result-object v9

    .line 1573
    .local v9, entry:Lcom/android/internal/telephony/PhoneBookEntry;
    if-nez v9, :cond_5

    .line 1574
    const-string v4, "AdnFull"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_2

    .line 1576
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    if-gtz v4, :cond_6

    .line 1577
    const-string v4, "error"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_2

    .line 1579
    :cond_6
    iget v4, v9, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    div-int v8, v4, v5

    .line 1581
    .local v8, num:I
    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    .line 1582
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->checkFilesStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/PhoneBookEntry;)I

    move-result v10

    .line 1584
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mANR_swap:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    .line 1585
    move-object/from16 p4, p3

    .line 1586
    const-string p3, ""

    .line 1589
    :cond_7
    if-eqz v10, :cond_8

    .line 1590
    packed-switch v10, :pswitch_data_0

    .line 1601
    const-string v4, "error"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_2

    .line 1598
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MemoryFull:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_2

    .line 1607
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    .line 1608
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v9}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateEmailRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;)V

    .line 1614
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v5, 0x0

    aget-boolean v4, v4, v5

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    .line 1615
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v9, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->addAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V

    .line 1618
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v5, 0x1

    aget-boolean v4, v4, v5

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b

    .line 1619
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v9, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->addAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V

    .line 1625
    :cond_b
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAdditionalNumbersInSim()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1626
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    const/4 v5, 0x1

    if-eq v4, v5, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v5, 0x0

    aget-boolean v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v5, 0x1

    aget-boolean v4, v4, v5

    const/4 v5, 0x1

    if-ne v4, v5, :cond_d

    .line 1629
    :cond_c
    iget v4, v9, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateIAP(IZ)V

    .line 1636
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v9, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateADNRecord(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;Landroid/os/Message;)V

    .line 1638
    const/4 v4, 0x1

    iget v5, v9, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8, v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updatePSCRecord(ZII)V

    .line 1640
    iget v4, v9, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    int-to-long v13, v4

    goto/16 :goto_2

    .line 1590
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method checkSupportANR(I)Z
    .locals 1
    .parameter "anrEntryIndex"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method checkSupportEmail()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    return v0
.end method

.method convertEventToTag(II)I
    .locals 1
    .parameter "event"
    .parameter "index"

    .prologue
    const/4 v0, 0x1

    .line 2961
    packed-switch p1, :pswitch_data_0

    .line 2981
    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 2964
    :pswitch_0
    const/16 v0, 0xc9

    goto :goto_0

    .line 2967
    :pswitch_1
    const/16 v0, 0xc0

    goto :goto_0

    .line 2969
    :pswitch_2
    const/16 v0, 0xc1

    goto :goto_0

    .line 2971
    :pswitch_3
    const/16 v0, 0xca

    goto :goto_0

    .line 2973
    :pswitch_4
    const/16 v0, 0xc2

    goto :goto_0

    .line 2975
    :pswitch_5
    if-nez p2, :cond_1

    .line 2976
    const/4 v0, 0x0

    goto :goto_0

    .line 2977
    :cond_1
    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 2961
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public deletePBKEntry(ILandroid/os/Message;)V
    .locals 9
    .parameter "recordNumber"
    .parameter "response"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1654
    const-string v4, "deletePBKEntry()"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1656
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-nez v4, :cond_0

    .line 1657
    const-string v4, "mPhone null"

    invoke-direct {p0, p2, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 1661
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    .line 1663
    .local v1, iccCardInterface:Lcom/android/internal/telephony/IccCard;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v4, v5, :cond_1

    sget-boolean v4, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG:Z

    if-nez v4, :cond_1

    .line 1665
    const-string v4, "error"

    invoke-direct {p0, p2, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 1720
    :goto_0
    return-void

    .line 1669
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    if-eqz v4, :cond_9

    .line 1670
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 1672
    .local v0, entry:Lcom/android/internal/telephony/PhoneBookEntry;
    if-eqz v0, :cond_2

    iget v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    if-gtz v4, :cond_3

    .line 1673
    :cond_2
    const-string v4, "error"

    invoke-direct {p0, p2, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 1678
    :cond_3
    iget-boolean v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    if-ne v4, v6, :cond_4

    .line 1679
    invoke-direct {p0, v8, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateEmailRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;)V

    .line 1685
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v4, v4, v7

    if-ne v4, v6, :cond_5

    .line 1686
    invoke-direct {p0, v8, v0, v7}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V

    .line 1689
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v4, v4, v6

    if-ne v4, v6, :cond_6

    .line 1690
    invoke-direct {p0, v8, v0, v6}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V

    .line 1696
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAdditionalNumbersInSim()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1698
    iget-boolean v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    if-eq v4, v6, :cond_7

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v4, v4, v7

    if-eq v4, v6, :cond_7

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v4, v4, v6

    if-ne v4, v6, :cond_8

    .line 1701
    :cond_7
    iget v4, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    invoke-direct {p0, v4, v6}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateIAP(IZ)V

    .line 1708
    :cond_8
    const/4 v2, 0x0

    .line 1709
    .local v2, name:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1710
    .local v3, number:Ljava/lang/String;
    invoke-direct {p0, v2, v3, v0, p2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateADNRecord(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;Landroid/os/Message;)V

    .line 1712
    invoke-direct {p0, v7, v7, v7}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updatePSCRecord(ZII)V

    goto :goto_0

    .line 1716
    .end local v0           #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #number:Ljava/lang/String;
    :cond_9
    const-string v4, "HtcIccPbkEntryCache_QMI"

    const-string v5, "mSimPbkEntryList = null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    const-string v4, "error"

    invoke-direct {p0, p2, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 3001
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 3002
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v7, :cond_0

    .line 3003
    const-string v4, "HtcIccPbkEntryCache_QMI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispose()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3006
    new-instance v1, Ljava/lang/Exception;

    const-string v4, "SIM Phonebook Entries have been droped."

    invoke-direct {v1, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 3007
    .local v1, ex:Ljava/lang/Exception;
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v8, v8, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3008
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    .line 3012
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    if-eqz v4, :cond_3

    .line 3013
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-lt v4, v7, :cond_3

    .line 3014
    const-string v4, "HtcIccPbkEntryCache_QMI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispose()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3015
    const/4 v2, 0x0

    .local v2, msgNum:I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-gt v2, v4, :cond_3

    .line 3016
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .line 3017
    .local v3, response:Landroid/os/Message;
    if-eqz v3, :cond_2

    .line 3018
    iget v4, v3, Landroid/os/Message;->what:I

    if-eqz v4, :cond_1

    .line 3019
    const-string v4, "error"

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 3021
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 3015
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3026
    .end local v2           #msgNum:I
    .end local v3           #response:Landroid/os/Message;
    :cond_3
    return-void
.end method

.method public dropSimPbkEntries()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2691
    const-string v1, "HtcIccPbkEntryCache_QMI"

    const-string v2, "dropSimPbkEntries()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2693
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mDropSIMTimeStamp:J

    .line 2695
    const-string v1, "HtcIccPbkEntryCache_QMI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDropSIMTimeStamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mDropSIMTimeStamp:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2697
    invoke-virtual {p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->dispose()V

    .line 2699
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->setLocalMemberToDefault()V

    .line 2701
    const-string v1, "gsm.usim.number.length"

    const-string v2, "20"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2702
    const-string v1, "gsm.adn.records.capacity"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2703
    const-string v1, "gsm.usim.email.max-no"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2704
    const-string v1, "gsm.usim.anr.max-no"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2707
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v1, :cond_0

    .line 2708
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIM_CONTACTS_READY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2709
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 2713
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 2714
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2715
    iput-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    .line 2717
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 2718
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2721
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 2722
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2726
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 2727
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2728
    iput-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    .line 2732
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUIDRecordList:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 2733
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUIDRecordList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2737
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v1, :cond_6

    .line 2738
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->reset()V

    .line 2743
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailFileList:Ljava/util/HashMap;

    if-eqz v1, :cond_7

    .line 2744
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailFileList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 2747
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    .line 2748
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2751
    :cond_8
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    if-eqz v1, :cond_9

    .line 2752
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2756
    :cond_9
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    if-eqz v1, :cond_a

    .line 2757
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2760
    :cond_a
    return-void
.end method

.method getFirstEmptyAnrRecord(II)Lcom/android/internal/telephony/AnrRecord;
    .locals 4
    .parameter "num"
    .parameter "anrEntryIndex"

    .prologue
    const/4 v3, 0x0

    .line 2559
    const/4 v0, 0x0

    .line 2561
    .local v0, entry:Lcom/android/internal/telephony/AnrRecord;
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, p1, :cond_1

    :cond_0
    move-object v2, v3

    .line 2575
    :goto_0
    return-object v2

    .line 2563
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, p2, :cond_2

    move-object v2, v3

    .line 2564
    goto :goto_0

    .line 2566
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 2567
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #entry:Lcom/android/internal/telephony/AnrRecord;
    check-cast v0, Lcom/android/internal/telephony/AnrRecord;

    .line 2569
    .restart local v0       #entry:Lcom/android/internal/telephony/AnrRecord;
    invoke-virtual {v0}, Lcom/android/internal/telephony/AnrRecord;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v0

    .line 2570
    goto :goto_0

    .line 2566
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move-object v2, v3

    .line 2575
    goto :goto_0
.end method

.method getFirstEmptyEmailRecord(I)Lcom/android/internal/telephony/EmailRecord;
    .locals 4
    .parameter "num"

    .prologue
    const/4 v3, 0x0

    .line 2541
    const/4 v0, 0x0

    .line 2543
    .local v0, entry:Lcom/android/internal/telephony/EmailRecord;
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, p1, :cond_1

    :cond_0
    move-object v2, v3

    .line 2555
    :goto_0
    return-object v2

    .line 2546
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2547
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #entry:Lcom/android/internal/telephony/EmailRecord;
    check-cast v0, Lcom/android/internal/telephony/EmailRecord;

    .line 2549
    .restart local v0       #entry:Lcom/android/internal/telephony/EmailRecord;
    invoke-virtual {v0}, Lcom/android/internal/telephony/EmailRecord;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    .line 2550
    goto :goto_0

    .line 2546
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move-object v2, v3

    .line 2555
    goto :goto_0
.end method

.method getFirstEmptyPbkRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/PhoneBookEntry;
    .locals 8
    .parameter "number1"
    .parameter "number2"
    .parameter "emailaddress"

    .prologue
    const/4 v7, 0x0

    .line 2519
    const/4 v5, 0x0

    .line 2520
    .local v5, entry:Lcom/android/internal/telephony/PhoneBookEntry;
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v7

    .line 2537
    :goto_0
    return-object v0

    .line 2523
    :cond_1
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_4

    .line 2524
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    check-cast v5, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 2525
    .restart local v5       #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    iget v0, v5, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    div-int v4, v0, v1

    .line 2526
    .local v4, num:I
    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBookEntry;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 2527
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->checkFilesStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/PhoneBookEntry;)I

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v5

    .line 2528
    goto :goto_0

    .line 2530
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v4, v0, :cond_3

    .line 2531
    iget v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    add-int/2addr v0, v6

    iget v1, v5, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    sub-int v6, v0, v1

    .line 2523
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v4           #num:I
    :cond_4
    move-object v0, v7

    .line 2537
    goto :goto_0
.end method

.method getIAPIndex(I)I
    .locals 1
    .parameter "anrEntryIndex"

    .prologue
    .line 2986
    packed-switch p1, :pswitch_data_0

    .line 2992
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 2988
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2990
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 2986
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getNextEvent(III)I
    .locals 5
    .parameter "event"
    .parameter "num"
    .parameter "index"

    .prologue
    const/4 v4, 0x1

    .line 2923
    const/4 v0, 0x0

    .line 2924
    .local v0, nextEvent:I
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->convertEventToTag(II)I

    move-result v1

    .line 2925
    .local v1, tag:I
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v2, :cond_0

    .line 2926
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 2927
    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    move p1, v0

    .line 2957
    .end local p1
    :cond_1
    :goto_1
    return p1

    .line 2931
    .restart local p1
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2934
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v2, p2, v1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v2

    if-eqz v2, :cond_3

    .line 2935
    const/16 p1, 0xb

    goto :goto_1

    .line 2938
    :cond_3
    const/16 v2, 0xc

    invoke-virtual {p0, v2, p2, p3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v0

    .line 2941
    goto :goto_0

    .line 2949
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v2, p2, v1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v2

    if-nez v2, :cond_1

    .line 2952
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2, p2, p3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v0

    goto :goto_0

    .line 2927
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 46
    .parameter "msg"

    .prologue
    .line 230
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v41, v0

    packed-switch v41, :pswitch_data_0

    .line 1351
    :cond_0
    :goto_0
    return-void

    .line 232
    :pswitch_0
    const-string v41, "EVENT_LOAD_PB_PBR_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    if-eqz v41, :cond_3

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v41

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_2

    .line 236
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v26

    .line 237
    .local v26, iccFh:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v26, :cond_1

    .line 238
    const/16 v41, 0x4f22

    const/16 v42, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(I)Landroid/os/Message;

    move-result-object v42

    move-object/from16 v0, v26

    move/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 251
    .end local v26           #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    move/from16 v41, v0

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_0

    .line 252
    new-instance v34, Landroid/os/Bundle;

    invoke-direct/range {v34 .. v34}, Landroid/os/Bundle;-><init>()V

    .line 253
    .local v34, queryTimeStamp:Landroid/os/Bundle;
    const-string v41, "query_sim_contact_file_timestamp"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v42

    move-object/from16 v0, v34

    move-object/from16 v1, v41

    move-wide/from16 v2, v42

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 254
    new-instance v41, Lcom/android/internal/telephony/HtcExt1RecordLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v43, v0

    invoke-direct/range {v41 .. v43}, Lcom/android/internal/telephony/HtcExt1RecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v42, 0x6f4a

    const/16 v43, 0x8

    const/16 v44, 0x0

    const/16 v45, 0x6f4a

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v44

    move/from16 v3, v45

    move-object/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v43

    invoke-virtual/range {v41 .. v43}, Lcom/android/internal/telephony/HtcExt1RecordLoader;->loadAllFromEF(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 243
    .end local v34           #queryTimeStamp:Landroid/os/Bundle;
    :cond_2
    const-string v41, "Support Global phonebook"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 244
    const/16 v41, 0x1

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    goto :goto_1

    .line 248
    :cond_3
    const-string v41, "Support Global phonebook"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 249
    const/16 v41, 0x1

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    goto :goto_1

    .line 261
    :pswitch_1
    const-string v41, "EVENT_LOAD_PB_PSC_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 262
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 263
    .local v13, ar:Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    if-nez v41, :cond_5

    .line 264
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, [B

    move-object/from16 v14, v41

    check-cast v14, [B

    .line 265
    .local v14, data:[B
    if-eqz v14, :cond_4

    array-length v0, v14

    move/from16 v41, v0

    if-lez v41, :cond_4

    .line 266
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "Phonebook Synchronisation Counter: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 267
    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v41

    const/16 v42, 0x10

    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v41

    move-wide/from16 v0, v41

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPSC:J

    .line 268
    const/16 v41, 0x1

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportPSC:Z

    .line 275
    .end local v14           #data:[B
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    if-eqz v41, :cond_0

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v41

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_0

    .line 277
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v26

    .line 278
    .restart local v26       #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v26, :cond_0

    .line 279
    const/16 v41, 0x4f23

    const/16 v42, 0x16

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(I)Landroid/os/Message;

    move-result-object v42

    move-object/from16 v0, v26

    move/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 270
    .end local v26           #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    .restart local v14       #data:[B
    :cond_4
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportPSC:Z

    goto :goto_2

    .line 273
    .end local v14           #data:[B
    :cond_5
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportPSC:Z

    goto :goto_2

    .line 287
    .end local v13           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    const-string v41, "EVENT_UPDATE_PB_PSC_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 288
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 289
    .restart local v13       #ar:Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    if-eqz v41, :cond_0

    .line 290
    const-string v41, "Update PB_PCS failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 295
    .end local v13           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    const-string v41, "EVENT_LOAD_PB_CC_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 296
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 297
    .restart local v13       #ar:Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    if-nez v41, :cond_7

    .line 298
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, [B

    move-object/from16 v14, v41

    check-cast v14, [B

    .line 299
    .restart local v14       #data:[B
    if-eqz v14, :cond_6

    array-length v0, v14

    move/from16 v41, v0

    if-lez v41, :cond_6

    .line 300
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "Change Counter: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 301
    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v41

    const/16 v42, 0x10

    invoke-static/range {v41 .. v42}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v41

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mChangeCounter:I

    .line 302
    const/16 v41, 0x1

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportCC:Z

    .line 309
    .end local v14           #data:[B
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    if-eqz v41, :cond_0

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v41

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_0

    .line 311
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v26

    .line 312
    .restart local v26       #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v26, :cond_0

    .line 313
    const/16 v41, 0x4f24

    const/16 v42, 0x18

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(I)Landroid/os/Message;

    move-result-object v42

    move-object/from16 v0, v26

    move/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 304
    .end local v26           #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    .restart local v14       #data:[B
    :cond_6
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportCC:Z

    goto :goto_3

    .line 307
    .end local v14           #data:[B
    :cond_7
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportCC:Z

    goto :goto_3

    .line 321
    .end local v13           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    const-string v41, "EVENT_UPDATE_PB_CC_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 323
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 324
    .restart local v13       #ar:Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    if-eqz v41, :cond_0

    .line 325
    const-string v41, "Update PB_CC failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 331
    .end local v13           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    const-string v41, "EVENT_LOAD_PB_PUID_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 332
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 333
    .restart local v13       #ar:Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    if-nez v41, :cond_9

    .line 334
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, [B

    move-object/from16 v14, v41

    check-cast v14, [B

    .line 335
    .restart local v14       #data:[B
    if-eqz v14, :cond_8

    array-length v0, v14

    move/from16 v41, v0

    if-lez v41, :cond_8

    .line 336
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "Previous Unique Identifier: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 337
    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v41

    const/16 v42, 0x10

    invoke-static/range {v41 .. v42}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v41

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPUID:I

    .line 338
    const/16 v41, 0x1

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportPUID:Z

    .line 346
    .end local v14           #data:[B
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    if-eqz v41, :cond_0

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v41

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_0

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    const/16 v43, 0xc2

    invoke-virtual/range {v41 .. v43}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v16

    .line 350
    .local v16, efid:I
    if-eqz v16, :cond_a

    .line 351
    const/16 v41, 0x8

    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v42

    move/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 340
    .end local v16           #efid:I
    .restart local v14       #data:[B
    :cond_8
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportPUID:Z

    goto :goto_4

    .line 343
    .end local v14           #data:[B
    :cond_9
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportPUID:Z

    goto :goto_4

    .line 353
    .restart local v16       #efid:I
    :cond_a
    const-string v41, "gsm.usim.number.length"

    const-string v42, "20"

    invoke-static/range {v41 .. v42}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const/16 v41, 0x9

    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v42

    move/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 363
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v16           #efid:I
    :pswitch_6
    const-string v41, "EVENT_UPDATE_PB_PUID_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 365
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 366
    .restart local v13       #ar:Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    if-eqz v41, :cond_0

    .line 367
    const-string v41, "Update PB_PUID failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 373
    .end local v13           #ar:Landroid/os/AsyncResult;
    :pswitch_7
    const-string v41, "EVENT_LOAD_PB_UID_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 374
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 375
    .restart local v13       #ar:Landroid/os/AsyncResult;
    const/16 v20, 0x0

    .line 376
    .local v20, event:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    .line 377
    .local v31, num:I
    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/os/Bundle;

    .line 379
    .local v33, queryTimeBundle:Landroid/os/Bundle;
    const-string v41, "query_sim_contact_file_timestamp"

    const-wide/16 v42, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-wide/from16 v2, v42

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v34

    .line 381
    .local v34, queryTimeStamp:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mDropSIMTimeStamp:J

    move-wide/from16 v41, v0

    cmp-long v41, v34, v41

    if-ltz v41, :cond_0

    .line 385
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    if-nez v41, :cond_c

    .line 386
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Ljava/util/ArrayList;

    move-object/from16 v40, v41

    check-cast v40, Ljava/util/ArrayList;

    .line 387
    .local v40, uidRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/UIDRecord;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUIDRecordList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v31

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 389
    add-int/lit8 v31, v31, 0x1

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v41

    move/from16 v0, v31

    move/from16 v1, v41

    if-ge v0, v1, :cond_b

    .line 391
    const/16 v41, 0xa

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v31

    move/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    .line 401
    .end local v40           #uidRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/UIDRecord;>;"
    :goto_5
    if-eqz v20, :cond_0

    .line 402
    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v30

    .line 403
    .local v30, next_event:I
    if-eqz v30, :cond_d

    .line 404
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "next_event = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 393
    .end local v30           #next_event:I
    .restart local v40       #uidRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/UIDRecord;>;"
    :cond_b
    const/16 v20, 0xb

    goto :goto_5

    .line 396
    .end local v40           #uidRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/UIDRecord;>;"
    :cond_c
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "EVENT_LOAD_PB_UID_DONE Failed: num = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " ar.exception = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const/16 v20, 0xb

    goto :goto_5

    .line 407
    .restart local v30       #next_event:I
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 414
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v20           #event:I
    .end local v30           #next_event:I
    .end local v31           #num:I
    .end local v33           #queryTimeBundle:Landroid/os/Bundle;
    .end local v34           #queryTimeStamp:J
    :pswitch_8
    const-string v41, "EVENT_UPDATE_PB_UID_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 416
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 417
    .restart local v13       #ar:Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    if-eqz v41, :cond_0

    .line 418
    const-string v41, "Update PB_UID failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 425
    .end local v13           #ar:Landroid/os/AsyncResult;
    :pswitch_9
    const-string v41, "EVENT_LOAD_PB_EXT1_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 426
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 427
    .restart local v13       #ar:Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/os/Bundle;

    .line 429
    .restart local v33       #queryTimeBundle:Landroid/os/Bundle;
    const-string v41, "query_sim_contact_file_timestamp"

    const-wide/16 v42, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-wide/from16 v2, v42

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v34

    .line 431
    .restart local v34       #queryTimeStamp:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mDropSIMTimeStamp:J

    move-wide/from16 v41, v0

    cmp-long v41, v34, v41

    if-ltz v41, :cond_0

    .line 434
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    if-nez v41, :cond_e

    .line 435
    const-string v41, "gsm.usim.number.length"

    const-string v42, "40"

    invoke-static/range {v41 .. v42}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Ljava/util/ArrayList;

    move-object/from16 v22, v41

    check-cast v22, Ljava/util/ArrayList;

    .line 438
    .local v22, ext1RecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/HtcExt1Record;>;"
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    .line 444
    .end local v22           #ext1RecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/HtcExt1Record;>;"
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    move/from16 v41, v0

    if-nez v41, :cond_10

    .line 445
    const/16 v41, 0x9

    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v42

    move/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v20

    .line 446
    .restart local v20       #event:I
    if-eqz v20, :cond_f

    .line 447
    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 440
    .end local v20           #event:I
    :cond_e
    const-string v41, "gsm.usim.number.length"

    const-string v42, "20"

    invoke-static/range {v41 .. v42}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 449
    .restart local v20       #event:I
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 452
    .end local v20           #event:I
    :cond_10
    const-string v41, "query_sim_contact_file_timestamp"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v42

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-wide/from16 v2, v42

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 453
    new-instance v41, Lcom/android/internal/telephony/ADNRecordLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v44, v0

    invoke-direct/range {v41 .. v44}, Lcom/android/internal/telephony/ADNRecordLoader;-><init>(Ljava/util/ArrayList;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v42, 0x6f3a

    const/16 v43, 0x9

    const/16 v44, 0x0

    const/16 v45, 0x6f3a

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v44

    move/from16 v3, v45

    move-object/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v43

    invoke-virtual/range {v41 .. v43}, Lcom/android/internal/telephony/ADNRecordLoader;->loadAllFromEF(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 460
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v33           #queryTimeBundle:Landroid/os/Bundle;
    .end local v34           #queryTimeStamp:J
    :pswitch_a
    const-string v41, "EVENT_LOAD_PB_ADN_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 462
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 463
    .restart local v13       #ar:Landroid/os/AsyncResult;
    const/16 v20, 0x0

    .line 464
    .restart local v20       #event:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    .line 466
    .restart local v31       #num:I
    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/os/Bundle;

    .line 468
    .restart local v33       #queryTimeBundle:Landroid/os/Bundle;
    const-string v41, "query_sim_contact_file_timestamp"

    const-wide/16 v42, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-wide/from16 v2, v42

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v34

    .line 470
    .restart local v34       #queryTimeStamp:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mDropSIMTimeStamp:J

    move-wide/from16 v41, v0

    cmp-long v41, v34, v41

    if-ltz v41, :cond_0

    .line 474
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    if-nez v41, :cond_1b

    .line 475
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Ljava/util/ArrayList;

    move-object/from16 v6, v41

    check-cast v6, Ljava/util/ArrayList;

    .line 476
    .local v6, adnRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/HtcAdnRecord;>;"
    if-nez v31, :cond_13

    .line 477
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    .line 479
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    move/from16 v41, v0

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_12

    .line 480
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v41, v0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    .line 487
    :cond_11
    :goto_7
    const-string v41, "gsm.adn.records.capacity"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v42, v0

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v41, v0

    if-lez v41, :cond_13

    .line 490
    new-instance v41, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v42, v0

    invoke-direct/range {v41 .. v42}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    if-eqz v41, :cond_13

    .line 492
    const/16 v24, 0x0

    .local v24, i:I
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v41, v0

    move/from16 v0, v24

    move/from16 v1, v41

    if-ge v0, v1, :cond_13

    .line 493
    new-instance v18, Lcom/android/internal/telephony/PhoneBookEntry;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneBookEntry;-><init>()V

    .line 494
    .local v18, entry:Lcom/android/internal/telephony/PhoneBookEntry;
    add-int/lit8 v41, v24, 0x1

    move/from16 v0, v41

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    add-int/lit8 v24, v24, 0x1

    goto :goto_8

    .line 482
    .end local v18           #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    .end local v24           #i:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    if-eqz v41, :cond_11

    .line 483
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v42

    mul-int v41, v41, v42

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    goto :goto_7

    .line 501
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    if-eqz v41, :cond_1a

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v31

    invoke-virtual {v0, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 508
    const/16 v24, 0x0

    .restart local v24       #i:I
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/util/ArrayList;

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v24

    move/from16 v1, v41

    if-ge v0, v1, :cond_16

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/util/ArrayList;

    move-object/from16 v0, v41

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/HtcAdnRecord;

    .line 510
    .local v5, adnRecord:Lcom/android/internal/telephony/HtcAdnRecord;
    invoke-virtual {v5}, Lcom/android/internal/telephony/HtcAdnRecord;->isEmpty()Z

    move-result v41

    if-nez v41, :cond_14

    .line 511
    const/4 v7, 0x0

    .line 512
    .local v7, adnRecordNumber:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v41, v0

    mul-int v41, v41, v31

    iget v0, v5, Lcom/android/internal/telephony/HtcAdnRecord;->recordNumber:I

    move/from16 v42, v0

    add-int v7, v41, v42

    .line 515
    if-lez v7, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v41

    if-gt v7, v0, :cond_15

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    add-int/lit8 v42, v7, -0x1

    invoke-virtual/range {v41 .. v42}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 519
    .local v32, pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    invoke-virtual {v5}, Lcom/android/internal/telephony/HtcAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    .line 520
    invoke-virtual {v5}, Lcom/android/internal/telephony/HtcAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->text:Ljava/lang/String;

    .line 521
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v41

    move/from16 v0, v41

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->type:I

    .line 523
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "pbkEntry.index = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v42, v0

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 526
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "pbkEntry.indexEmail = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    move/from16 v42, v0

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 529
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "pbkEntry.email = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->email:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 508
    .end local v7           #adnRecordNumber:I
    .end local v32           #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_14
    :goto_a
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_9

    .line 531
    .restart local v7       #adnRecordNumber:I
    :cond_15
    const-string v41, "HtcIccPbkEntryCache_QMI"

    const-string v42, "update pbkEntry failed - index out of mSimPbkEntryList size"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 537
    .end local v5           #adnRecord:Lcom/android/internal/telephony/HtcAdnRecord;
    .end local v7           #adnRecordNumber:I
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    move/from16 v41, v0

    if-nez v41, :cond_19

    .line 538
    add-int/lit8 v31, v31, 0x1

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v41

    move/from16 v0, v31

    move/from16 v1, v41

    if-ge v0, v1, :cond_17

    .line 540
    const/16 v41, 0x9

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v31

    move/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    .line 547
    :goto_b
    if-eqz v20, :cond_0

    .line 548
    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v30

    .line 549
    .restart local v30       #next_event:I
    if-eqz v30, :cond_18

    .line 550
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "next_event = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 543
    .end local v30           #next_event:I
    :cond_17
    const/16 v20, 0xa

    goto :goto_b

    .line 553
    .restart local v30       #next_event:I
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 557
    .end local v30           #next_event:I
    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 560
    .end local v24           #i:I
    :cond_1a
    const-string v41, "HtcIccPbkEntryCache_QMI"

    const-string v42, "mSimPbkEntryList is null"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 564
    .end local v6           #adnRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/HtcAdnRecord;>;"
    :cond_1b
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "EVENT_LOAD_PB_ADN_DONE Failed: num = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " ar.exception = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    const/16 v43, 0xc0

    invoke-virtual/range {v41 .. v43}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    if-eqz v41, :cond_1c

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->clear()V

    .line 570
    const/16 v41, 0x0

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    .line 572
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 577
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v20           #event:I
    .end local v31           #num:I
    .end local v33           #queryTimeBundle:Landroid/os/Bundle;
    .end local v34           #queryTimeStamp:J
    :pswitch_b
    const-string v41, "EVENT_LOAD_PB_IAP_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 579
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 580
    .restart local v13       #ar:Landroid/os/AsyncResult;
    const/16 v20, 0x0

    .line 581
    .restart local v20       #event:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    .line 582
    .restart local v31       #num:I
    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/os/Bundle;

    .line 584
    .restart local v33       #queryTimeBundle:Landroid/os/Bundle;
    const-string v41, "query_sim_contact_file_timestamp"

    const-wide/16 v42, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-wide/from16 v2, v42

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v34

    .line 586
    .restart local v34       #queryTimeStamp:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mDropSIMTimeStamp:J

    move-wide/from16 v41, v0

    cmp-long v41, v34, v41

    if-ltz v41, :cond_0

    .line 590
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    if-nez v41, :cond_1f

    .line 591
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Ljava/util/ArrayList;

    move-object/from16 v25, v41

    check-cast v25, Ljava/util/ArrayList;

    .line 592
    .local v25, iapRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IAPRecord;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v31

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 594
    add-int/lit8 v31, v31, 0x1

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v41

    move/from16 v0, v31

    move/from16 v1, v41

    if-ge v0, v1, :cond_1d

    .line 596
    const/16 v41, 0xb

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v31

    move/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    .line 601
    :goto_c
    if-eqz v20, :cond_0

    .line 602
    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v30

    .line 603
    .restart local v30       #next_event:I
    if-eqz v30, :cond_1e

    .line 604
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "next_event = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 598
    .end local v30           #next_event:I
    :cond_1d
    const/16 v20, 0xc

    goto :goto_c

    .line 607
    .restart local v30       #next_event:I
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 611
    .end local v25           #iapRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IAPRecord;>;"
    .end local v30           #next_event:I
    :cond_1f
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "EVENT_LOAD_PB_IAP_DONE Failed: num = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " ar.exception = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->clear()V

    .line 615
    const/16 v20, 0xc

    .line 617
    const-string v41, "HtcIccPbkEntryCache_QMI"

    const-string v42, "remove IAP file from mPbrFile.mFileIds catch"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    const/16 v43, 0xc1

    invoke-virtual/range {v41 .. v43}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v41

    if-eqz v41, :cond_20

    .line 621
    const/16 v20, 0x8

    .line 622
    const-string v41, "HtcIccPbkEntryCache_QMI"

    const-string v42, "remove E-mail file from mPbrFile.mFileIds catch"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    const/16 v43, 0xca

    invoke-virtual/range {v41 .. v43}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    .line 626
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v41

    if-nez v41, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    const/16 v42, 0x1

    invoke-virtual/range {v41 .. v42}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v41

    if-eqz v41, :cond_22

    .line 627
    :cond_21
    const/16 v20, 0x0

    .line 628
    const-string v41, "HtcIccPbkEntryCache_QMI"

    const-string v42, "remove ANR1 file from mPbrFile.mFileIds catch"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    const/16 v43, 0x0

    invoke-virtual/range {v41 .. v43}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    .line 631
    const-string v41, "HtcIccPbkEntryCache_QMI"

    const-string v42, "remove ANR2 file from mPbrFile.mFileIds catch"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    const/16 v43, 0x1

    invoke-virtual/range {v41 .. v43}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    .line 635
    :cond_22
    if-eqz v20, :cond_24

    .line 636
    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v30

    .line 637
    .restart local v30       #next_event:I
    if-eqz v30, :cond_23

    .line 638
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "next_event = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 641
    :cond_23
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 644
    .end local v30           #next_event:I
    :cond_24
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 651
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v20           #event:I
    .end local v31           #num:I
    .end local v33           #queryTimeBundle:Landroid/os/Bundle;
    .end local v34           #queryTimeStamp:J
    :pswitch_c
    const-string v41, "EVENT_LOAD_PB_EMAIL_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 653
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 655
    .restart local v13       #ar:Landroid/os/AsyncResult;
    const/16 v20, 0x0

    .line 656
    .restart local v20       #event:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    .line 657
    .restart local v31       #num:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    .line 658
    .restart local v16       #efid:I
    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/os/Bundle;

    .line 660
    .restart local v33       #queryTimeBundle:Landroid/os/Bundle;
    const-string v41, "query_sim_contact_file_timestamp"

    const-wide/16 v42, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-wide/from16 v2, v42

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v34

    .line 662
    .restart local v34       #queryTimeStamp:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mDropSIMTimeStamp:J

    move-wide/from16 v41, v0

    cmp-long v41, v34, v41

    if-ltz v41, :cond_0

    .line 665
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    if-nez v41, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    if-eqz v41, :cond_2b

    .line 666
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Ljava/util/ArrayList;

    move-object/from16 v28, v41

    check-cast v28, Ljava/util/ArrayList;

    .line 668
    .local v28, mailRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/EmailRecord;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailFileList:Ljava/util/HashMap;

    move-object/from16 v41, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    invoke-virtual/range {v41 .. v43}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v41

    move/from16 v0, v31

    move/from16 v1, v41

    if-ge v0, v1, :cond_29

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v31

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 674
    const/16 v24, 0x0

    .restart local v24       #i:I
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/util/ArrayList;

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v24

    move/from16 v1, v41

    if-ge v0, v1, :cond_29

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/util/ArrayList;

    move-object/from16 v0, v41

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/telephony/EmailRecord;

    .line 677
    .local v17, emailRecord:Lcom/android/internal/telephony/EmailRecord;
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/EmailRecord;->isEmpty()Z

    move-result v41

    if-nez v41, :cond_25

    .line 678
    const/4 v7, 0x0

    .line 679
    .restart local v7       #adnRecordNumber:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v41

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_26

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mAdnSFI:I

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFADNrecNum(I)I

    move-result v36

    .line 682
    .local v36, recNum:I
    if-lez v36, :cond_27

    .line 683
    add-int/lit8 v41, v36, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v42, v0

    mul-int v41, v41, v42

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    move/from16 v42, v0

    add-int v7, v41, v42

    .line 687
    if-lez v7, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v41

    if-gt v7, v0, :cond_27

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    add-int/lit8 v42, v7, -0x1

    invoke-virtual/range {v41 .. v42}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 690
    .restart local v32       #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    if-eqz v32, :cond_27

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/PhoneBookEntry;->isEmpty()Z

    move-result v41

    if-eqz v41, :cond_27

    .line 691
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "pbkEntry.index = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v42, v0

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 692
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "emailEntry.index = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v42, v0

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 693
    const-string v41, "Becasue the corresponding pbkEntry entry is empty, clear email entry."

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 694
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/EmailRecord;->clear()V

    .line 674
    .end local v7           #adnRecordNumber:I
    .end local v32           #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    .end local v36           #recNum:I
    :cond_25
    :goto_e
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_d

    .line 701
    .restart local v7       #adnRecordNumber:I
    :cond_26
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v41, v0

    mul-int v41, v41, v31

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v42, v0

    add-int v7, v41, v42

    .line 705
    :cond_27
    if-lez v7, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v41

    if-gt v7, v0, :cond_28

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    add-int/lit8 v42, v7, -0x1

    invoke-virtual/range {v41 .. v42}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 708
    .restart local v32       #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v41, v0

    move/from16 v0, v41

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    .line 709
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->email:Ljava/lang/String;

    .line 711
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "pbkEntry.index = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v42, v0

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 714
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "pbkEntry.indexEmail = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    move/from16 v42, v0

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 717
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "pbkEntry.email = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->email:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 719
    .end local v32           #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_28
    const-string v41, "HtcIccPbkEntryCache_QMI"

    const-string v42, "update pbkEntry failed - index out of mSimPbkEntryList size"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 726
    .end local v7           #adnRecordNumber:I
    .end local v17           #emailRecord:Lcom/android/internal/telephony/EmailRecord;
    .end local v24           #i:I
    :cond_29
    const/16 v41, 0x1

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    .line 727
    const-string v41, "gsm.usim.email.max-no"

    const-string v42, "1"

    invoke-static/range {v41 .. v42}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "mEmailRecordList num = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 732
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "mEmailRecordList size = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/util/ArrayList;

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v42

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 735
    add-int/lit8 v31, v31, 0x1

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v41

    move/from16 v0, v31

    move/from16 v1, v41

    if-ge v0, v1, :cond_2a

    .line 737
    const/16 v41, 0xc

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v31

    move/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    .line 756
    .end local v28           #mailRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/EmailRecord;>;"
    :goto_f
    if-eqz v20, :cond_0

    .line 757
    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v30

    .line 758
    .restart local v30       #next_event:I
    if-eqz v30, :cond_2c

    .line 759
    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 739
    .end local v30           #next_event:I
    .restart local v28       #mailRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/EmailRecord;>;"
    :cond_2a
    const/16 v20, 0xd

    goto :goto_f

    .line 742
    .end local v28           #mailRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/EmailRecord;>;"
    :cond_2b
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "EVENT_LOAD_PB_EMAIL_DONE Failed: num = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " ar.exception = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailFileList:Ljava/util/HashMap;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/HashMap;->clear()V

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->clear()V

    .line 747
    const/16 v20, 0xd

    .line 748
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    .line 749
    const-string v41, "gsm.usim.email.max-no"

    const-string v42, "0"

    invoke-static/range {v41 .. v42}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    const-string v41, "HtcIccPbkEntryCache_QMI"

    const-string v42, "remove E-mail file from mPbrFile.mFileIds catch"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    const/16 v43, 0xca

    invoke-virtual/range {v41 .. v43}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    goto/16 :goto_f

    .line 761
    .restart local v30       #next_event:I
    :cond_2c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 768
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v16           #efid:I
    .end local v20           #event:I
    .end local v30           #next_event:I
    .end local v31           #num:I
    .end local v33           #queryTimeBundle:Landroid/os/Bundle;
    .end local v34           #queryTimeStamp:J
    :pswitch_d
    const-string v41, "EVENT_LOAD_PB_ANR_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 770
    :try_start_0
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 771
    .restart local v13       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    .line 772
    .restart local v31       #num:I
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg2:I

    .line 773
    .local v8, anrEntryIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v31

    invoke-virtual {v0, v1, v8}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v16

    .line 775
    .restart local v16       #efid:I
    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/os/Bundle;

    .line 777
    .restart local v33       #queryTimeBundle:Landroid/os/Bundle;
    const-string v41, "query_sim_contact_file_timestamp"

    const-wide/16 v42, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-wide/from16 v2, v42

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v34

    .line 779
    .restart local v34       #queryTimeStamp:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mDropSIMTimeStamp:J

    move-wide/from16 v41, v0

    cmp-long v41, v34, v41

    if-ltz v41, :cond_0

    .line 782
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    if-nez v41, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    if-eqz v41, :cond_3b

    .line 783
    if-eqz v16, :cond_2d

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v41

    if-ge v8, v0, :cond_2f

    .line 787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    .line 791
    .local v9, anrFileList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :goto_10
    if-eqz v9, :cond_2d

    .line 792
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v41

    if-ge v8, v0, :cond_30

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v0, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 801
    .end local v9           #anrFileList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_2d
    :goto_11
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Ljava/util/ArrayList;

    move-object/from16 v0, v41

    check-cast v0, Ljava/util/ArrayList;

    move-object v12, v0

    .line 804
    .local v12, anrRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    if-nez v8, :cond_31

    .line 805
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 809
    .local v10, anrLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    :goto_12
    if-eqz v10, :cond_3a

    .line 810
    invoke-virtual {v10, v8, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 811
    if-nez v8, :cond_32

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v31

    invoke-virtual {v0, v1, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 820
    :goto_13
    const/16 v24, 0x0

    .restart local v24       #i:I
    :goto_14
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v24

    move/from16 v1, v41

    if-ge v0, v1, :cond_36

    .line 821
    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/AnrRecord;

    .line 823
    .local v11, anrRecord:Lcom/android/internal/telephony/AnrRecord;
    invoke-virtual {v11}, Lcom/android/internal/telephony/AnrRecord;->isEmpty()Z

    move-result v41

    if-nez v41, :cond_2e

    .line 824
    const/4 v7, 0x0

    .line 825
    .restart local v7       #adnRecordNumber:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v41

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_33

    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    iget v0, v11, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFADNrecNum(I)I

    move-result v36

    .line 828
    .restart local v36       #recNum:I
    if-lez v36, :cond_34

    .line 829
    add-int/lit8 v41, v36, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v42, v0

    mul-int v41, v41, v42

    iget v0, v11, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    move/from16 v42, v0

    add-int v7, v41, v42

    .line 835
    if-lez v7, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v41

    if-gt v7, v0, :cond_34

    .line 837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    add-int/lit8 v42, v7, -0x1

    invoke-virtual/range {v41 .. v42}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 838
    .restart local v32       #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    if-eqz v32, :cond_34

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/PhoneBookEntry;->isEmpty()Z

    move-result v41

    if-eqz v41, :cond_34

    .line 839
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "pbkEntry.index = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v42, v0

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 840
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "ANREntry.index = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    iget v0, v11, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v42, v0

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 841
    const-string v41, "Becasue the corresponding pbkEntry entry is empty, clear ANR entry."

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 842
    invoke-virtual {v11}, Lcom/android/internal/telephony/AnrRecord;->clear()V

    .line 820
    .end local v7           #adnRecordNumber:I
    .end local v32           #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    .end local v36           #recNum:I
    :cond_2e
    :goto_15
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_14

    .line 789
    .end local v10           #anrLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    .end local v11           #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    .end local v12           #anrRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    .end local v24           #i:I
    :cond_2f
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .restart local v9       #anrFileList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto/16 :goto_10

    .line 796
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v0, v8, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_11

    .line 928
    .end local v8           #anrEntryIndex:I
    .end local v9           #anrFileList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v16           #efid:I
    .end local v31           #num:I
    .end local v33           #queryTimeBundle:Landroid/os/Bundle;
    .end local v34           #queryTimeStamp:J
    :catch_0
    move-exception v15

    .line 929
    .local v15, e:Ljava/lang/Exception;
    const-string v41, "HtcIccPbkEntryCache_QMI"

    const-string v42, "ANR arraylist problem"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-static {v0, v1, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 930
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 807
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v8       #anrEntryIndex:I
    .restart local v12       #anrRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    .restart local v13       #ar:Landroid/os/AsyncResult;
    .restart local v16       #efid:I
    .restart local v31       #num:I
    .restart local v33       #queryTimeBundle:Landroid/os/Bundle;
    .restart local v34       #queryTimeStamp:J
    :cond_31
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .restart local v10       #anrLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    goto/16 :goto_12

    .line 814
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v31

    invoke-virtual {v0, v1, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_13

    .line 849
    .restart local v7       #adnRecordNumber:I
    .restart local v11       #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    .restart local v24       #i:I
    :cond_33
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v41, v0

    mul-int v41, v41, v31

    iget v0, v11, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v42, v0

    add-int v7, v41, v42

    .line 854
    :cond_34
    if-lez v7, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v41

    if-gt v7, v0, :cond_35

    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    add-int/lit8 v42, v7, -0x1

    invoke-virtual/range {v41 .. v42}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 857
    .restart local v32       #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    move-object/from16 v41, v0

    iget v0, v11, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v42, v0

    aput v42, v41, v8

    .line 858
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    move-object/from16 v41, v0

    iget-object v0, v11, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    move-object/from16 v42, v0

    aput-object v42, v41, v8

    .line 860
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "pbkEntry.index = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v42, v0

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 863
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "pbkEntry.indexAnr = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    move-object/from16 v42, v0

    aget v42, v42, v8

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 867
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "pbkEntry.adnumber = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    move-object/from16 v42, v0

    aget-object v42, v42, v8

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    goto/16 :goto_15

    .line 870
    .end local v32           #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_35
    const-string v41, "HtcIccPbkEntryCache_QMI"

    const-string v42, "update pbkEntry failed - index out of mSimPbkEntryList size"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 876
    .end local v7           #adnRecordNumber:I
    .end local v11           #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    :cond_36
    const/16 v41, 0x2

    move/from16 v0, v41

    if-ge v8, v0, :cond_37

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    move-object/from16 v41, v0

    const/16 v42, 0x1

    aput-boolean v42, v41, v8

    .line 878
    const-string v41, "gsm.usim.anr.max-no"

    add-int/lit8 v42, v8, 0x1

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    :cond_37
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "mAnrRecordList num = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 885
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "mAnrRecordList anrEntryIndex = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 888
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "mAnrRecordList size = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 891
    add-int/lit8 v8, v8, 0x1

    .line 892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getANRnums()I

    move-result v41

    move/from16 v0, v41

    if-ge v8, v0, :cond_38

    const/16 v41, 0x2

    move/from16 v0, v41

    if-ge v8, v0, :cond_38

    .line 894
    const/16 v41, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 897
    :cond_38
    add-int/lit8 v31, v31, 0x1

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v41

    move/from16 v0, v31

    move/from16 v1, v41

    if-ge v0, v1, :cond_39

    .line 899
    const/4 v8, 0x0

    .line 900
    const/16 v41, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 904
    :cond_39
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 908
    .end local v24           #i:I
    :cond_3a
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 911
    .end local v10           #anrLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    .end local v12           #anrRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    :cond_3b
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "EVENT_LOAD_PB_ANR_DONE Failed, num = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " anrEntryIndex = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " ar.exception = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->clear()V

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->clear()V

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    const/16 v43, 0x0

    invoke-virtual/range {v41 .. v43}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    .line 918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    const/16 v43, 0x1

    invoke-virtual/range {v41 .. v43}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    .line 920
    const-string v41, "gsm.usim.anr.max-no"

    const-string v42, "0"

    invoke-static/range {v41 .. v42}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    move-object/from16 v41, v0

    const/16 v42, 0x0

    const/16 v43, 0x0

    aput-boolean v43, v41, v42

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    move-object/from16 v41, v0

    const/16 v42, 0x1

    const/16 v43, 0x0

    aput-boolean v43, v41, v42

    .line 926
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 936
    .end local v8           #anrEntryIndex:I
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v16           #efid:I
    .end local v31           #num:I
    .end local v33           #queryTimeBundle:Landroid/os/Bundle;
    .end local v34           #queryTimeStamp:J
    :pswitch_e
    const-string v41, "EVENT_GET_PB_USED_NUM_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 937
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 940
    .restart local v13       #ar:Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    if-nez v41, :cond_3e

    .line 941
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/internal/telephony/PhoneBookMemory;

    .line 943
    .local v27, mPBMemory:Lcom/android/internal/telephony/PhoneBookMemory;
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "get PB length:total="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookMemory;->total:I

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " used="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookMemory;->used:I

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 944
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookMemory;->total:I

    move/from16 v41, v0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    .line 945
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookMemory;->used:I

    move/from16 v41, v0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUsed:I

    .line 946
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "get PB length:total="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " used="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUsed:I

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 949
    new-instance v41, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v42, v0

    invoke-direct/range {v41 .. v42}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    .line 951
    const/16 v24, 0x0

    .restart local v24       #i:I
    :goto_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v41, v0

    move/from16 v0, v24

    move/from16 v1, v41

    if-ge v0, v1, :cond_3c

    .line 952
    new-instance v18, Lcom/android/internal/telephony/PhoneBookEntry;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneBookEntry;-><init>()V

    .line 953
    .restart local v18       #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    add-int/lit8 v41, v24, 0x1

    move/from16 v0, v41

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    .line 954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 951
    add-int/lit8 v24, v24, 0x1

    goto :goto_16

    .line 957
    .end local v18           #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_3c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v41, v0

    if-lez v41, :cond_3d

    .line 958
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->pollPBList()V

    goto/16 :goto_0

    .line 960
    :cond_3d
    const-string v41, "load PB complete!! mTotal = 0"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 961
    const/16 v41, 0x0

    move-object/from16 v0, v41

    iput-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1, v13}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 965
    .end local v24           #i:I
    .end local v27           #mPBMemory:Lcom/android/internal/telephony/PhoneBookMemory;
    :cond_3e
    const-string v41, "Cannot get PB memory"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 968
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    .line 970
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v41, v0

    if-lez v41, :cond_40

    .line 971
    new-instance v41, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v42, v0

    invoke-direct/range {v41 .. v42}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    .line 973
    const/16 v24, 0x0

    .restart local v24       #i:I
    :goto_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v41, v0

    move/from16 v0, v24

    move/from16 v1, v41

    if-ge v0, v1, :cond_3f

    .line 974
    new-instance v18, Lcom/android/internal/telephony/PhoneBookEntry;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneBookEntry;-><init>()V

    .line 975
    .restart local v18       #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    add-int/lit8 v41, v24, 0x1

    move/from16 v0, v41

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    .line 976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 973
    add-int/lit8 v24, v24, 0x1

    goto :goto_17

    .line 979
    .end local v18           #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_3f
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->pollPBList()V

    goto/16 :goto_0

    .line 981
    .end local v24           #i:I
    :cond_40
    const-string v41, "load PB complete!! mTotal = 0"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 982
    const/16 v41, 0x0

    move-object/from16 v0, v41

    iput-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1, v13}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 991
    .end local v13           #ar:Landroid/os/AsyncResult;
    :pswitch_f
    const-string v41, "EVENT_LOAD_PB_ENTRIES_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 992
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 993
    .restart local v13       #ar:Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    if-nez v41, :cond_41

    .line 994
    const-string v41, "EVENT_LOAD_PB_ENTRIES_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 995
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v41, v0

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-direct {v0, v1, v13}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handlePollPBResult(ILandroid/os/AsyncResult;)V

    .line 1000
    :goto_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->pollingContext:[I

    move-object/from16 v41, v0

    const/16 v42, 0x0

    aget v43, v41, v42

    add-int/lit8 v43, v43, -0x1

    aput v43, v41, v42

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->pollingContext:[I

    move-object/from16 v41, v0

    const/16 v42, 0x0

    aget v41, v41, v42

    if-nez v41, :cond_0

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iput-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1005
    const-string v41, "load Phonebook Entries Complete!! "

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1007
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAdditionalNumbersInSim()Z

    move-result v41

    if-nez v41, :cond_0

    .line 1008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1, v13}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 997
    :cond_41
    const-string v41, "Error on loading PB"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    goto :goto_18

    .line 1019
    .end local v13           #ar:Landroid/os/AsyncResult;
    :pswitch_10
    const-string v41, "EVENT_ADD_PB_ENTRY_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1020
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 1021
    .restart local v13       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    .line 1022
    .local v29, msgNum:I
    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 1023
    .restart local v18       #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/os/Message;

    .line 1025
    .local v39, response:Landroid/os/Message;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    if-nez v41, :cond_42

    .line 1026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v42, v0

    add-int/lit8 v42, v42, -0x1

    move-object/from16 v0, v41

    move/from16 v1, v42

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1027
    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1030
    :cond_42
    const-string v41, "Cannot add PB entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1032
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneBookEntry;->clear()V

    .line 1034
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    move/from16 v41, v0

    if-eqz v41, :cond_43

    .line 1035
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    check-cast v41, Lcom/android/internal/telephony/CommandException;

    check-cast v41, Lcom/android/internal/telephony/CommandException;

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v19

    .line 1038
    .local v19, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v41, Lcom/android/internal/telephony/CommandException$Error;->PB_MEM_FULL:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v19

    move-object/from16 v1, v41

    if-ne v0, v1, :cond_43

    .line 1039
    const-string v41, "Cannot add PB entry PB_MEM_FULL"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1040
    const-string v41, "AdnFull"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1045
    .end local v19           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_43
    const-string v41, "add falied"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1052
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v18           #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    .end local v29           #msgNum:I
    .end local v39           #response:Landroid/os/Message;
    :pswitch_11
    const-string v41, "EVENT_UPDATE_PB_ENTRY_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1053
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 1054
    .restart local v13       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    .line 1055
    .restart local v29       #msgNum:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v31, v0

    .line 1056
    .restart local v31       #num:I
    iget-object v5, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/HtcAdnRecord;

    .line 1057
    .restart local v5       #adnRecord:Lcom/android/internal/telephony/HtcAdnRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/os/Message;

    .line 1059
    .restart local v39       #response:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 1061
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    if-nez v41, :cond_4d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    if-eqz v41, :cond_4d

    .line 1062
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v41, v0

    mul-int v41, v41, v31

    iget v0, v5, Lcom/android/internal/telephony/HtcAdnRecord;->recordNumber:I

    move/from16 v42, v0

    add-int v7, v41, v42

    .line 1064
    .restart local v7       #adnRecordNumber:I
    if-lez v7, :cond_4c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v41

    if-gt v7, v0, :cond_4c

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    add-int/lit8 v42, v7, -0x1

    invoke-virtual/range {v41 .. v42}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 1066
    .restart local v32       #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    if-eqz v32, :cond_44

    .line 1067
    iget-object v0, v5, Lcom/android/internal/telephony/HtcAdnRecord;->alphaTag:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->text:Ljava/lang/String;

    .line 1068
    iget-object v0, v5, Lcom/android/internal/telephony/HtcAdnRecord;->number:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    .line 1069
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    move-object/from16 v41, v0

    if-eqz v41, :cond_47

    .line 1070
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v41

    move/from16 v0, v41

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->type:I

    .line 1079
    :cond_44
    :goto_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/util/ArrayList;

    iget v0, v5, Lcom/android/internal/telephony/HtcAdnRecord;->recordNumber:I

    move/from16 v42, v0

    add-int/lit8 v42, v42, -0x1

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-virtual {v0, v1, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v42, v0

    add-int/lit8 v42, v42, -0x1

    move-object/from16 v0, v41

    move/from16 v1, v42

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1082
    invoke-virtual {v5}, Lcom/android/internal/telephony/HtcAdnRecord;->hasExtendedRecord()Z

    move-result v41

    if-eqz v41, :cond_4b

    .line 1084
    const/16 v16, 0x0

    .line 1085
    .restart local v16       #efid:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    move/from16 v41, v0

    if-nez v41, :cond_48

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    if-eqz v41, :cond_45

    .line 1087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v41

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_45

    .line 1088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    const/16 v42, 0xc2

    move-object/from16 v0, v41

    move/from16 v1, v31

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v16

    .line 1095
    :cond_45
    :goto_1a
    if-eqz v16, :cond_4a

    .line 1097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    if-eqz v41, :cond_49

    .line 1098
    iget v0, v5, Lcom/android/internal/telephony/HtcAdnRecord;->extRecord:I

    move/from16 v23, v0

    .line 1099
    .local v23, ext1index:I
    if-lez v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v23

    move/from16 v1, v41

    if-gt v0, v1, :cond_0

    .line 1100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    add-int/lit8 v42, v23, -0x1

    invoke-virtual/range {v41 .. v42}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/telephony/HtcExt1Record;

    .line 1101
    .local v21, ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v29

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1102
    const/16 v41, 0xf

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mMsgNumber:I

    move/from16 v42, v0

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v42

    move/from16 v3, v43

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v38

    .line 1105
    .local v38, res:Landroid/os/Message;
    iget-boolean v0, v5, Lcom/android/internal/telephony/HtcAdnRecord;->mClearExt1Record:Z

    move/from16 v41, v0

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_46

    .line 1106
    const/16 v41, 0xff

    move/from16 v0, v41

    iput v0, v5, Lcom/android/internal/telephony/HtcAdnRecord;->extRecord:I

    .line 1107
    const/16 v41, 0x0

    move/from16 v0, v41

    iput-boolean v0, v5, Lcom/android/internal/telephony/HtcAdnRecord;->mClearExt1Record:Z

    .line 1109
    :cond_46
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/telephony/HtcExt1Record;->mRecId:I

    move/from16 v41, v0

    move-object/from16 v0, p0

    move/from16 v1, v41

    move-object/from16 v2, v21

    move/from16 v3, v16

    move-object/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateExt1ByIndex(ILcom/android/internal/telephony/HtcExt1Record;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1072
    .end local v16           #efid:I
    .end local v21           #ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    .end local v23           #ext1index:I
    .end local v38           #res:Landroid/os/Message;
    :cond_47
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->text:Ljava/lang/String;

    move-object/from16 v41, v0

    if-nez v41, :cond_44

    .line 1073
    const/16 v41, -0x1

    move/from16 v0, v41

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->type:I

    .line 1074
    const/16 v41, -0x1

    move/from16 v0, v41

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->hidden:I

    .line 1075
    const/16 v41, -0x1

    move/from16 v0, v41

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->adtype:I

    goto/16 :goto_19

    .line 1093
    .restart local v16       #efid:I
    :cond_48
    const/16 v16, 0x6f4a

    goto/16 :goto_1a

    .line 1112
    :cond_49
    const-string v41, "HtcIccPbkEntryCache_QMI"

    const-string v42, "mExt1RecordList is null, but it shall not"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1115
    :cond_4a
    const-string v41, "update falied"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1118
    .end local v16           #efid:I
    :cond_4b
    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1121
    .end local v32           #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_4c
    const-string v41, "update falied"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1124
    .end local v7           #adnRecordNumber:I
    :cond_4d
    const-string v41, "Cannot update PB entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1126
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    move/from16 v41, v0

    if-eqz v41, :cond_4e

    .line 1127
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    check-cast v41, Lcom/android/internal/telephony/CommandException;

    check-cast v41, Lcom/android/internal/telephony/CommandException;

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v19

    .line 1130
    .restart local v19       #err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v41, Lcom/android/internal/telephony/CommandException$Error;->PB_MEM_FULL:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v19

    move-object/from16 v1, v41

    if-ne v0, v1, :cond_4e

    .line 1131
    const-string v41, "Cannot update PB entry PB_MEM_FULL"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1132
    const-string v41, "AdnFull"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1137
    .end local v19           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_4e
    const-string v41, "update falied"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1143
    .end local v5           #adnRecord:Lcom/android/internal/telephony/HtcAdnRecord;
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v29           #msgNum:I
    .end local v31           #num:I
    .end local v39           #response:Landroid/os/Message;
    :pswitch_12
    const-string v41, "EVENT_UPDATE_EXT1_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1144
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 1145
    .restart local v13       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    .line 1146
    .restart local v29       #msgNum:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/os/Message;

    .line 1147
    .restart local v39       #response:Landroid/os/Message;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    if-nez v41, :cond_4f

    .line 1148
    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1150
    :cond_4f
    const-string v41, "Cannot update EXT1 entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1151
    const-string v41, "update failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1157
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v29           #msgNum:I
    .end local v39           #response:Landroid/os/Message;
    :pswitch_13
    const-string v41, "EVENT_UPDATE_ANR_EXT1_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1158
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 1160
    .restart local v13       #ar:Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    if-nez v41, :cond_50

    .line 1161
    const-string v41, "Update EXT1 entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1163
    :cond_50
    const-string v41, "Cannot update EXT1 entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1169
    .end local v13           #ar:Landroid/os/AsyncResult;
    :pswitch_14
    const-string v41, "EVENT_DELETE_PB_ENTRY_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1170
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 1171
    .restart local v13       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    .line 1172
    .restart local v29       #msgNum:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v37, v0

    .line 1173
    .local v37, recordNumber:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/os/Message;

    .line 1175
    .restart local v39       #response:Landroid/os/Message;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    if-nez v41, :cond_51

    .line 1176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    add-int/lit8 v42, v37, -0x1

    invoke-virtual/range {v41 .. v42}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 1178
    .restart local v18       #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneBookEntry;->clear()V

    .line 1179
    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1181
    .end local v18           #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_51
    const-string v41, "Cannot delete PB entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1182
    const-string v41, "delete falied"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1188
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v29           #msgNum:I
    .end local v37           #recordNumber:I
    .end local v39           #response:Landroid/os/Message;
    :pswitch_15
    const-string v41, "EVENT_UPDATE_IAP_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1189
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 1190
    .restart local v13       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    .line 1191
    .restart local v31       #num:I
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    if-nez v41, :cond_54

    .line 1192
    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/IAPRecord;

    .line 1194
    .local v18, entry:Lcom/android/internal/telephony/IAPRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v31

    move/from16 v1, v41

    if-ge v0, v1, :cond_53

    .line 1195
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/IAPRecord;->mRecordNumber:I

    move/from16 v41, v0

    if-lez v41, :cond_52

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/IAPRecord;->mRecordNumber:I

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/util/ArrayList;

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v42

    move/from16 v1, v41

    if-gt v0, v1, :cond_52

    .line 1197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/IAPRecord;->mRecordNumber:I

    move/from16 v42, v0

    add-int/lit8 v42, v42, -0x1

    move-object/from16 v0, v41

    move/from16 v1, v42

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1199
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "num = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "IAPRecord.mRecordNumber = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/IAPRecord;->mRecordNumber:I

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1203
    :cond_52
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "out of IAP index = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/IAPRecord;->mRecordNumber:I

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1206
    :cond_53
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "out of mIAPRecordList.size() = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1209
    .end local v18           #entry:Lcom/android/internal/telephony/IAPRecord;
    :cond_54
    const-string v41, "Update IAP entry failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1215
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v31           #num:I
    :pswitch_16
    const-string v41, "EVENT_UPDATE_EMAIL_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1217
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 1218
    .restart local v13       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    .line 1220
    .restart local v31       #num:I
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    if-nez v41, :cond_59

    .line 1221
    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/EmailRecord;

    .line 1222
    .local v18, entry:Lcom/android/internal/telephony/EmailRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v31

    move/from16 v1, v41

    if-ge v0, v1, :cond_58

    .line 1223
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/EmailRecord;->isEmpty()Z

    move-result v41

    if-nez v41, :cond_55

    .line 1224
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v41, v0

    if-lez v41, :cond_57

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/util/ArrayList;

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v42

    move/from16 v1, v41

    if-gt v0, v1, :cond_57

    .line 1226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v42, v0

    add-int/lit8 v42, v42, -0x1

    move-object/from16 v0, v41

    move/from16 v1, v42

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1229
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v41, v0

    mul-int v41, v41, v31

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    move/from16 v42, v0

    add-int v7, v41, v42

    .line 1231
    .restart local v7       #adnRecordNumber:I
    if-lez v7, :cond_56

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v41

    if-gt v7, v0, :cond_56

    .line 1233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    add-int/lit8 v42, v7, -0x1

    invoke-virtual/range {v41 .. v42}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 1234
    .restart local v32       #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    if-eqz v32, :cond_55

    .line 1235
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v41, v0

    move/from16 v0, v41

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    .line 1236
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->email:Ljava/lang/String;

    .line 1246
    .end local v7           #adnRecordNumber:I
    .end local v32           #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_55
    :goto_1b
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "num = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "EmailRecord.mRecordNumber = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "EmailRecord.mAdnRecordNumber ="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v41, v0

    if-eqz v41, :cond_0

    .line 1253
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "EmailRecord.mEmailAddress ="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1239
    .restart local v7       #adnRecordNumber:I
    :cond_56
    const-string v41, "HtcIccPbkEntryCache_QMI"

    const-string v42, "update pbkEntry failed - index out of mSimPbkEntryList size"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    .line 1242
    .end local v7           #adnRecordNumber:I
    :cond_57
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "out of E-mail index = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    .line 1257
    :cond_58
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "out of mEmailRecordList.size() = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1260
    .end local v18           #entry:Lcom/android/internal/telephony/EmailRecord;
    :cond_59
    const-string v41, "HtcIccPbkEntryCache_QMI"

    const-string v42, "updateEmailRecord failed"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1266
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v31           #num:I
    :pswitch_17
    const-string v41, "EVENT_UPDATE_ANR_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1268
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    .line 1269
    .restart local v31       #num:I
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg2:I

    .line 1271
    .restart local v8       #anrEntryIndex:I
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 1273
    .restart local v13       #ar:Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    if-nez v41, :cond_62

    const/16 v41, 0x2

    move/from16 v0, v41

    if-ge v8, v0, :cond_62

    .line 1275
    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/AnrRecord;

    .line 1277
    .local v18, entry:Lcom/android/internal/telephony/AnrRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v31

    move/from16 v1, v41

    if-ge v0, v1, :cond_61

    .line 1278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/util/ArrayList;

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v41

    if-ge v8, v0, :cond_60

    .line 1279
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/AnrRecord;->isEmpty()Z

    move-result v41

    if-nez v41, :cond_5a

    .line 1281
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v41, v0

    if-lez v41, :cond_5e

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/util/ArrayList;

    move-object/from16 v0, v41

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/util/ArrayList;

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v42

    move/from16 v1, v41

    if-gt v0, v1, :cond_5e

    .line 1284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/util/ArrayList;

    move-object/from16 v0, v41

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v42, v0

    add-int/lit8 v42, v42, -0x1

    move-object/from16 v0, v41

    move/from16 v1, v42

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1286
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v41, v0

    mul-int v41, v41, v31

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    move/from16 v42, v0

    add-int v7, v41, v42

    .line 1288
    .restart local v7       #adnRecordNumber:I
    if-lez v7, :cond_5d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v41

    if-gt v7, v0, :cond_5d

    .line 1290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    add-int/lit8 v42, v7, -0x1

    invoke-virtual/range {v41 .. v42}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 1292
    .restart local v32       #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    if-eqz v32, :cond_5a

    .line 1293
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    move-object/from16 v41, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v42, v0

    aput v42, v41, v8

    .line 1294
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    move-object/from16 v42, v0

    aput-object v42, v41, v8

    .line 1305
    .end local v7           #adnRecordNumber:I
    .end local v32           #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_5a
    :goto_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    if-eqz v41, :cond_5c

    .line 1306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v41

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_5c

    .line 1307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    const/16 v42, 0xc2

    move-object/from16 v0, v41

    move/from16 v1, v31

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v16

    .line 1309
    .restart local v16       #efid:I
    if-eqz v16, :cond_5c

    .line 1310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    if-eqz v41, :cond_5f

    .line 1311
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    move/from16 v23, v0

    .line 1312
    .restart local v23       #ext1index:I
    if-lez v23, :cond_5c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v23

    move/from16 v1, v41

    if-gt v0, v1, :cond_5c

    .line 1313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    add-int/lit8 v42, v23, -0x1

    invoke-virtual/range {v41 .. v42}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/telephony/HtcExt1Record;

    .line 1314
    .restart local v21       #ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    const/16 v41, 0x13

    move-object/from16 v0, p0

    move/from16 v1, v41

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v38

    .line 1315
    .restart local v38       #res:Landroid/os/Message;
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    move/from16 v41, v0

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_5b

    .line 1316
    const/16 v41, 0xff

    move/from16 v0, v41

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    .line 1317
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    .line 1319
    :cond_5b
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/telephony/HtcExt1Record;->mRecId:I

    move/from16 v41, v0

    move-object/from16 v0, p0

    move/from16 v1, v41

    move-object/from16 v2, v21

    move/from16 v3, v16

    move-object/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateExt1ByIndex(ILcom/android/internal/telephony/HtcExt1Record;ILandroid/os/Message;)V

    .line 1328
    .end local v16           #efid:I
    .end local v21           #ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    .end local v23           #ext1index:I
    .end local v38           #res:Landroid/os/Message;
    :cond_5c
    :goto_1d
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "num = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "anrEntryIndex = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "AnrRecord.mRecordNumber = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "AnrRecord.mAdnRecordNumber ="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    move-object/from16 v41, v0

    if-eqz v41, :cond_0

    .line 1336
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "AnrRecord.mNumber ="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1297
    .restart local v7       #adnRecordNumber:I
    :cond_5d
    const-string v41, "HtcIccPbkEntryCache_QMI"

    const-string v42, "update pbkEntry failed - index out of mSimPbkEntryList size"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c

    .line 1300
    .end local v7           #adnRecordNumber:I
    :cond_5e
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "out of Anr index = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c

    .line 1322
    .restart local v16       #efid:I
    :cond_5f
    const-string v41, "HtcIccPbkEntryCache_QMI"

    const-string v42, "mExt1RecordList is null, but it shall not"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 1339
    .end local v16           #efid:I
    :cond_60
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "anrEntryIndex out of mAnrRecordLists.get(num).size = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1342
    :cond_61
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "num out of mAnrRecordLists.size() = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1345
    .end local v18           #entry:Lcom/android/internal/telephony/AnrRecord;
    :cond_62
    const-string v41, "HtcIccPbkEntryCache_QMI"

    const-string v42, "updateAnrRecord failed"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 230
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_14
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_7
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_8
        :pswitch_12
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_13
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method handleNextSequence(III)V
    .locals 17
    .parameter "event"
    .parameter "num"
    .parameter "index"

    .prologue
    .line 2765
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-nez v13, :cond_1

    .line 2918
    :cond_0
    :goto_0
    return-void

    .line 2769
    :cond_1
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 2770
    .local v11, queryTimeBundle:Landroid/os/Bundle;
    const-string v13, "query_sim_contact_file_timestamp"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    invoke-virtual {v11, v13, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2772
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v13, :cond_0

    .line 2773
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    .line 2774
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->convertEventToTag(II)I

    move-result v12

    .line 2775
    .local v12, tag:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move/from16 v0, p2

    invoke-virtual {v13, v0, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v6

    .line 2776
    .local v6, efid:I
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2839
    :pswitch_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Read EF-EXT1 num:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 2842
    new-instance v13, Lcom/android/internal/telephony/HtcExt1RecordLoader;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v13, v14, v15}, Lcom/android/internal/telephony/HtcExt1RecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v14, 0x8

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v14, v1, v6, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v6, v14}, Lcom/android/internal/telephony/HtcExt1RecordLoader;->loadAllFromEF(ILandroid/os/Message;)V

    goto :goto_0

    .line 2780
    :pswitch_1
    new-instance v13, Lcom/android/internal/telephony/UIDRecordLoader;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v13, v14, v15}, Lcom/android/internal/telephony/UIDRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v14, 0xa

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v14, v1, v6, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v6, v14}, Lcom/android/internal/telephony/UIDRecordLoader;->loadAllFromEF(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2789
    :pswitch_2
    new-instance v13, Lcom/android/internal/telephony/ADNRecordLoader;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v16, v0

    invoke-direct/range {v13 .. v16}, Lcom/android/internal/telephony/ADNRecordLoader;-><init>(Ljava/util/ArrayList;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v14, 0x9

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v14, v1, v6, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v6, v14}, Lcom/android/internal/telephony/ADNRecordLoader;->loadAllFromEF(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2795
    :pswitch_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Read EF-IAP num:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 2798
    new-instance v13, Lcom/android/internal/telephony/IAPRecordLoader;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v13, v14, v15}, Lcom/android/internal/telephony/IAPRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v14, 0xb

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v14, v1, v6, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v6, v14}, Lcom/android/internal/telephony/IAPRecordLoader;->loadAllFromEF(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2804
    :pswitch_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Read EF-EMAIL num:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 2805
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailFileList:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 2806
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailFileList:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 2807
    .local v7, fileindex:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v7, v13, :cond_4

    .line 2808
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v13, v0, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2811
    add-int/lit8 p2, p2, 0x1

    .line 2812
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v13

    move/from16 v0, p2

    if-ge v0, v13, :cond_2

    .line 2813
    const/16 v13, 0xc

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v13, v1, v14}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 2816
    :cond_2
    const/16 v13, 0xd

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v10

    .line 2818
    .local v10, next_event:I
    if-eqz v10, :cond_3

    .line 2819
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v13, v14}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 2821
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 2825
    .end local v10           #next_event:I
    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fileindex:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ">"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "EmailRecordList.size():"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2828
    .end local v7           #fileindex:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v9

    .line 2831
    .local v9, inIAP:Z
    new-instance v13, Lcom/android/internal/telephony/EmailRecordLoader;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v13, v14, v15}, Lcom/android/internal/telephony/EmailRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v14, 0xc

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v14, v1, v6, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v6, v9, v14}, Lcom/android/internal/telephony/EmailRecordLoader;->loadAllFromEF(IZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 2848
    .end local v9           #inIAP:Z
    :pswitch_5
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Read EF-ANR num"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "index:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 2849
    const/4 v8, 0x1

    .line 2850
    .local v8, flag:Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    move/from16 v0, p3

    if-ge v0, v13, :cond_8

    .line 2851
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 2852
    .local v3, anrFileList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 2853
    const/4 v8, 0x0

    .line 2854
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 2856
    .restart local v7       #fileindex:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v7, v13, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    move/from16 v0, p3

    if-ge v0, v13, :cond_d

    .line 2857
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 2861
    .local v5, anrRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    if-nez p3, :cond_9

    .line 2862
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2867
    .local v4, anrLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    :goto_1
    if-eqz v4, :cond_6

    .line 2868
    move/from16 v0, p3

    invoke-virtual {v4, v0, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2869
    if-nez p3, :cond_a

    .line 2870
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v13, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2876
    :cond_6
    :goto_2
    const/4 v13, 0x2

    move/from16 v0, p3

    if-ge v0, v13, :cond_7

    .line 2877
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v14, 0x1

    aput-boolean v14, v13, p3

    .line 2878
    const-string v13, "gsm.usim.anr.max-no"

    add-int/lit8 v14, p3, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2882
    :cond_7
    add-int/lit8 p3, p3, 0x1

    .line 2883
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getANRnums()I

    move-result v13

    move/from16 v0, p3

    if-ge v0, v13, :cond_b

    const/4 v13, 0x2

    move/from16 v0, p3

    if-ge v0, v13, :cond_b

    .line 2885
    const/16 v13, 0xd

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v13, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    .line 2904
    .end local v3           #anrFileList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v4           #anrLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    .end local v5           #anrRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    .end local v7           #fileindex:I
    :cond_8
    :goto_3
    if-eqz v8, :cond_0

    .line 2905
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v9

    .line 2908
    .restart local v9       #inIAP:Z
    new-instance v13, Lcom/android/internal/telephony/AnrRecordLoader;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v16, v0

    invoke-direct/range {v13 .. v16}, Lcom/android/internal/telephony/AnrRecordLoader;-><init>(Ljava/util/ArrayList;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v14, 0xd

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v14, v1, v2, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v6, v9, v14}, Lcom/android/internal/telephony/AnrRecordLoader;->loadAllFromEF(IZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 2864
    .end local v9           #inIAP:Z
    .restart local v3       #anrFileList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v5       #anrRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    .restart local v7       #fileindex:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .restart local v4       #anrLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    goto/16 :goto_1

    .line 2872
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v13, v0, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2888
    :cond_b
    add-int/lit8 p2, p2, 0x1

    .line 2889
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v13

    move/from16 v0, p2

    if-ge v0, v13, :cond_c

    .line 2890
    const/16 v13, 0xd

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v13, v1, v14}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto :goto_3

    .line 2894
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto :goto_3

    .line 2898
    .end local v4           #anrLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    .end local v5           #anrRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    :cond_d
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fileindex:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " > "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "mAnrRecordLists.size():"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "or index: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " > "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "mAnrRecordLists.get(fileindex).size():"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2776
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public isSIMPhonebookFileId(I)Z
    .locals 2
    .parameter "efid"

    .prologue
    .line 3036
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v0, :cond_0

    .line 3037
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3038
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isSIMPhonebookFileId(I)Z

    move-result v0

    .line 3041
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestLoadAllPBEntry(Landroid/os/Message;)V
    .locals 9
    .parameter "response"

    .prologue
    const/16 v8, 0x6f4a

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1436
    iget-boolean v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->misloading:Z

    if-nez v3, :cond_2

    .line 1437
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getPbkEntryListIfLoaded()Ljava/util/ArrayList;

    move-result-object v2

    .line 1441
    .local v2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/PhoneBookEntry;>;"
    if-eqz v2, :cond_2

    .line 1442
    if-eqz p1, :cond_0

    .line 1443
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iput-object v2, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1444
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1446
    :cond_0
    const-string v3, "PB has already loaded"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1488
    .end local v2           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/PhoneBookEntry;>;"
    :cond_1
    :goto_0
    return-void

    .line 1450
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1452
    const-string v3, "HtcIccPbkEntryCache_QMI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestLoadAllPBEntry()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, v6, :cond_1

    .line 1468
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 1469
    .local v0, card:Lcom/android/internal/telephony/IccCard;
    if-eqz v0, :cond_4

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1470
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v3, :cond_3

    .line 1471
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->loadEfPBRFromUsim(Landroid/os/Message;)V

    .line 1487
    :cond_3
    :goto_1
    iput-boolean v6, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->misloading:Z

    goto :goto_0

    .line 1474
    :cond_4
    iput-boolean v6, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    .line 1475
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v3, :cond_5

    .line 1476
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v3, v7}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->setPbrPresent(Z)V

    .line 1479
    :cond_5
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1480
    .local v1, queryTimeStamp:Landroid/os/Bundle;
    const-string v3, "query_sim_contact_file_timestamp"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1481
    new-instance v3, Lcom/android/internal/telephony/HtcExt1RecordLoader;

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v3, v4, v5}, Lcom/android/internal/telephony/HtcExt1RecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v4, 0x8

    invoke-virtual {p0, v4, v7, v8, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v8, v4}, Lcom/android/internal/telephony/HtcExt1RecordLoader;->loadAllFromEF(ILandroid/os/Message;)V

    goto :goto_1
.end method

.method public setupIccFileHandler(Lcom/android/internal/telephony/IccFileHandler;)V
    .locals 1
    .parameter "iccFileHandler"

    .prologue
    .line 3048
    iput-object p1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 3049
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v0, :cond_0

    .line 3050
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->setupIccFileHandler(Lcom/android/internal/telephony/IccFileHandler;)V

    .line 3053
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    if-nez v0, :cond_1

    .line 3054
    const-string v0, "setupIccFileHandler: set mIccFileHandler to null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 3057
    :cond_1
    return-void
.end method

.method updateADNByIndex(ILcom/android/internal/telephony/HtcAdnRecord;ILandroid/os/Message;)V
    .locals 4
    .parameter "recordIndex"
    .parameter "adnRecord"
    .parameter "efid"
    .parameter "response"

    .prologue
    .line 2652
    const-string v0, "HtcIccPbkEntryCache_QMI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateADNByIndex recordIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2653
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 2656
    new-instance v0, Lcom/android/internal/telephony/ADNRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ADNRecordLoader;-><init>(Ljava/util/ArrayList;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    invoke-virtual {v0, p3, p1, p2, p4}, Lcom/android/internal/telephony/ADNRecordLoader;->updateEF(IILcom/android/internal/telephony/HtcAdnRecord;Landroid/os/Message;)V

    .line 2661
    :cond_0
    return-void
.end method

.method updateAnrByIndex(ILcom/android/internal/telephony/AnrRecord;IILandroid/os/Message;)V
    .locals 6
    .parameter "recordIndex"
    .parameter "anrRecord"
    .parameter "efid"
    .parameter "anrEntryIndex"
    .parameter "response"

    .prologue
    .line 2626
    const-string v0, "HtcIccPbkEntryCache_QMI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAnrByIndex recordIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2627
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, p4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v4

    .line 2629
    .local v4, inIAP:Z
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 2632
    new-instance v0, Lcom/android/internal/telephony/AnrRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/AnrRecordLoader;-><init>(Ljava/util/ArrayList;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    move v1, p3

    move v2, p1

    move-object v3, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/AnrRecordLoader;->updateEF(IILcom/android/internal/telephony/AnrRecord;ZLandroid/os/Message;)V

    .line 2636
    :cond_0
    return-void
.end method

.method updateEmailByIndex(IILcom/android/internal/telephony/EmailRecord;Landroid/os/Message;)V
    .locals 6
    .parameter "efid"
    .parameter "recordIndex"
    .parameter "emailRecord"
    .parameter "response"

    .prologue
    .line 2612
    const-string v0, "HtcIccPbkEntryCache_QMI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateEmailByIndex recordIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2613
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v4

    .line 2615
    .local v4, inIAP:Z
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 2618
    new-instance v0, Lcom/android/internal/telephony/EmailRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/EmailRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/EmailRecordLoader;->updateEF(IILcom/android/internal/telephony/EmailRecord;ZLandroid/os/Message;)V

    .line 2622
    :cond_0
    return-void
.end method

.method updateExt1ByIndex(ILcom/android/internal/telephony/HtcExt1Record;ILandroid/os/Message;)V
    .locals 3
    .parameter "recordIndex"
    .parameter "ext1Record"
    .parameter "efid"
    .parameter "response"

    .prologue
    .line 2665
    const-string v0, "HtcIccPbkEntryCache_QMI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateExt1ByIndex recordIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2666
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 2669
    new-instance v0, Lcom/android/internal/telephony/HtcExt1RecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcExt1RecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    invoke-virtual {v0, p3, p1, p2, p4}, Lcom/android/internal/telephony/HtcExt1RecordLoader;->updateEF(IILcom/android/internal/telephony/HtcExt1Record;Landroid/os/Message;)V

    .line 2673
    :cond_0
    return-void
.end method

.method updateIAPByIndex(ILcom/android/internal/telephony/IAPRecord;ILandroid/os/Message;)V
    .locals 3
    .parameter "recordIndex"
    .parameter "iapRecord"
    .parameter "efid"
    .parameter "response"

    .prologue
    .line 2640
    const-string v0, "HtcIccPbkEntryCache_QMI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateIAPByIndex recordIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2641
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 2644
    new-instance v0, Lcom/android/internal/telephony/IAPRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IAPRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    invoke-virtual {v0, p3, p1, p2, p4}, Lcom/android/internal/telephony/IAPRecordLoader;->updateEF(IILcom/android/internal/telephony/IAPRecord;Landroid/os/Message;)V

    .line 2648
    :cond_0
    return-void
.end method

.method public updatePBKEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 11
    .parameter "recordNumber"
    .parameter "name"
    .parameter "number"
    .parameter "number1"
    .parameter "number2"
    .parameter "newEmail"
    .parameter "response"

    .prologue
    .line 1728
    const-string v1, "updatePBKEntry()"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1730
    const/4 v7, 0x0

    .line 1733
    .local v7, error:I
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-nez v1, :cond_0

    .line 1734
    const-string v1, "mPhone null"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 1840
    :goto_0
    return-void

    .line 1738
    :cond_0
    invoke-static {p3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1740
    .local v10, phonenumber:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1741
    const-string v1, "error"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 1745
    :cond_1
    move-object/from16 v0, p5

    invoke-direct {p0, v10, p4, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->checkNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 1747
    if-eqz v7, :cond_2

    .line 1748
    const-string v1, "error"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 1753
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v9

    .line 1756
    .local v9, iccCardInterface:Lcom/android/internal/telephony/IccCard;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    array-length v1, v1

    if-ge v8, v1, :cond_3

    .line 1757
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    const/4 v2, 0x0

    aput-byte v2, v1, v8

    .line 1756
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1761
    :cond_3
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v2, :cond_4

    sget-boolean v1, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG:Z

    if-nez v1, :cond_4

    .line 1763
    const-string v1, "error"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 1767
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    if-eqz v1, :cond_e

    .line 1768
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 1770
    .local v6, entry:Lcom/android/internal/telephony/PhoneBookEntry;
    if-eqz v6, :cond_5

    iget v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    if-gtz v1, :cond_6

    .line 1771
    :cond_5
    const-string v1, "error"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 1773
    :cond_6
    iget v1, v6, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    div-int v5, v1, v2

    .line 1774
    .local v5, num:I
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    .line 1775
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->checkFilesStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/PhoneBookEntry;)I

    move-result v7

    .line 1776
    iget-boolean v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mANR_swap:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 1777
    move-object/from16 p5, p4

    .line 1778
    const-string p4, ""

    .line 1781
    :cond_7
    if-eqz v7, :cond_8

    .line 1782
    packed-switch v7, :pswitch_data_0

    .line 1793
    const-string v1, "error"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1790
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MemoryFull:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1799
    :cond_8
    iget-boolean v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    .line 1800
    move-object/from16 v0, p6

    invoke-direct {p0, v0, v6}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateEmailRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;)V

    .line 1806
    :cond_9
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 1807
    const/4 v1, 0x0

    invoke-direct {p0, p4, v6, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V

    .line 1810
    :cond_a
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    .line 1811
    const/4 v1, 0x1

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v6, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V

    .line 1817
    :cond_b
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAdditionalNumbersInSim()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1818
    iget-boolean v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_c

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_c

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 1821
    :cond_c
    iget v1, v6, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateIAP(IZ)V

    .line 1828
    :cond_d
    move-object/from16 v0, p7

    invoke-direct {p0, p2, v10, v6, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateADNRecord(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;Landroid/os/Message;)V

    .line 1831
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updatePSCRecord(ZII)V

    goto/16 :goto_0

    .line 1836
    .end local v5           #num:I
    .end local v6           #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_e
    const-string v1, "HtcIccPbkEntryCache_QMI"

    const-string v2, "mSimPbkEntryList = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    const-string v1, "error"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1782
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
