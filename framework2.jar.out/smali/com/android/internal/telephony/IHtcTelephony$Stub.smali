.class public abstract Lcom/android/internal/telephony/IHtcTelephony$Stub;
.super Landroid/os/Binder;
.source "IHtcTelephony.java"

# interfaces
.implements Lcom/android/internal/telephony/IHtcTelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IHtcTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IHtcTelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IHtcTelephony"

.field static final TRANSACTION_akaAuthentication:I = 0x26

.field static final TRANSACTION_calculateAkaResponse:I = 0x22

.field static final TRANSACTION_calculateGbaBootstrappingResponse:I = 0x23

.field static final TRANSACTION_calculateNafExternalKey:I = 0x24

.field static final TRANSACTION_checkTestIcc:I = 0x57

.field static final TRANSACTION_closeIccLogicalChannel:I = 0x13

.field static final TRANSACTION_confirmFirstDataRoaming:I = 0x39

.field static final TRANSACTION_dialWithoutDelay:I = 0x3d

.field static final TRANSACTION_disableLocationUpdatesExt:I = 0x87

.field static final TRANSACTION_enableLocationUpdatesExt:I = 0x86

.field static final TRANSACTION_enableMpdp:I = 0x6c

.field static final TRANSACTION_enableRegistrationState_wifi_call:I = 0x82

.field static final TRANSACTION_generalGetter:I = 0x93

.field static final TRANSACTION_generalSetter:I = 0x94

.field static final TRANSACTION_getActiveCallConnectTime:I = 0x47

.field static final TRANSACTION_getActiveCallNumber:I = 0x45

.field static final TRANSACTION_getActivePDPList:I = 0x6d

.field static final TRANSACTION_getActivePhoneType:I = 0x8f

.field static final TRANSACTION_getBackgroundCallNumber:I = 0x46

.field static final TRANSACTION_getCFUNumber:I = 0x4b

.field static final TRANSACTION_getCFUNumberFromOperator:I = 0x4e

.field static final TRANSACTION_getCallStateExt:I = 0x8c

.field static final TRANSACTION_getCardCheckedState:I = 0x92

.field static final TRANSACTION_getCdmaMin:I = 0x34

.field static final TRANSACTION_getCellLocationExt:I = 0x85

.field static final TRANSACTION_getCurrentCallState:I = 0x59

.field static final TRANSACTION_getDataActivityExt:I = 0x8d

.field static final TRANSACTION_getDataStateExt:I = 0x8e

.field static final TRANSACTION_getDetailIccStatus:I = 0x38

.field static final TRANSACTION_getEsn:I = 0x33

.field static final TRANSACTION_getGlobalDataRoamingOption:I = 0x28

.field static final TRANSACTION_getGprsState:I = 0x3a

.field static final TRANSACTION_getGsmNetworkType:I = 0x56

.field static final TRANSACTION_getHtcDeviceId:I = 0x2b

.field static final TRANSACTION_getHtcDeviceSvn:I = 0x2c

.field static final TRANSACTION_getHtcIccSerialNumber:I = 0x2e

.field static final TRANSACTION_getHtcLine1AlphaTag:I = 0x30

.field static final TRANSACTION_getHtcLine1Number:I = 0x2f

.field static final TRANSACTION_getHtcNetworkType:I = 0x62

.field static final TRANSACTION_getHtcServiceStateExt:I = 0x91

.field static final TRANSACTION_getHtcSubscriberId:I = 0x2d

.field static final TRANSACTION_getHtcVoiceMailAlphaTag:I = 0x32

.field static final TRANSACTION_getHtcVoiceMailNumber:I = 0x31

.field static final TRANSACTION_getIncallRecordingFileName:I = 0x4f

.field static final TRANSACTION_getLastError:I = 0x14

.field static final TRANSACTION_getNeighboringCellInfoExt:I = 0x88

.field static final TRANSACTION_getNetworkTypeExt:I = 0x89

.field static final TRANSACTION_getPdnSettings:I = 0x5a

.field static final TRANSACTION_getPdnSettings2:I = 0x5d

.field static final TRANSACTION_getPhoneState:I = 0x7f

.field static final TRANSACTION_getPowerKeyFlag:I = 0x4a

.field static final TRANSACTION_getPreferredNetworkType:I = 0x60

.field static final TRANSACTION_getRejectAllCalls:I = 0x79

.field static final TRANSACTION_getSectorId:I = 0x1c

.field static final TRANSACTION_getServiceState:I = 0x3b

.field static final TRANSACTION_getSubsidyLockTypes:I = 0x36

.field static final TRANSACTION_getUSSDVerificationStatus:I = 0x67

.field static final TRANSACTION_getUSSDVerificationStrings:I = 0x69

.field static final TRANSACTION_getVTLoopBackMode:I = 0x55

.field static final TRANSACTION_getVTSimulatedMode:I = 0x53

.field static final TRANSACTION_getVoiceMessageCountExt:I = 0x8b

.field static final TRANSACTION_hasIccCardExt:I = 0x8a

.field static final TRANSACTION_hasVTCall:I = 0x58

.field static final TRANSACTION_hello_getDeviceId:I = 0x1

.field static final TRANSACTION_htcCdmaEndCall:I = 0x42

.field static final TRANSACTION_htcCdmaExitRadioPowerSaveMode:I = 0x40

.field static final TRANSACTION_htcModemLinkOn:I = 0x41

.field static final TRANSACTION_isCallWaiting:I = 0x4c

.field static final TRANSACTION_isFdnEnabled:I = 0x43

.field static final TRANSACTION_isInService:I = 0x90

.field static final TRANSACTION_isSimPinEnabled:I = 0x83

.field static final TRANSACTION_isUimPinEnabled:I = 0x84

.field static final TRANSACTION_launchCallForwardingSettings:I = 0x7a

.field static final TRANSACTION_notifyKeyEvent:I = 0x7e

.field static final TRANSACTION_notifyScreenBusy:I = 0x7d

.field static final TRANSACTION_openIccLogicalChannel:I = 0x12

.field static final TRANSACTION_performHtcPhoneAction:I = 0x6b

.field static final TRANSACTION_queryCAVE:I = 0x3

.field static final TRANSACTION_queryMD5:I = 0xa

.field static final TRANSACTION_querySSDUpdate:I = 0x5

.field static final TRANSACTION_queryUIMAUTH:I = 0xb

.field static final TRANSACTION_queryVPM:I = 0x8

.field static final TRANSACTION_requestCAVE:I = 0x2

.field static final TRANSACTION_requestCW_UW_DREG:I = 0x75

.field static final TRANSACTION_requestCW_UW_REG:I = 0x74

.field static final TRANSACTION_requestEhrpdDomainNameChangeState:I = 0x64

.field static final TRANSACTION_requestGetBtid:I = 0x20

.field static final TRANSACTION_requestGetDOMAIN:I = 0x16

.field static final TRANSACTION_requestGetEhrpdDeviceCapability:I = 0x66

.field static final TRANSACTION_requestGetEhrpdDisableCapability:I = 0x65

.field static final TRANSACTION_requestGetGID1:I = 0x27

.field static final TRANSACTION_requestGetHasISIM:I = 0x1d

.field static final TRANSACTION_requestGetIMPI:I = 0x15

.field static final TRANSACTION_requestGetIMPU:I = 0x17

.field static final TRANSACTION_requestGetIMSI:I = 0x19

.field static final TRANSACTION_requestGetIsGBASupported:I = 0x1e

.field static final TRANSACTION_requestGetKeyLifetime:I = 0x21

.field static final TRANSACTION_requestGetMobileNumber:I = 0x1a

.field static final TRANSACTION_requestGetPCSCF:I = 0x18

.field static final TRANSACTION_requestGetPCSCFAddress:I = 0xf

.field static final TRANSACTION_requestGetRand:I = 0x1f

.field static final TRANSACTION_requestGetSIMType:I = 0x7b

.field static final TRANSACTION_requestGetVolteSipRegFailure:I = 0xe

.field static final TRANSACTION_requestISIMRead:I = 0x70

.field static final TRANSACTION_requestImsAkaAuthentication:I = 0x1b

.field static final TRANSACTION_requestLtePermanentlyDetached:I = 0x76

.field static final TRANSACTION_requestMD5:I = 0x9

.field static final TRANSACTION_requestQueryISIMSupported:I = 0x6f

.field static final TRANSACTION_requestResetWSIMState:I = 0x72

.field static final TRANSACTION_requestSSDUpdate:I = 0x4

.field static final TRANSACTION_requestSSDUpdateConfirm:I = 0x6

.field static final TRANSACTION_requestSetEhrpdDisableCapability:I = 0x63

.field static final TRANSACTION_requestSetFastDormancy:I = 0x77

.field static final TRANSACTION_requestSetISIMAUTH:I = 0x71

.field static final TRANSACTION_requestSetLBSNTFY:I = 0x73

.field static final TRANSACTION_requestSetMultiRABTrafficThrottling:I = 0x2a

.field static final TRANSACTION_requestVPM:I = 0x7

.field static final TRANSACTION_resetPdnForSettingsChange:I = 0x5c

.field static final TRANSACTION_resetPdnForSettingsChange2:I = 0x5f

.field static final TRANSACTION_sendAT_BRIC:I = 0x3c

.field static final TRANSACTION_sendAT_PushMail:I = 0x3f

.field static final TRANSACTION_sendAllowedCSIMCommand:I = 0x44

.field static final TRANSACTION_sendCmmbAuth3GReq:I = 0x50

.field static final TRANSACTION_sendCmmbAuthGSMReq:I = 0x51

.field static final TRANSACTION_sendLanguageChange:I = 0x6e

.field static final TRANSACTION_setCFUNumber:I = 0x4d

.field static final TRANSACTION_setDataEnabled:I = 0x7c

.field static final TRANSACTION_setGbaBootstrappingParams:I = 0x25

.field static final TRANSACTION_setGlobalDataRoamingOption:I = 0x29

.field static final TRANSACTION_setPdnSettings:I = 0x5b

.field static final TRANSACTION_setPdnSettings2:I = 0x5e

.field static final TRANSACTION_setPowerKeyFlag:I = 0x49

.field static final TRANSACTION_setPreferredNetworkType:I = 0x61

.field static final TRANSACTION_setPreferredNetworkType_wifi_call:I = 0x81

.field static final TRANSACTION_setRejectAllCalls:I = 0x78

.field static final TRANSACTION_setTimeZone:I = 0x3e

.field static final TRANSACTION_setUSSDVerificationStatus:I = 0x68

.field static final TRANSACTION_setUSSDVerificationStrings:I = 0x6a

.field static final TRANSACTION_setVTLoopBackMode:I = 0x54

.field static final TRANSACTION_setVTSimulatedMode:I = 0x52

.field static final TRANSACTION_showIncallScreen:I = 0x80

.field static final TRANSACTION_supplySubsidyLockPin:I = 0x37

.field static final TRANSACTION_switchHoldAndActiveCall:I = 0x48

.field static final TRANSACTION_transmitIccBasicChannel:I = 0x11

.field static final TRANSACTION_transmitIccLogicalChannel:I = 0x10

.field static final TRANSACTION_unBlockPin:I = 0x35

.field static final TRANSACTION_updateRegDregState:I = 0xc

.field static final TRANSACTION_updateSipInviteState:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IHtcTelephony;
    .locals 2
    .parameter "obj"

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "com.android.internal.telephony.IHtcTelephony"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/IHtcTelephony;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/android/internal/telephony/IHtcTelephony;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/IHtcTelephony$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 1499
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 47
    :sswitch_0
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x1

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->hello_getDeviceId()Ljava/lang/String;

    move-result-object v8

    .line 54
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x1

    goto :goto_0

    .line 60
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_2
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestCAVE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 64
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x1

    goto :goto_0

    .line 70
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_3
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->queryCAVE()I

    move-result v8

    .line 72
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    const/4 v0, 0x1

    goto :goto_0

    .line 78
    .end local v8           #_result:I
    :sswitch_4
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 81
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestSSDUpdate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 82
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x1

    goto :goto_0

    .line 88
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_5
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->querySSDUpdate()I

    move-result v8

    .line 90
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    const/4 v0, 0x1

    goto :goto_0

    .line 96
    .end local v8           #_result:I
    :sswitch_6
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 99
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestSSDUpdateConfirm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 100
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    const/4 v0, 0x1

    goto :goto_0

    .line 106
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_7
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestVPM()Ljava/lang/String;

    move-result-object v8

    .line 108
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 114
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_8
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->queryVPM()I

    move-result v8

    .line 116
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 122
    .end local v8           #_result:I
    :sswitch_9
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 126
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 130
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 136
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_a
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->queryMD5()I

    move-result v8

    .line 138
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 144
    .end local v8           #_result:I
    :sswitch_b
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->queryUIMAUTH()I

    move-result v8

    .line 146
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 152
    .end local v8           #_result:I
    :sswitch_c
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 156
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 157
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->updateRegDregState(II)V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 163
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_d
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 167
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 171
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 172
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->updateSipInviteState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 178
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    :sswitch_e
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetVolteSipRegFailure()I

    move-result v8

    .line 180
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 186
    .end local v8           #_result:I
    :sswitch_f
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetPCSCFAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 190
    .local v8, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 192
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 196
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:[Ljava/lang/String;
    :sswitch_10
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 200
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 202
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 204
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 206
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 208
    .local v5, _arg4:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 210
    .local v6, _arg5:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, _arg6:Ljava/lang/String;
    move-object v0, p0

    .line 211
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->transmitIccLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 212
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 218
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:I
    .end local v6           #_arg5:I
    .end local v7           #_arg6:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_11
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 222
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 224
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 226
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 228
    .restart local v4       #_arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 230
    .restart local v5       #_arg4:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, _arg5:Ljava/lang/String;
    move-object v0, p0

    .line 231
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->transmitIccBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 232
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 234
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 238
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:I
    .end local v6           #_arg5:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_12
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->openIccLogicalChannel(Ljava/lang/String;)I

    move-result v8

    .line 242
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 248
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:I
    :sswitch_13
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 251
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->closeIccLogicalChannel(I)Z

    move-result v8

    .line 252
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    if-eqz v8, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 253
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 258
    .end local v1           #_arg0:I
    .end local v8           #_result:Z
    :sswitch_14
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getLastError()I

    move-result v8

    .line 260
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 266
    .end local v8           #_result:I
    :sswitch_15
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetIMPI()Ljava/lang/String;

    move-result-object v8

    .line 268
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 270
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 274
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_16
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetDOMAIN()Ljava/lang/String;

    move-result-object v8

    .line 276
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 278
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 282
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_17
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetIMPU()[Ljava/lang/String;

    move-result-object v8

    .line 284
    .local v8, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 286
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 290
    .end local v8           #_result:[Ljava/lang/String;
    :sswitch_18
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetPCSCF()Landroid/os/Bundle;

    move-result-object v8

    .line 292
    .local v8, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    if-eqz v8, :cond_1

    .line 294
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 300
    :goto_2
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 298
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 304
    .end local v8           #_result:Landroid/os/Bundle;
    :sswitch_19
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetIMSI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 308
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 310
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 314
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_1a
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 317
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetMobileNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 318
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 320
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 324
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_1b
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 327
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestImsAkaAuthentication(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 328
    .local v8, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    if-eqz v8, :cond_2

    .line 330
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 336
    :goto_3
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 334
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 340
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Landroid/os/Bundle;
    :sswitch_1c
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 343
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getSectorId(I)Ljava/lang/String;

    move-result-object v8

    .line 344
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 346
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 350
    .end local v1           #_arg0:I
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_1d
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetHasISIM()Z

    move-result v8

    .line 352
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    if-eqz v8, :cond_3

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 353
    :cond_3
    const/4 v0, 0x0

    goto :goto_4

    .line 358
    .end local v8           #_result:Z
    :sswitch_1e
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetIsGBASupported()Z

    move-result v8

    .line 360
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    if-eqz v8, :cond_4

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 361
    :cond_4
    const/4 v0, 0x0

    goto :goto_5

    .line 366
    .end local v8           #_result:Z
    :sswitch_1f
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetRand()[B

    move-result-object v8

    .line 368
    .local v8, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 370
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 374
    .end local v8           #_result:[B
    :sswitch_20
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetBtid()Ljava/lang/String;

    move-result-object v8

    .line 376
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 378
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 382
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_21
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetKeyLifetime()Ljava/lang/String;

    move-result-object v8

    .line 384
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 386
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 390
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_22
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 394
    .local v1, _arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 395
    .local v2, _arg1:[B
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->calculateAkaResponse([B[B)Landroid/os/Bundle;

    move-result-object v8

    .line 396
    .local v8, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    if-eqz v8, :cond_5

    .line 398
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 404
    :goto_6
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 402
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 408
    .end local v1           #_arg0:[B
    .end local v2           #_arg1:[B
    .end local v8           #_result:Landroid/os/Bundle;
    :sswitch_23
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 412
    .restart local v1       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 413
    .restart local v2       #_arg1:[B
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->calculateGbaBootstrappingResponse([B[B)Landroid/os/Bundle;

    move-result-object v8

    .line 414
    .restart local v8       #_result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    if-eqz v8, :cond_6

    .line 416
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 417
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 422
    :goto_7
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 420
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 426
    .end local v1           #_arg0:[B
    .end local v2           #_arg1:[B
    .end local v8           #_result:Landroid/os/Bundle;
    :sswitch_24
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 429
    .restart local v1       #_arg0:[B
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->calculateNafExternalKey([B)[B

    move-result-object v8

    .line 430
    .local v8, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 432
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 436
    .end local v1           #_arg0:[B
    .end local v8           #_result:[B
    :sswitch_25
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 440
    .restart local v1       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 442
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 443
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 449
    .end local v1           #_arg0:[B
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    :sswitch_26
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 453
    .restart local v1       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 454
    .local v2, _arg1:[B
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->akaAuthentication([B[B)Landroid/os/Bundle;

    move-result-object v8

    .line 455
    .local v8, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    if-eqz v8, :cond_7

    .line 457
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 458
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 463
    :goto_8
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 461
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 467
    .end local v1           #_arg0:[B
    .end local v2           #_arg1:[B
    .end local v8           #_result:Landroid/os/Bundle;
    :sswitch_27
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 468
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetGID1()Ljava/lang/String;

    move-result-object v8

    .line 469
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 470
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 471
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 475
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_28
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getGlobalDataRoamingOption()I

    move-result v8

    .line 477
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 483
    .end local v8           #_result:I
    :sswitch_29
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 486
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setGlobalDataRoamingOption(I)V

    .line 487
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 492
    .end local v1           #_arg0:I
    :sswitch_2a
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 496
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 497
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestSetMultiRABTrafficThrottling(II)V

    .line 498
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 499
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 503
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_2b
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 506
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getHtcDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 507
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 508
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 509
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 513
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_2c
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 515
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 516
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getHtcDeviceSvn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 517
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 519
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 523
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_2d
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 526
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getHtcSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 527
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 528
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 529
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 533
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_2e
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 535
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 536
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getHtcIccSerialNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 537
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 539
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 543
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_2f
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 546
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getHtcLine1Number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 547
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 549
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 553
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_30
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 556
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getHtcLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 557
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 559
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 563
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_31
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 566
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getHtcVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 567
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 568
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 569
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 573
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_32
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 575
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 576
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getHtcVoiceMailAlphaTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 577
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 579
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 583
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_33
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 584
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getEsn()Ljava/lang/String;

    move-result-object v8

    .line 585
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 587
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 591
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_34
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 592
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getCdmaMin()Ljava/lang/String;

    move-result-object v8

    .line 593
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 595
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 599
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_35
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 601
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 603
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 604
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->unBlockPin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 605
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 606
    if-eqz v8, :cond_8

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 607
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 606
    :cond_8
    const/4 v0, 0x0

    goto :goto_9

    .line 611
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v8           #_result:Z
    :sswitch_36
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 612
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getSubsidyLockTypes()I

    move-result v8

    .line 613
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 614
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 615
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 619
    .end local v8           #_result:I
    :sswitch_37
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 621
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 623
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 624
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->supplySubsidyLockPin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 625
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 626
    if-eqz v8, :cond_9

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 627
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 626
    :cond_9
    const/4 v0, 0x0

    goto :goto_a

    .line 631
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v8           #_result:Z
    :sswitch_38
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 632
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getDetailIccStatus()[I

    move-result-object v8

    .line 633
    .local v8, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 635
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 639
    .end local v8           #_result:[I
    :sswitch_39
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 640
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->confirmFirstDataRoaming()V

    .line 641
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 642
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 646
    :sswitch_3a
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 647
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getGprsState()I

    move-result v8

    .line 648
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 649
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 650
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 654
    .end local v8           #_result:I
    :sswitch_3b
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 655
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getServiceState()I

    move-result v8

    .line 656
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 657
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 658
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 662
    .end local v8           #_result:I
    :sswitch_3c
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 663
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->sendAT_BRIC()V

    .line 664
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 665
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 669
    :sswitch_3d
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 671
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    .line 672
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 677
    .local v1, _arg0:Landroid/content/Intent;
    :goto_b
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->dialWithoutDelay(Landroid/content/Intent;)Z

    move-result v8

    .line 678
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    if-eqz v8, :cond_b

    const/4 v0, 0x1

    :goto_c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 680
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 675
    .end local v1           #_arg0:Landroid/content/Intent;
    .end local v8           #_result:Z
    :cond_a
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/Intent;
    goto :goto_b

    .line 679
    .restart local v8       #_result:Z
    :cond_b
    const/4 v0, 0x0

    goto :goto_c

    .line 684
    .end local v1           #_arg0:Landroid/content/Intent;
    .end local v8           #_result:Z
    :sswitch_3e
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 686
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    .line 688
    .local v1, _arg0:Z
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 689
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setTimeZone(ZI)V

    .line 690
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 691
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 686
    .end local v1           #_arg0:Z
    .end local v2           #_arg1:I
    :cond_c
    const/4 v1, 0x0

    goto :goto_d

    .line 695
    :sswitch_3f
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 697
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 699
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 700
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->sendAT_PushMail(II)V

    .line 701
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 702
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 706
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_40
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 707
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->htcCdmaExitRadioPowerSaveMode()V

    .line 708
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 709
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 713
    :sswitch_41
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 714
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->htcModemLinkOn()Z

    move-result v8

    .line 715
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 716
    if-eqz v8, :cond_d

    const/4 v0, 0x1

    :goto_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 717
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 716
    :cond_d
    const/4 v0, 0x0

    goto :goto_e

    .line 721
    .end local v8           #_result:Z
    :sswitch_42
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 722
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->htcCdmaEndCall()Z

    move-result v8

    .line 723
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 724
    if-eqz v8, :cond_e

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 725
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 724
    :cond_e
    const/4 v0, 0x0

    goto :goto_f

    .line 729
    .end local v8           #_result:Z
    :sswitch_43
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 730
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->isFdnEnabled()Z

    move-result v8

    .line 731
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 732
    if-eqz v8, :cond_f

    const/4 v0, 0x1

    :goto_10
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 733
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 732
    :cond_f
    const/4 v0, 0x0

    goto :goto_10

    .line 737
    .end local v8           #_result:Z
    :sswitch_44
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 739
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 740
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->sendAllowedCSIMCommand(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 741
    .local v8, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 742
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 743
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 747
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:[Ljava/lang/String;
    :sswitch_45
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 748
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getActiveCallNumber()Ljava/lang/String;

    move-result-object v8

    .line 749
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 750
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 751
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 755
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_46
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 756
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getBackgroundCallNumber()Ljava/lang/String;

    move-result-object v8

    .line 757
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 758
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 759
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 763
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_47
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 764
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getActiveCallConnectTime()J

    move-result-wide v8

    .line 765
    .local v8, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 767
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 771
    .end local v8           #_result:J
    :sswitch_48
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 772
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->switchHoldAndActiveCall()V

    .line 773
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 774
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 778
    :sswitch_49
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 779
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setPowerKeyFlag()V

    .line 780
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 781
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 785
    :sswitch_4a
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 786
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getPowerKeyFlag()Z

    move-result v8

    .line 787
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 788
    if-eqz v8, :cond_10

    const/4 v0, 0x1

    :goto_11
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 789
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 788
    :cond_10
    const/4 v0, 0x0

    goto :goto_11

    .line 793
    .end local v8           #_result:Z
    :sswitch_4b
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 794
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getCFUNumber()Ljava/lang/String;

    move-result-object v8

    .line 795
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 796
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 797
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 801
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_4c
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 802
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->isCallWaiting()Z

    move-result v8

    .line 803
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    if-eqz v8, :cond_11

    const/4 v0, 0x1

    :goto_12
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 805
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 804
    :cond_11
    const/4 v0, 0x0

    goto :goto_12

    .line 809
    .end local v8           #_result:Z
    :sswitch_4d
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 811
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v1, 0x1

    .line 813
    .local v1, _arg0:Z
    :goto_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 814
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setCFUNumber(ZLjava/lang/String;)Z

    move-result v8

    .line 815
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 816
    if-eqz v8, :cond_13

    const/4 v0, 0x1

    :goto_14
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 817
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 811
    .end local v1           #_arg0:Z
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v8           #_result:Z
    :cond_12
    const/4 v1, 0x0

    goto :goto_13

    .line 816
    .restart local v1       #_arg0:Z
    .restart local v2       #_arg1:Ljava/lang/String;
    .restart local v8       #_result:Z
    :cond_13
    const/4 v0, 0x0

    goto :goto_14

    .line 821
    .end local v1           #_arg0:Z
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v8           #_result:Z
    :sswitch_4e
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 822
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getCFUNumberFromOperator()Ljava/lang/String;

    move-result-object v8

    .line 823
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 824
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 825
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 829
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_4f
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 830
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getIncallRecordingFileName()Ljava/lang/String;

    move-result-object v8

    .line 831
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 832
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 833
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 837
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_50
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 839
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 841
    .local v1, _arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 842
    .local v2, _arg1:[B
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->sendCmmbAuth3GReq([B[B)[B

    move-result-object v8

    .line 843
    .local v8, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 844
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 845
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 849
    .end local v1           #_arg0:[B
    .end local v2           #_arg1:[B
    .end local v8           #_result:[B
    :sswitch_51
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 851
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 852
    .restart local v1       #_arg0:[B
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->sendCmmbAuthGSMReq([B)[B

    move-result-object v8

    .line 853
    .restart local v8       #_result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 854
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 855
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 859
    .end local v1           #_arg0:[B
    .end local v8           #_result:[B
    :sswitch_52
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 861
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    const/4 v1, 0x1

    .line 862
    .local v1, _arg0:Z
    :goto_15
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setVTSimulatedMode(Z)V

    .line 863
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 864
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 861
    .end local v1           #_arg0:Z
    :cond_14
    const/4 v1, 0x0

    goto :goto_15

    .line 868
    :sswitch_53
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 869
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getVTSimulatedMode()Z

    move-result v8

    .line 870
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 871
    if-eqz v8, :cond_15

    const/4 v0, 0x1

    :goto_16
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 872
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 871
    :cond_15
    const/4 v0, 0x0

    goto :goto_16

    .line 876
    .end local v8           #_result:Z
    :sswitch_54
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 878
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    const/4 v1, 0x1

    .line 879
    .restart local v1       #_arg0:Z
    :goto_17
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setVTLoopBackMode(Z)V

    .line 880
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 881
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 878
    .end local v1           #_arg0:Z
    :cond_16
    const/4 v1, 0x0

    goto :goto_17

    .line 885
    :sswitch_55
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 886
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getVTLoopBackMode()Z

    move-result v8

    .line 887
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 888
    if-eqz v8, :cond_17

    const/4 v0, 0x1

    :goto_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 889
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 888
    :cond_17
    const/4 v0, 0x0

    goto :goto_18

    .line 893
    .end local v8           #_result:Z
    :sswitch_56
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 894
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getGsmNetworkType()Ljava/lang/String;

    move-result-object v8

    .line 895
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 896
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 897
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 901
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_57
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 902
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->checkTestIcc()Z

    move-result v8

    .line 903
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 904
    if-eqz v8, :cond_18

    const/4 v0, 0x1

    :goto_19
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 905
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 904
    :cond_18
    const/4 v0, 0x0

    goto :goto_19

    .line 909
    .end local v8           #_result:Z
    :sswitch_58
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 910
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->hasVTCall()Z

    move-result v8

    .line 911
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 912
    if-eqz v8, :cond_19

    const/4 v0, 0x1

    :goto_1a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 913
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 912
    :cond_19
    const/4 v0, 0x0

    goto :goto_1a

    .line 917
    .end local v8           #_result:Z
    :sswitch_59
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 918
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getCurrentCallState()I

    move-result v8

    .line 919
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 920
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 921
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 925
    .end local v8           #_result:I
    :sswitch_5a
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 927
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 928
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getPdnSettings(I)Ljava/lang/String;

    move-result-object v8

    .line 929
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 930
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 931
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 935
    .end local v1           #_arg0:I
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_5b
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 937
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 939
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 940
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setPdnSettings(ILjava/lang/String;)V

    .line 941
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 942
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 946
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_5c
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 947
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->resetPdnForSettingsChange()V

    .line 948
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 949
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 953
    :sswitch_5d
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 955
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 956
    .local v1, _arg0:[Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getPdnSettings2([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 957
    .local v8, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 958
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 959
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 963
    .end local v1           #_arg0:[Ljava/lang/String;
    .end local v8           #_result:[Ljava/lang/String;
    :sswitch_5e
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 965
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 966
    .restart local v1       #_arg0:[Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setPdnSettings2([Ljava/lang/String;)V

    .line 967
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 968
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 972
    .end local v1           #_arg0:[Ljava/lang/String;
    :sswitch_5f
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 973
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->resetPdnForSettingsChange2()V

    .line 974
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 975
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 979
    :sswitch_60
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 980
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getPreferredNetworkType()I

    move-result v8

    .line 981
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 982
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 983
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 987
    .end local v8           #_result:I
    :sswitch_61
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 989
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 990
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setPreferredNetworkType(I)V

    .line 991
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 992
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 996
    .end local v1           #_arg0:I
    :sswitch_62
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 998
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 999
    .local v1, _arg0:[Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getHtcNetworkType([Ljava/lang/String;)I

    move-result v8

    .line 1000
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1001
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1002
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1006
    .end local v1           #_arg0:[Ljava/lang/String;
    .end local v8           #_result:I
    :sswitch_63
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1008
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1009
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestSetEhrpdDisableCapability(I)V

    .line 1010
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1011
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1015
    .end local v1           #_arg0:I
    :sswitch_64
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1016
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestEhrpdDomainNameChangeState()I

    move-result v8

    .line 1017
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1018
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1019
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1023
    .end local v8           #_result:I
    :sswitch_65
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1024
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetEhrpdDisableCapability()I

    move-result v8

    .line 1025
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1026
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1027
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1031
    .end local v8           #_result:I
    :sswitch_66
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1032
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetEhrpdDeviceCapability()I

    move-result v8

    .line 1033
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1034
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1035
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1039
    .end local v8           #_result:I
    :sswitch_67
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1040
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getUSSDVerificationStatus()Ljava/lang/String;

    move-result-object v8

    .line 1041
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1042
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1043
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1047
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_68
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1049
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1050
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setUSSDVerificationStatus(Ljava/lang/String;)V

    .line 1051
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1052
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1056
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_69
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1057
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getUSSDVerificationStrings()[Ljava/lang/String;

    move-result-object v8

    .line 1058
    .local v8, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1059
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1060
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1064
    .end local v8           #_result:[Ljava/lang/String;
    :sswitch_6a
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1066
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1068
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1070
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1071
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setUSSDVerificationStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1073
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1077
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    :sswitch_6b
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1079
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1080
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->performHtcPhoneAction(I)V

    .line 1081
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1082
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1086
    .end local v1           #_arg0:I
    :sswitch_6c
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1088
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v1, 0x1

    .line 1089
    .local v1, _arg0:Z
    :goto_1b
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->enableMpdp(Z)V

    .line 1090
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1091
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1088
    .end local v1           #_arg0:Z
    :cond_1a
    const/4 v1, 0x0

    goto :goto_1b

    .line 1095
    :sswitch_6d
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1096
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getActivePDPList()[Ljava/lang/String;

    move-result-object v8

    .line 1097
    .restart local v8       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1098
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1099
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1103
    .end local v8           #_result:[Ljava/lang/String;
    :sswitch_6e
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1106
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->sendLanguageChange(I)V

    .line 1107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1108
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1112
    .end local v1           #_arg0:I
    :sswitch_6f
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1113
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestQueryISIMSupported()Z

    move-result v8

    .line 1114
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1115
    if-eqz v8, :cond_1b

    const/4 v0, 0x1

    :goto_1c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1116
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1115
    :cond_1b
    const/4 v0, 0x0

    goto :goto_1c

    .line 1120
    .end local v8           #_result:Z
    :sswitch_70
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1124
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1126
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1128
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1130
    .restart local v4       #_arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5       #_arg4:I
    move-object v0, p0

    .line 1131
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestISIMRead(IIIII)Ljava/lang/String;

    move-result-object v8

    .line 1132
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1133
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1134
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1138
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:I
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_71
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1140
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1141
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestSetISIMAUTH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1142
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1143
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1144
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1148
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_72
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1149
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestResetWSIMState()Z

    move-result v8

    .line 1150
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1151
    if-eqz v8, :cond_1c

    const/4 v0, 0x1

    :goto_1d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1152
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1151
    :cond_1c
    const/4 v0, 0x0

    goto :goto_1d

    .line 1156
    .end local v8           #_result:Z
    :sswitch_73
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1159
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestSetLBSNTFY(I)V

    .line 1160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1161
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1165
    .end local v1           #_arg0:I
    :sswitch_74
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1166
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestCW_UW_REG()V

    .line 1167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1168
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1172
    :sswitch_75
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1173
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestCW_UW_DREG()V

    .line 1174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1175
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1179
    :sswitch_76
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1180
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestLtePermanentlyDetached()Z

    move-result v8

    .line 1181
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1182
    if-eqz v8, :cond_1d

    const/4 v0, 0x1

    :goto_1e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1183
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1182
    :cond_1d
    const/4 v0, 0x0

    goto :goto_1e

    .line 1187
    .end local v8           #_result:Z
    :sswitch_77
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1189
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1191
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1192
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestSetFastDormancy(II)V

    .line 1193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1194
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1198
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_78
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v1, 0x1

    .line 1201
    .local v1, _arg0:Z
    :goto_1f
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setRejectAllCalls(Z)V

    .line 1202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1203
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1200
    .end local v1           #_arg0:Z
    :cond_1e
    const/4 v1, 0x0

    goto :goto_1f

    .line 1207
    :sswitch_79
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1208
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getRejectAllCalls()Z

    move-result v8

    .line 1209
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1210
    if-eqz v8, :cond_1f

    const/4 v0, 0x1

    :goto_20
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1211
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1210
    :cond_1f
    const/4 v0, 0x0

    goto :goto_20

    .line 1215
    .end local v8           #_result:Z
    :sswitch_7a
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1216
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->launchCallForwardingSettings()V

    .line 1217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1218
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1222
    :sswitch_7b
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1223
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->requestGetSIMType()I

    move-result v8

    .line 1224
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1225
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1226
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1230
    .end local v8           #_result:I
    :sswitch_7c
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1232
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_20

    const/4 v1, 0x1

    .line 1233
    .restart local v1       #_arg0:Z
    :goto_21
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setDataEnabled(Z)Z

    move-result v8

    .line 1234
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1235
    if-eqz v8, :cond_21

    const/4 v0, 0x1

    :goto_22
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1236
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1232
    .end local v1           #_arg0:Z
    .end local v8           #_result:Z
    :cond_20
    const/4 v1, 0x0

    goto :goto_21

    .line 1235
    .restart local v1       #_arg0:Z
    .restart local v8       #_result:Z
    :cond_21
    const/4 v0, 0x0

    goto :goto_22

    .line 1240
    .end local v1           #_arg0:Z
    .end local v8           #_result:Z
    :sswitch_7d
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1242
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_22

    const/4 v1, 0x1

    .line 1243
    .restart local v1       #_arg0:Z
    :goto_23
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->notifyScreenBusy(Z)V

    .line 1244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1245
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1242
    .end local v1           #_arg0:Z
    :cond_22
    const/4 v1, 0x0

    goto :goto_23

    .line 1249
    :sswitch_7e
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1251
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1252
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->notifyKeyEvent(I)V

    .line 1253
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1254
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1258
    .end local v1           #_arg0:I
    :sswitch_7f
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1259
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getPhoneState()Landroid/os/Bundle;

    move-result-object v8

    .line 1260
    .local v8, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1261
    if-eqz v8, :cond_23

    .line 1262
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1263
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1268
    :goto_24
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1266
    :cond_23
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_24

    .line 1272
    .end local v8           #_result:Landroid/os/Bundle;
    :sswitch_80
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1273
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->showIncallScreen()V

    .line 1274
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1275
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1279
    :sswitch_81
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1281
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1282
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->setPreferredNetworkType_wifi_call(I)Z

    move-result v8

    .line 1283
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1284
    if-eqz v8, :cond_24

    const/4 v0, 0x1

    :goto_25
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1285
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1284
    :cond_24
    const/4 v0, 0x0

    goto :goto_25

    .line 1289
    .end local v1           #_arg0:I
    .end local v8           #_result:Z
    :sswitch_82
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1291
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_25

    const/4 v1, 0x1

    .line 1292
    .local v1, _arg0:Z
    :goto_26
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->enableRegistrationState_wifi_call(Z)V

    .line 1293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1294
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1291
    .end local v1           #_arg0:Z
    :cond_25
    const/4 v1, 0x0

    goto :goto_26

    .line 1298
    :sswitch_83
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1299
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->isSimPinEnabled()Z

    move-result v8

    .line 1300
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1301
    if-eqz v8, :cond_26

    const/4 v0, 0x1

    :goto_27
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1302
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1301
    :cond_26
    const/4 v0, 0x0

    goto :goto_27

    .line 1306
    .end local v8           #_result:Z
    :sswitch_84
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1307
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->isUimPinEnabled()Z

    move-result v8

    .line 1308
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1309
    if-eqz v8, :cond_27

    const/4 v0, 0x1

    :goto_28
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1310
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1309
    :cond_27
    const/4 v0, 0x0

    goto :goto_28

    .line 1314
    .end local v8           #_result:Z
    :sswitch_85
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1316
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1317
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getCellLocationExt(I)Landroid/os/Bundle;

    move-result-object v8

    .line 1318
    .local v8, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1319
    if-eqz v8, :cond_28

    .line 1320
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1321
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1326
    :goto_29
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1324
    :cond_28
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_29

    .line 1330
    .end local v1           #_arg0:I
    .end local v8           #_result:Landroid/os/Bundle;
    :sswitch_86
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1332
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1333
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->enableLocationUpdatesExt(I)V

    .line 1334
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1335
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1339
    .end local v1           #_arg0:I
    :sswitch_87
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1341
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1342
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->disableLocationUpdatesExt(I)V

    .line 1343
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1344
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1348
    .end local v1           #_arg0:I
    :sswitch_88
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1350
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1351
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getNeighboringCellInfoExt(I)Ljava/util/List;

    move-result-object v10

    .line 1352
    .local v10, _result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1353
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1354
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1358
    .end local v1           #_arg0:I
    .end local v10           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :sswitch_89
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1360
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1361
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getNetworkTypeExt(I)I

    move-result v8

    .line 1362
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1363
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1364
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1368
    .end local v1           #_arg0:I
    .end local v8           #_result:I
    :sswitch_8a
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1370
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1371
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->hasIccCardExt(I)Z

    move-result v8

    .line 1372
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1373
    if-eqz v8, :cond_29

    const/4 v0, 0x1

    :goto_2a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1374
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1373
    :cond_29
    const/4 v0, 0x0

    goto :goto_2a

    .line 1378
    .end local v1           #_arg0:I
    .end local v8           #_result:Z
    :sswitch_8b
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1380
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1381
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getVoiceMessageCountExt(I)I

    move-result v8

    .line 1382
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1383
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1384
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1388
    .end local v1           #_arg0:I
    .end local v8           #_result:I
    :sswitch_8c
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1390
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1391
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getCallStateExt(I)I

    move-result v8

    .line 1392
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1393
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1394
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1398
    .end local v1           #_arg0:I
    .end local v8           #_result:I
    :sswitch_8d
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1400
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1401
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getDataActivityExt(I)I

    move-result v8

    .line 1402
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1403
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1404
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1408
    .end local v1           #_arg0:I
    .end local v8           #_result:I
    :sswitch_8e
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1410
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1411
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getDataStateExt(I)I

    move-result v8

    .line 1412
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1413
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1414
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1418
    .end local v1           #_arg0:I
    .end local v8           #_result:I
    :sswitch_8f
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1419
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getActivePhoneType()I

    move-result v8

    .line 1420
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1421
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1422
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1426
    .end local v8           #_result:I
    :sswitch_90
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1428
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1429
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->isInService(I)Z

    move-result v8

    .line 1430
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1431
    if-eqz v8, :cond_2a

    const/4 v0, 0x1

    :goto_2b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1432
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1431
    :cond_2a
    const/4 v0, 0x0

    goto :goto_2b

    .line 1436
    .end local v1           #_arg0:I
    .end local v8           #_result:Z
    :sswitch_91
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1438
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1439
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getHtcServiceStateExt(I)I

    move-result v8

    .line 1440
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1441
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1442
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1446
    .end local v1           #_arg0:I
    .end local v8           #_result:I
    :sswitch_92
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1447
    invoke-virtual {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->getCardCheckedState()I

    move-result v8

    .line 1448
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1449
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1450
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1454
    .end local v8           #_result:I
    :sswitch_93
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1456
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1458
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2b

    .line 1459
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1464
    .local v2, _arg1:Landroid/os/Bundle;
    :goto_2c
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    .line 1465
    .local v8, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1466
    if-eqz v8, :cond_2c

    .line 1467
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1468
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1473
    :goto_2d
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1462
    .end local v2           #_arg1:Landroid/os/Bundle;
    .end local v8           #_result:Landroid/os/Bundle;
    :cond_2b
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/os/Bundle;
    goto :goto_2c

    .line 1471
    .restart local v8       #_result:Landroid/os/Bundle;
    :cond_2c
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2d

    .line 1477
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Landroid/os/Bundle;
    .end local v8           #_result:Landroid/os/Bundle;
    :sswitch_94
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1479
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1481
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2d

    .line 1482
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1487
    .restart local v2       #_arg1:Landroid/os/Bundle;
    :goto_2e
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->generalSetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    .line 1488
    .restart local v8       #_result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1489
    if-eqz v8, :cond_2e

    .line 1490
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1491
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1496
    :goto_2f
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1485
    .end local v2           #_arg1:Landroid/os/Bundle;
    .end local v8           #_result:Landroid/os/Bundle;
    :cond_2d
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/os/Bundle;
    goto :goto_2e

    .line 1494
    .restart local v8       #_result:Landroid/os/Bundle;
    :cond_2e
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2f

    .line 43
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
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_70
        0x71 -> :sswitch_71
        0x72 -> :sswitch_72
        0x73 -> :sswitch_73
        0x74 -> :sswitch_74
        0x75 -> :sswitch_75
        0x76 -> :sswitch_76
        0x77 -> :sswitch_77
        0x78 -> :sswitch_78
        0x79 -> :sswitch_79
        0x7a -> :sswitch_7a
        0x7b -> :sswitch_7b
        0x7c -> :sswitch_7c
        0x7d -> :sswitch_7d
        0x7e -> :sswitch_7e
        0x7f -> :sswitch_7f
        0x80 -> :sswitch_80
        0x81 -> :sswitch_81
        0x82 -> :sswitch_82
        0x83 -> :sswitch_83
        0x84 -> :sswitch_84
        0x85 -> :sswitch_85
        0x86 -> :sswitch_86
        0x87 -> :sswitch_87
        0x88 -> :sswitch_88
        0x89 -> :sswitch_89
        0x8a -> :sswitch_8a
        0x8b -> :sswitch_8b
        0x8c -> :sswitch_8c
        0x8d -> :sswitch_8d
        0x8e -> :sswitch_8e
        0x8f -> :sswitch_8f
        0x90 -> :sswitch_90
        0x91 -> :sswitch_91
        0x92 -> :sswitch_92
        0x93 -> :sswitch_93
        0x94 -> :sswitch_94
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
