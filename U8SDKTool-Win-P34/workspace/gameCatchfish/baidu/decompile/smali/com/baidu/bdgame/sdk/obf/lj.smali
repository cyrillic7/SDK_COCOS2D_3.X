.class public Lcom/baidu/bdgame/sdk/obf/lj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:F = 160.0f

.field private static final b:F = 0.5f


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .registers 2

    .prologue
    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 61
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public static a(Landroid/content/Context;I)I
    .registers 4

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 36
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 37
    int-to-float v0, v0

    const/high16 v1, 0x43200000

    div-float/2addr v0, v1

    .line 38
    int-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static b(Landroid/content/Context;)I
    .registers 2

    .prologue
    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 71
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static b(Landroid/content/Context;I)I
    .registers 4

    .prologue
    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 49
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 50
    int-to-float v0, v0

    const/high16 v1, 0x43200000

    div-float/2addr v0, v1

    .line 51
    int-to-float v1, p1

    div-float v0, v1, v0

    const/high16 v1, 0x3f000000

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static c(Landroid/content/Context;)I
    .registers 3

    .prologue
    .line 80
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/lj;->b(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/lj;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static d(Landroid/content/Context;)I
    .registers 3

    .prologue
    .line 89
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/lj;->b(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/lj;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method
