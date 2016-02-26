.class public Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static CommonIMEIPos:[I

.field public static IMEIPos:[I

.field public static IMSISimPos:[I

.field public static dualSimIMEISolutionNum:[I

.field public static dualSimIMSISolutionNum:[I

.field public static isHasShortcutUri:Z

.field public static isSupportDeleteContactGroup:Z

.field public static isSupportDualSimIMEI:Z

.field public static isSupportDualSimIMSI:Z

.field public static isSupportInsertContactGroup:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 10
    sput-boolean v1, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isHasShortcutUri:Z

    .line 13
    sput-boolean v1, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportInsertContactGroup:Z

    .line 16
    sput-boolean v1, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDeleteContactGroup:Z

    .line 18
    sput-boolean v1, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    .line 20
    new-array v0, v2, [I

    sput-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMSISolutionNum:[I

    .line 23
    sput-boolean v1, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMEI:Z

    .line 25
    new-array v0, v2, [I

    sput-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->dualSimIMEISolutionNum:[I

    .line 28
    new-array v0, v2, [I

    fill-array-data v0, :array_158

    sput-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->IMSISimPos:[I

    .line 31
    new-array v0, v2, [I

    fill-array-data v0, :array_160

    sput-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->IMEIPos:[I

    .line 34
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_168

    sput-object v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->CommonIMEIPos:[I

    .line 38
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 39
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 41
    const-string v2, "htc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_46

    .line 42
    invoke-static {}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->getInstance()Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->updateHtcConfig(Ljava/lang/String;)V

    .line 93
    :cond_45
    :goto_45
    return-void

    .line 44
    :cond_46
    const-string v2, "samsung"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_56

    const-string v2, "samsng"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_5e

    .line 46
    :cond_56
    invoke-static {}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->getInstance()Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->updateSamSungConfig(Ljava/lang/String;)V

    goto :goto_45

    .line 48
    :cond_5e
    const-string v2, "motorola"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_6e

    .line 49
    invoke-static {}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->getInstance()Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->updateMotorolaConfig(Ljava/lang/String;)V

    goto :goto_45

    .line 51
    :cond_6e
    const-string v2, "huawei"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_7e

    .line 52
    invoke-static {}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->getInstance()Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->updateHuaWeiConfig(Ljava/lang/String;)V

    goto :goto_45

    .line 54
    :cond_7e
    const-string v2, "hisense"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_8e

    .line 55
    invoke-static {}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->getInstance()Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->updateHisenseConfig(Ljava/lang/String;)V

    goto :goto_45

    .line 57
    :cond_8e
    const-string v2, "xiaomi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_9e

    .line 58
    invoke-static {}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->getInstance()Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->updateXiaomiConfig(Ljava/lang/String;)V

    goto :goto_45

    .line 60
    :cond_9e
    const-string v2, "zte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_ae

    .line 61
    invoke-static {}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->getInstance()Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->updateZteConfig(Ljava/lang/String;)V

    goto :goto_45

    .line 63
    :cond_ae
    const-string v2, "meizu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_be

    .line 64
    invoke-static {}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->getInstance()Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->updateMeizuConfig(Ljava/lang/String;)V

    goto :goto_45

    .line 66
    :cond_be
    const-string v2, "alps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_cf

    .line 67
    invoke-static {}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->getInstance()Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->updateAlpsConfig(Ljava/lang/String;)V

    goto/16 :goto_45

    .line 69
    :cond_cf
    const-string v2, "oppo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_e0

    .line 70
    invoke-static {}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->getInstance()Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->updateOppoConfig(Ljava/lang/String;)V

    goto/16 :goto_45

    .line 72
    :cond_e0
    const-string v2, "k-touch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_f1

    .line 73
    invoke-static {}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->getInstance()Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->updateK_TouchConfig(Ljava/lang/String;)V

    goto/16 :goto_45

    .line 75
    :cond_f1
    const-string v2, "yulong"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_102

    .line 76
    invoke-static {}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->getInstance()Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->updateYulongConfig(Ljava/lang/String;)V

    goto/16 :goto_45

    .line 78
    :cond_102
    const-string v2, "coolpad"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_113

    .line 79
    invoke-static {}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->getInstance()Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->updateCoolpadConfig(Ljava/lang/String;)V

    goto/16 :goto_45

    .line 81
    :cond_113
    const-string v2, "lenovo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_124

    .line 82
    invoke-static {}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->getInstance()Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->updateLenovoConfig(Ljava/lang/String;)V

    goto/16 :goto_45

    .line 84
    :cond_124
    const-string v2, "bbk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_135

    .line 85
    invoke-static {}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->getInstance()Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->updateBBKConfig(Ljava/lang/String;)V

    goto/16 :goto_45

    .line 87
    :cond_135
    const-string v2, "gionee"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_146

    .line 88
    invoke-static {}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->getInstance()Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->updateGioneeConfig(Ljava/lang/String;)V

    goto/16 :goto_45

    .line 90
    :cond_146
    const-string v2, "sony ericsson"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_45

    .line 91
    invoke-static {}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->getInstance()Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/tmassistantbase/kapalai/MobileModelConfig;->updateSonyConfig(Ljava/lang/String;)V

    goto/16 :goto_45

    .line 28
    nop

    :array_158
    .array-data 4
        -0x1
        0x1
    .end array-data

    .line 31
    :array_160
    .array-data 4
        -0x1
        0x1
    .end array-data

    .line 34
    :array_168
    .array-data 4
        -0x1
        0x0
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
