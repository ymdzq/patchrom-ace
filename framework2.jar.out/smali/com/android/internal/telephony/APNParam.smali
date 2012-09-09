.class public Lcom/android/internal/telephony/APNParam;
.super Ljava/lang/Object;
.source "APNParam.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/APNParam$ClassId;,
        Lcom/android/internal/telephony/APNParam$RatType;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "APNParam"

.field static classIdMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/APNParam$ClassId;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static pdnLabelMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/APNParam$ClassId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public authType:I

.field public class_id:I

.field public id:I

.field public name:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public pdn_label:Ljava/lang/String;

.field public rat:I

.field public state:I

.field public timer:I

.field public type:I

.field public user:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 54
    sput-object v4, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    .line 55
    sput-object v4, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    .line 77
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 81
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    .line 82
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    .line 83
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_LTE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "ota"

    sget-object v3, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_ADMIN:Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "internet"

    sget-object v3, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "pam"

    sget-object v3, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_TETHERING:Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_ADMIN:Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v3, "ota"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v3, "internet"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_TETHERING:Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v3, "pam"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .local v0, e:Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 92
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "1"

    sget-object v3, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_IMS:Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "2"

    sget-object v3, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_ADMIN:Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "3"

    sget-object v3, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "4"

    sget-object v3, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_APP:Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "5"

    sget-object v3, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_CUSTOMIZE1:Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_IMS:Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_ADMIN:Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v3, "2"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v3, "3"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_APP:Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v3, "4"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_CUSTOMIZE1:Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v3, "5"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 128
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "APNParam"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create Mapping failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    sput-object v4, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    .line 130
    sput-object v4, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 105
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x75

    if-ne v1, v2, :cond_3

    .line 107
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "1"

    sget-object v3, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_IMS:Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "3"

    sget-object v3, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "4"

    sget-object v3, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_ADMIN:Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_IMS:Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v3, "3"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_ADMIN:Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v3, "4"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 115
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "ims"

    sget-object v3, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_IMS:Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "internet"

    sget-object v3, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "admin"

    sget-object v3, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_ADMIN:Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_IMS:Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v3, "ims"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v3, "internet"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_ADMIN:Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v3, "admin"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 136
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput v1, p0, Lcom/android/internal/telephony/APNParam;->id:I

    .line 138
    iput-object v2, p0, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    .line 139
    iput-object v2, p0, Lcom/android/internal/telephony/APNParam;->name:Ljava/lang/String;

    .line 140
    iput v1, p0, Lcom/android/internal/telephony/APNParam;->type:I

    .line 141
    iput v1, p0, Lcom/android/internal/telephony/APNParam;->state:I

    .line 142
    iput v1, p0, Lcom/android/internal/telephony/APNParam;->timer:I

    .line 143
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/APNParam;->rat:I

    .line 144
    iput-object v2, p0, Lcom/android/internal/telephony/APNParam;->user:Ljava/lang/String;

    .line 145
    iput-object v2, p0, Lcom/android/internal/telephony/APNParam;->password:Ljava/lang/String;

    .line 146
    iput v1, p0, Lcom/android/internal/telephony/APNParam;->authType:I

    .line 147
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;III)V
    .locals 2
    .parameter "n_id"
    .parameter "n_class"
    .parameter "n_name"
    .parameter "n_type"
    .parameter "n_state"
    .parameter "n_timer"

    .prologue
    .line 229
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 230
    const-string v0, "APNParam"

    const-string v1, "[FIXME] Dummy APNParam ctor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;III)V
    .locals 0
    .parameter "n_id"
    .parameter "n_pdn_label"
    .parameter "n_name"
    .parameter "n_type"
    .parameter "n_state"
    .parameter "n_timer"

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/android/internal/telephony/APNParam;-><init>()V

    .line 161
    iput p1, p0, Lcom/android/internal/telephony/APNParam;->id:I

    .line 162
    iput-object p2, p0, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    .line 163
    iput-object p3, p0, Lcom/android/internal/telephony/APNParam;->name:Ljava/lang/String;

    .line 164
    iput p4, p0, Lcom/android/internal/telephony/APNParam;->type:I

    .line 165
    iput p5, p0, Lcom/android/internal/telephony/APNParam;->state:I

    .line 166
    iput p6, p0, Lcom/android/internal/telephony/APNParam;->timer:I

    .line 167
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "n_id"
    .parameter "n_pdn_label"
    .parameter "n_name"
    .parameter "n_type"
    .parameter "n_state"
    .parameter "n_timer"
    .parameter "n_rat"
    .parameter "n_user"
    .parameter "n_pass"
    .parameter "n_auth_type"

    .prologue
    .line 151
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/APNParam;-><init>(ILjava/lang/String;Ljava/lang/String;III)V

    .line 152
    iput p7, p0, Lcom/android/internal/telephony/APNParam;->rat:I

    .line 153
    iput-object p8, p0, Lcom/android/internal/telephony/APNParam;->user:Ljava/lang/String;

    .line 154
    iput-object p9, p0, Lcom/android/internal/telephony/APNParam;->password:Ljava/lang/String;

    .line 155
    iput p10, p0, Lcom/android/internal/telephony/APNParam;->authType:I

    .line 156
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "pdn_label"
    .parameter "rat"

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/android/internal/telephony/APNParam;-><init>()V

    .line 173
    iput-object p1, p0, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    .line 174
    iput p2, p0, Lcom/android/internal/telephony/APNParam;->rat:I

    .line 175
    return-void
.end method

.method public static ClassIdToPdnLabel(Lcom/android/internal/telephony/APNParam$ClassId;)Ljava/lang/String;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 196
    sget-object v0, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 198
    const-string v2, "APNParam"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClassIdToPdnLabel: classIdMapping="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v0, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ClassId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 206
    :goto_1
    return-object v0

    .line 198
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 201
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 203
    const-string v0, "APNParam"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClassIdToPdnLabel: cannot find mapping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 204
    goto :goto_1

    .line 206
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public getClassId()Lcom/android/internal/telephony/APNParam$ClassId;
    .locals 3

    .prologue
    .line 180
    sget-object v0, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 182
    :cond_0
    const-string v1, "APNParam"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getClassId: pdnLabelMapping="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " pdn_label="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    sget-object v0, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_NONE:Lcom/android/internal/telephony/APNParam$ClassId;

    .line 190
    :goto_1
    return-object v0

    .line 182
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 185
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 187
    const-string v0, "APNParam"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getClassId: cannot find mapping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    sget-object v0, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_NONE:Lcom/android/internal/telephony/APNParam$ClassId;

    goto :goto_1

    .line 190
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/APNParam$ClassId;

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, sb:Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/internal/telephony/APNParam;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    iget-object v1, p0, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    iget-object v1, p0, Lcom/android/internal/telephony/APNParam;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    iget v1, p0, Lcom/android/internal/telephony/APNParam;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    iget v1, p0, Lcom/android/internal/telephony/APNParam;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    iget v1, p0, Lcom/android/internal/telephony/APNParam;->timer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    iget v1, p0, Lcom/android/internal/telephony/APNParam;->rat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    iget-object v1, p0, Lcom/android/internal/telephony/APNParam;->user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    iget-object v1, p0, Lcom/android/internal/telephony/APNParam;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    iget v1, p0, Lcom/android/internal/telephony/APNParam;->authType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
