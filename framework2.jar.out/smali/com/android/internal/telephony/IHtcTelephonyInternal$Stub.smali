.class public abstract Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;
.super Landroid/os/Binder;
.source "IHtcTelephonyInternal.java"

# interfaces
.implements Lcom/android/internal/telephony/IHtcTelephonyInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IHtcTelephonyInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IHtcTelephonyInternal"

.field static final TRANSACTION_akaAuthentication:I = 0x27

.field static final TRANSACTION_calculateAkaResponse:I = 0x23

.field static final TRANSACTION_calculateGbaBootstrappingResponse:I = 0x24

.field static final TRANSACTION_calculateNafExternalKey:I = 0x25

.field static final TRANSACTION_closeIccLogicalChannel:I = 0x13

.field static final TRANSACTION_enablePS_W2G_Handover:I = 0x46

.field static final TRANSACTION_enableRegistrationState_wifi_call:I = 0x42

.field static final TRANSACTION_generalGetter:I = 0x43

.field static final TRANSACTION_generalSetter:I = 0x44

.field static final TRANSACTION_getCdmaMin:I = 0x35

.field static final TRANSACTION_getDrxInfo:I = 0x47

.field static final TRANSACTION_getEsn:I = 0x34

.field static final TRANSACTION_getGlobalDataRoamingOption:I = 0x29

.field static final TRANSACTION_getHtcDeviceId:I = 0x2c

.field static final TRANSACTION_getHtcDeviceSvn:I = 0x2d

.field static final TRANSACTION_getHtcIccSerialNumber:I = 0x2f

.field static final TRANSACTION_getHtcLine1AlphaTag:I = 0x31

.field static final TRANSACTION_getHtcLine1Number:I = 0x30

.field static final TRANSACTION_getHtcSubscriberId:I = 0x2e

.field static final TRANSACTION_getHtcVoiceMailAlphaTag:I = 0x33

.field static final TRANSACTION_getHtcVoiceMailNumber:I = 0x32

.field static final TRANSACTION_getLastError:I = 0x14

.field static final TRANSACTION_getRejectAllCalls:I = 0x39

.field static final TRANSACTION_getSectorId:I = 0x1d

.field static final TRANSACTION_hello_getDeviceId:I = 0x1

.field static final TRANSACTION_launchCallForwardingSettings:I = 0x3a

.field static final TRANSACTION_notifyKeyEvent:I = 0x40

.field static final TRANSACTION_notifyScreenBusy:I = 0x3f

.field static final TRANSACTION_openIccLogicalChannel:I = 0x12

.field static final TRANSACTION_queryCAVE:I = 0x3

.field static final TRANSACTION_queryMD5:I = 0xa

.field static final TRANSACTION_querySSDUpdate:I = 0x5

.field static final TRANSACTION_queryUIMAUTH:I = 0xb

.field static final TRANSACTION_queryVPM:I = 0x8

.field static final TRANSACTION_requestCAVE:I = 0x2

.field static final TRANSACTION_requestGetBtid:I = 0x21

.field static final TRANSACTION_requestGetDOMAIN:I = 0x17

.field static final TRANSACTION_requestGetGID1:I = 0x28

.field static final TRANSACTION_requestGetHasISIM:I = 0x1e

.field static final TRANSACTION_requestGetIMPI:I = 0x16

.field static final TRANSACTION_requestGetIMPU:I = 0x18

.field static final TRANSACTION_requestGetIMSI:I = 0x1a

.field static final TRANSACTION_requestGetIsGBASupported:I = 0x1f

.field static final TRANSACTION_requestGetKeyLifetime:I = 0x22

.field static final TRANSACTION_requestGetMobileNumber:I = 0x1b

.field static final TRANSACTION_requestGetPCSCF:I = 0x19

.field static final TRANSACTION_requestGetPCSCFAddress:I = 0xf

.field static final TRANSACTION_requestGetRand:I = 0x20

.field static final TRANSACTION_requestGetSIMType:I = 0x3b

.field static final TRANSACTION_requestGetVolteSipRegFailure:I = 0xe

.field static final TRANSACTION_requestImsAkaAuthentication:I = 0x1c

.field static final TRANSACTION_requestLtePermanentlyDetached:I = 0x36

.field static final TRANSACTION_requestMD5:I = 0x9

.field static final TRANSACTION_requestSSDUpdate:I = 0x4

.field static final TRANSACTION_requestSSDUpdateConfirm:I = 0x6

.field static final TRANSACTION_requestSetFastDormancy:I = 0x37

.field static final TRANSACTION_requestSetMultiRABTrafficThrottling:I = 0x2b

.field static final TRANSACTION_requestVPM:I = 0x7

.field static final TRANSACTION_sendAT_PushMail:I = 0x45

.field static final TRANSACTION_setDataEnabled:I = 0x3c

.field static final TRANSACTION_setGbaBootstrappingParams:I = 0x26

.field static final TRANSACTION_setGlobalDataRoamingOption:I = 0x2a

.field static final TRANSACTION_setPolicyDataEnabled:I = 0x3e

.field static final TRANSACTION_setPreferredNetworkType_wifi_call:I = 0x41

.field static final TRANSACTION_setRejectAllCalls:I = 0x38

.field static final TRANSACTION_setUserDataEnabled:I = 0x3d

.field static final TRANSACTION_transmitIccBasicChannel:I = 0x11

.field static final TRANSACTION_transmitIccLogicalChannel:I = 0x10

.field static final TRANSACTION_transmitIccSimIO:I = 0x15

.field static final TRANSACTION_updateRegDregState:I = 0xc

.field static final TRANSACTION_updateSipInviteState:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IHtcTelephonyInternal;
    .locals 2
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/IHtcTelephonyInternal;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/android/internal/telephony/IHtcTelephonyInternal;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 809
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_0
    return v9

    .line 46
    :sswitch_0
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->hello_getDeviceId()Ljava/lang/String;

    move-result-object v8

    .line 53
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_2
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->requestCAVE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 63
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_3
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->queryCAVE()I

    move-result v8

    .line 71
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 77
    .end local v8           #_result:I
    :sswitch_4
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 80
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->requestSSDUpdate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 81
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_5
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->querySSDUpdate()I

    move-result v8

    .line 89
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 95
    .end local v8           #_result:I
    :sswitch_6
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 98
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->requestSSDUpdateConfirm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 99
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_7
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->requestVPM()Ljava/lang/String;

    move-result-object v8

    .line 107
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 113
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_8
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->queryVPM()I

    move-result v8

    .line 115
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 121
    .end local v8           #_result:I
    :sswitch_9
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 125
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->requestMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 129
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 135
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_a
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->queryMD5()I

    move-result v8

    .line 137
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 143
    .end local v8           #_result:I
    :sswitch_b
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->queryUIMAUTH()I

    move-result v8

    .line 145
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 151
    .end local v8           #_result:I
    :sswitch_c
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 155
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 156
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->updateRegDregState(II)V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 162
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_d
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 166
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 170
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 171
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->updateSipInviteState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 177
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    :sswitch_e
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->requestGetVolteSipRegFailure()I

    move-result v8

    .line 179
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 185
    .end local v8           #_result:I
    :sswitch_f
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->requestGetPCSCFAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 189
    .local v8, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 195
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:[Ljava/lang/String;
    :sswitch_10
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 199
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 201
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 203
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 205
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 207
    .local v5, _arg4:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 209
    .local v6, _arg5:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, _arg6:Ljava/lang/String;
    move-object v0, p0

    .line 210
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->transmitIccLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 211
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 217
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:I
    .end local v6           #_arg5:I
    .end local v7           #_arg6:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_11
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 221
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 223
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 225
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 227
    .restart local v4       #_arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 229
    .restart local v5       #_arg4:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, _arg5:Ljava/lang/String;
    move-object v0, p0

    .line 230
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->transmitIccBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 231
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 237
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:I
    .end local v6           #_arg5:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_12
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->openIccLogicalChannel(Ljava/lang/String;)I

    move-result v8

    .line 241
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 247
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:I
    :sswitch_13
    const-string v10, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 250
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->closeIccLogicalChannel(I)Z

    move-result v8

    .line 251
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    if-eqz v8, :cond_0

    move v0, v9

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 257
    .end local v1           #_arg0:I
    .end local v8           #_result:Z
    :sswitch_14
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->getLastError()I

    move-result v8

    .line 259
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 265
    .end local v8           #_result:I
    :sswitch_15
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 269
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 271
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 273
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 275
    .restart local v4       #_arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 277
    .restart local v5       #_arg4:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #_arg5:Ljava/lang/String;
    move-object v0, p0

    .line 278
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->transmitIccSimIO(IIIIILjava/lang/String;)[B

    move-result-object v8

    .line 279
    .local v8, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 285
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:I
    .end local v6           #_arg5:Ljava/lang/String;
    .end local v8           #_result:[B
    :sswitch_16
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->requestGetIMPI()Ljava/lang/String;

    move-result-object v8

    .line 287
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 293
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_17
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->requestGetDOMAIN()Ljava/lang/String;

    move-result-object v8

    .line 295
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 301
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_18
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->requestGetIMPU()[Ljava/lang/String;

    move-result-object v8

    .line 303
    .local v8, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 309
    .end local v8           #_result:[Ljava/lang/String;
    :sswitch_19
    const-string v10, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->requestGetPCSCF()Landroid/os/Bundle;

    move-result-object v8

    .line 311
    .local v8, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    if-eqz v8, :cond_1

    .line 313
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    invoke-virtual {v8, p3, v9}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 317
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 323
    .end local v8           #_result:Landroid/os/Bundle;
    :sswitch_1a
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->requestGetIMSI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 327
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 333
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_1b
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 336
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->requestGetMobileNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 337
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 343
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_1c
    const-string v10, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 346
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->requestImsAkaAuthentication(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 347
    .local v8, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    if-eqz v8, :cond_2

    .line 349
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    invoke-virtual {v8, p3, v9}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 353
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 359
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Landroid/os/Bundle;
    :sswitch_1d
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 362
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->getSectorId(I)Ljava/lang/String;

    move-result-object v8

    .line 363
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 369
    .end local v1           #_arg0:I
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_1e
    const-string v10, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->requestGetHasISIM()Z

    move-result v8

    .line 371
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    if-eqz v8, :cond_3

    move v0, v9

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 377
    .end local v8           #_result:Z
    :sswitch_1f
    const-string v10, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->requestGetIsGBASupported()Z

    move-result v8

    .line 379
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    if-eqz v8, :cond_4

    move v0, v9

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 385
    .end local v8           #_result:Z
    :sswitch_20
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->requestGetRand()[B

    move-result-object v8

    .line 387
    .local v8, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 393
    .end local v8           #_result:[B
    :sswitch_21
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->requestGetBtid()Ljava/lang/String;

    move-result-object v8

    .line 395
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 401
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_22
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->requestGetKeyLifetime()Ljava/lang/String;

    move-result-object v8

    .line 403
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 409
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_23
    const-string v10, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 413
    .local v1, _arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 414
    .local v2, _arg1:[B
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->calculateAkaResponse([B[B)Landroid/os/Bundle;

    move-result-object v8

    .line 415
    .local v8, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    if-eqz v8, :cond_5

    .line 417
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    invoke-virtual {v8, p3, v9}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 421
    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 427
    .end local v1           #_arg0:[B
    .end local v2           #_arg1:[B
    .end local v8           #_result:Landroid/os/Bundle;
    :sswitch_24
    const-string v10, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 431
    .restart local v1       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 432
    .restart local v2       #_arg1:[B
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->calculateGbaBootstrappingResponse([B[B)Landroid/os/Bundle;

    move-result-object v8

    .line 433
    .restart local v8       #_result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    if-eqz v8, :cond_6

    .line 435
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 436
    invoke-virtual {v8, p3, v9}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 439
    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 445
    .end local v1           #_arg0:[B
    .end local v2           #_arg1:[B
    .end local v8           #_result:Landroid/os/Bundle;
    :sswitch_25
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 448
    .restart local v1       #_arg0:[B
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->calculateNafExternalKey([B)[B

    move-result-object v8

    .line 449
    .local v8, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 455
    .end local v1           #_arg0:[B
    .end local v8           #_result:[B
    :sswitch_26
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 459
    .restart local v1       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 461
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 462
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V

    .line 463
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 468
    .end local v1           #_arg0:[B
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    :sswitch_27
    const-string v10, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 472
    .restart local v1       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 473
    .local v2, _arg1:[B
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->akaAuthentication([B[B)Landroid/os/Bundle;

    move-result-object v8

    .line 474
    .local v8, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    if-eqz v8, :cond_7

    .line 476
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 477
    invoke-virtual {v8, p3, v9}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 480
    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 486
    .end local v1           #_arg0:[B
    .end local v2           #_arg1:[B
    .end local v8           #_result:Landroid/os/Bundle;
    :sswitch_28
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->requestGetGID1()Ljava/lang/String;

    move-result-object v8

    .line 488
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 489
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 494
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_29
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 495
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->getGlobalDataRoamingOption()I

    move-result v8

    .line 496
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 502
    .end local v8           #_result:I
    :sswitch_2a
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 505
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->setGlobalDataRoamingOption(I)V

    .line 506
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 511
    .end local v1           #_arg0:I
    :sswitch_2b
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 513
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 515
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 516
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->requestSetMultiRABTrafficThrottling(II)V

    .line 517
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 522
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_2c
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 525
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->getHtcDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 526
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 532
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_2d
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 535
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->getHtcDeviceSvn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 536
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 542
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_2e
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 544
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 545
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->getHtcSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 546
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 552
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_2f
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 555
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->getHtcIccSerialNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 556
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 562
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_30
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 565
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->getHtcLine1Number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 566
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 572
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_31
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 574
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 575
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->getHtcLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 576
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 582
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_32
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 584
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 585
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->getHtcVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 586
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 592
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_33
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 595
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->getHtcVoiceMailAlphaTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 596
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 602
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_34
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->getEsn()Ljava/lang/String;

    move-result-object v8

    .line 604
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 610
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_35
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 611
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->getCdmaMin()Ljava/lang/String;

    move-result-object v8

    .line 612
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 618
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_36
    const-string v10, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 619
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->requestLtePermanentlyDetached()Z

    move-result v8

    .line 620
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    if-eqz v8, :cond_8

    move v0, v9

    :cond_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 626
    .end local v8           #_result:Z
    :sswitch_37
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 630
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 631
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->requestSetFastDormancy(II)V

    .line 632
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 637
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_38
    const-string v10, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 639
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_9

    move v1, v9

    .line 640
    .local v1, _arg0:Z
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->setRejectAllCalls(Z)V

    .line 641
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    :cond_9
    move v1, v0

    .line 639
    goto :goto_1

    .line 646
    :sswitch_39
    const-string v10, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 647
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->getRejectAllCalls()Z

    move-result v8

    .line 648
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 649
    if-eqz v8, :cond_a

    move v0, v9

    :cond_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 654
    .end local v8           #_result:Z
    :sswitch_3a
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 655
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->launchCallForwardingSettings()V

    .line 656
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 661
    :sswitch_3b
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 662
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->requestGetSIMType()I

    move-result v8

    .line 663
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 664
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 669
    .end local v8           #_result:I
    :sswitch_3c
    const-string v10, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 671
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_c

    move v1, v9

    .line 672
    .restart local v1       #_arg0:Z
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->setDataEnabled(Z)Z

    move-result v8

    .line 673
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 674
    if-eqz v8, :cond_b

    move v0, v9

    :cond_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v8           #_result:Z
    :cond_c
    move v1, v0

    .line 671
    goto :goto_2

    .line 679
    :sswitch_3d
    const-string v10, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 681
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_e

    move v1, v9

    .line 682
    .restart local v1       #_arg0:Z
    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->setUserDataEnabled(Z)Z

    move-result v8

    .line 683
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 684
    if-eqz v8, :cond_d

    move v0, v9

    :cond_d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v8           #_result:Z
    :cond_e
    move v1, v0

    .line 681
    goto :goto_3

    .line 689
    :sswitch_3e
    const-string v10, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 691
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_10

    move v1, v9

    .line 692
    .restart local v1       #_arg0:Z
    :goto_4
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->setPolicyDataEnabled(Z)Z

    move-result v8

    .line 693
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 694
    if-eqz v8, :cond_f

    move v0, v9

    :cond_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v8           #_result:Z
    :cond_10
    move v1, v0

    .line 691
    goto :goto_4

    .line 699
    :sswitch_3f
    const-string v10, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_11

    move v1, v9

    .line 702
    .restart local v1       #_arg0:Z
    :goto_5
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->notifyScreenBusy(Z)V

    .line 703
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    :cond_11
    move v1, v0

    .line 701
    goto :goto_5

    .line 708
    :sswitch_40
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 710
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 711
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->notifyKeyEvent(I)V

    .line 712
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 717
    .end local v1           #_arg0:I
    :sswitch_41
    const-string v10, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 719
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 720
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->setPreferredNetworkType_wifi_call(I)Z

    move-result v8

    .line 721
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 722
    if-eqz v8, :cond_12

    move v0, v9

    :cond_12
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 727
    .end local v1           #_arg0:I
    .end local v8           #_result:Z
    :sswitch_42
    const-string v10, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 729
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_13

    move v1, v9

    .line 730
    .local v1, _arg0:Z
    :goto_6
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->enableRegistrationState_wifi_call(Z)V

    .line 731
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    :cond_13
    move v1, v0

    .line 729
    goto :goto_6

    .line 736
    :sswitch_43
    const-string v10, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 738
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 740
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_14

    .line 741
    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 746
    .local v2, _arg1:Landroid/os/Bundle;
    :goto_7
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    .line 747
    .local v8, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 748
    if-eqz v8, :cond_15

    .line 749
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 750
    invoke-virtual {v8, p3, v9}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 744
    .end local v2           #_arg1:Landroid/os/Bundle;
    .end local v8           #_result:Landroid/os/Bundle;
    :cond_14
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/os/Bundle;
    goto :goto_7

    .line 753
    .restart local v8       #_result:Landroid/os/Bundle;
    :cond_15
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 759
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Landroid/os/Bundle;
    .end local v8           #_result:Landroid/os/Bundle;
    :sswitch_44
    const-string v10, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 761
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 763
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_16

    .line 764
    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 769
    .restart local v2       #_arg1:Landroid/os/Bundle;
    :goto_8
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->generalSetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    .line 770
    .restart local v8       #_result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 771
    if-eqz v8, :cond_17

    .line 772
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 773
    invoke-virtual {v8, p3, v9}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 767
    .end local v2           #_arg1:Landroid/os/Bundle;
    .end local v8           #_result:Landroid/os/Bundle;
    :cond_16
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/os/Bundle;
    goto :goto_8

    .line 776
    .restart local v8       #_result:Landroid/os/Bundle;
    :cond_17
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 782
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Landroid/os/Bundle;
    .end local v8           #_result:Landroid/os/Bundle;
    :sswitch_45
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 784
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 786
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 787
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->sendAT_PushMail(II)V

    .line 788
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 793
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_46
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 795
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 796
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->enablePS_W2G_Handover(I)V

    .line 797
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 802
    .end local v1           #_arg0:I
    :sswitch_47
    const-string v0, "com.android.internal.telephony.IHtcTelephonyInternal"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 803
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->getDrxInfo()[I

    move-result-object v8

    .line 804
    .local v8, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 805
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 42
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
