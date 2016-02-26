.class public Lcom/qbao/sdk/a/f;
.super Ljava/lang/Object;
.source "SdkLib.java"


# static fields
.field private static dd:Landroid/content/Context;

.field private static dt:Lcom/qbao/core/c/c;

.field private static du:Ljava/lang/String;

.field protected static dv:Lcom/qbao/core/util/a$a;

.field protected static dw:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/qbao/core/util/a$a;->bN:Lcom/qbao/core/util/a$a;

    sput-object v0, Lcom/qbao/sdk/a/f;->dv:Lcom/qbao/core/util/a$a;

    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qbao/sdk/a/f;->dw:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Z)V
    .registers 6

    .prologue
    .line 48
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 51
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    sput v2, Lcom/qbao/core/d/d;->aC:I

    .line 52
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    sput v0, Lcom/qbao/core/d/d;->aD:I

    .line 53
    const-string v0, "QbaoSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Screen_Size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/qbao/core/d/d;->aC:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/qbao/core/d/d;->aD:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/qbao/sdk/e/h;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 55
    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v2, 0x43700000

    div-float/2addr v0, v2

    .line 61
    if-eqz p1, :cond_55

    const/16 v2, 0xf0

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    if-ne v2, v1, :cond_55

    .line 62
    float-to-double v0, v0

    const-wide v2, 0x3fe6666666666666L

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 64
    :cond_55
    const-string v1, "QbaoSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Current dpi="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qbao/sdk/e/h;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    sput v0, Lcom/qbao/core/d/d;->aB:F

    .line 66
    return-void
.end method

.method public static a(Landroid/content/Context;ZLandroid/os/Handler;)V
    .registers 4

    .prologue
    .line 35
    sput-object p0, Lcom/qbao/sdk/a/f;->dd:Landroid/content/Context;

    .line 36
    new-instance v0, Lcom/qbao/core/c/c;

    invoke-direct {v0, p2}, Lcom/qbao/core/c/c;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/qbao/sdk/a/f;->dt:Lcom/qbao/core/c/c;

    .line 37
    invoke-static {}, Lcom/qbao/sdk/a/f;->as()V

    .line 38
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_15

    .line 39
    check-cast p0, Landroid/app/Activity;

    invoke-static {p0, p1}, Lcom/qbao/sdk/a/f;->a(Landroid/app/Activity;Z)V

    .line 41
    :cond_15
    invoke-static {}, Lcom/qbao/sdk/a/f;->at()Z

    .line 42
    return-void
.end method

.method public static ao()Lcom/qbao/core/c/c;
    .registers 1

    .prologue
    .line 122
    sget-object v0, Lcom/qbao/sdk/a/f;->dt:Lcom/qbao/core/c/c;

    return-object v0
.end method

.method private static as()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 69
    sget-boolean v0, Lcom/qbao/sdk/e/h;->DEBUG:Z

    if-eqz v0, :cond_6

    .line 82
    :goto_5
    return-void

    .line 72
    :cond_6
    invoke-static {}, Lcom/qbao/core/util/f;->P()Z

    move-result v0

    if-nez v0, :cond_f

    .line 73
    sput-boolean v2, Lcom/qbao/sdk/e/h;->DEBUG:Z

    goto :goto_5

    .line 76
    :cond_f
    const-string v0, "qbao_sdk.txt"

    invoke-static {v0}, Lcom/qbao/core/util/f;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 78
    sput-boolean v2, Lcom/qbao/sdk/e/h;->DEBUG:Z

    goto :goto_5

    .line 81
    :cond_1e
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/qbao/sdk/e/h;->DEBUG:Z

    goto :goto_5
.end method

.method public static at()Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 89
    sget-object v0, Lcom/qbao/sdk/a/f;->dd:Landroid/content/Context;

    if-nez v0, :cond_8

    move v0, v1

    .line 117
    :goto_7
    return v0

    .line 92
    :cond_8
    sget-object v0, Lcom/qbao/core/util/a$a;->bN:Lcom/qbao/core/util/a$a;

    sput-object v0, Lcom/qbao/sdk/a/f;->dv:Lcom/qbao/core/util/a$a;

    .line 93
    sget-object v0, Lcom/qbao/core/util/a$a;->bN:Lcom/qbao/core/util/a$a;

    .line 94
    sput-boolean v1, Lcom/qbao/sdk/a/f;->dw:Z

    .line 95
    sget-object v3, Lcom/qbao/sdk/a/f;->dd:Landroid/content/Context;

    invoke-static {v3}, Lcom/qbao/core/b/g;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 96
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1e

    move v0, v1

    .line 97
    goto :goto_7

    .line 99
    :cond_1e
    sput-boolean v1, Lcom/qbao/sdk/a/f;->dw:Z

    .line 100
    const-string v1, "WIFI"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 101
    sget-object v0, Lcom/qbao/core/util/a$a;->bO:Lcom/qbao/core/util/a$a;

    .line 116
    :cond_2a
    :goto_2a
    sput-object v0, Lcom/qbao/sdk/a/f;->dv:Lcom/qbao/core/util/a$a;

    move v0, v2

    .line 117
    goto :goto_7

    .line 102
    :cond_2e
    const-string v1, "CMWAP"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 103
    sget-object v0, Lcom/qbao/core/util/a$a;->bP:Lcom/qbao/core/util/a$a;

    .line 104
    sput-boolean v2, Lcom/qbao/sdk/a/f;->dw:Z

    goto :goto_2a

    .line 105
    :cond_3b
    const-string v1, "CMNET"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 106
    sget-object v0, Lcom/qbao/core/util/a$a;->bQ:Lcom/qbao/core/util/a$a;

    goto :goto_2a

    .line 107
    :cond_46
    const-string v1, "UNWAP"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 108
    sget-object v0, Lcom/qbao/core/util/a$a;->bR:Lcom/qbao/core/util/a$a;

    goto :goto_2a

    .line 109
    :cond_51
    const-string v1, "UNNET"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 110
    sget-object v0, Lcom/qbao/core/util/a$a;->bS:Lcom/qbao/core/util/a$a;

    goto :goto_2a

    .line 111
    :cond_5c
    const-string v1, "CTWAP"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 112
    sget-object v0, Lcom/qbao/core/util/a$a;->bT:Lcom/qbao/core/util/a$a;

    goto :goto_2a

    .line 113
    :cond_67
    const-string v1, "CTNET"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 114
    sget-object v0, Lcom/qbao/core/util/a$a;->bU:Lcom/qbao/core/util/a$a;

    goto :goto_2a
.end method

.method public static au()Lcom/qbao/core/util/a$a;
    .registers 1

    .prologue
    .line 128
    sget-object v0, Lcom/qbao/sdk/a/f;->dv:Lcom/qbao/core/util/a$a;

    return-object v0
.end method

.method public static av()Z
    .registers 1

    .prologue
    .line 130
    sget-boolean v0, Lcom/qbao/sdk/a/f;->dw:Z

    return v0
.end method

.method public static getContentId()Ljava/lang/String;
    .registers 1

    .prologue
    .line 124
    sget-object v0, Lcom/qbao/sdk/a/f;->du:Ljava/lang/String;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .registers 1

    .prologue
    .line 120
    sget-object v0, Lcom/qbao/sdk/a/f;->dd:Landroid/content/Context;

    return-object v0
.end method

.method public static setContentId(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 126
    sput-object p0, Lcom/qbao/sdk/a/f;->du:Ljava/lang/String;

    return-void
.end method
