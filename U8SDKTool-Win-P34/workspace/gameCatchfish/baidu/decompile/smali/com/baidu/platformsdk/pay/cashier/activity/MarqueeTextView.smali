.class public Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView$a;
    }
.end annotation


# static fields
.field private static final n:I = 0xbb8

.field private static final o:I = 0x21

.field private static final p:I = 0x1e


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Landroid/graphics/Paint;

.field private c:Lcom/baidu/bdgame/sdk/obf/cy;

.field private d:[Ljava/lang/String;

.field private e:[F

.field private f:F

.field private g:I

.field private h:Z

.field private i:I

.field private j:J

.field private k:F

.field private l:F

.field private m:F

.field private final q:I

.field private r:I

.field private s:Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 55
    const/16 v0, 0x64

    iput v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->g:I

    .line 56
    iput-boolean v3, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->h:Z

    .line 80
    iput v3, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->i:I

    .line 174
    iput v1, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->k:F

    .line 175
    iput v1, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->l:F

    .line 268
    iput v2, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->q:I

    .line 269
    iput v2, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->r:I

    .line 37
    invoke-direct {p0}, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->e()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    const/16 v0, 0x64

    iput v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->g:I

    .line 56
    iput-boolean v3, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->h:Z

    .line 80
    iput v3, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->i:I

    .line 174
    iput v1, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->k:F

    .line 175
    iput v1, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->l:F

    .line 268
    iput v2, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->q:I

    .line 269
    iput v2, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->r:I

    .line 32
    invoke-direct {p0}, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->e()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    const/16 v0, 0x64

    iput v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->g:I

    .line 56
    iput-boolean v3, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->h:Z

    .line 80
    iput v3, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->i:I

    .line 174
    iput v1, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->k:F

    .line 175
    iput v1, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->l:F

    .line 268
    iput v2, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->q:I

    .line 269
    iput v2, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->r:I

    .line 27
    invoke-direct {p0}, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->e()V

    .line 28
    return-void
.end method

.method private e()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->a:Landroid/os/Handler;

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->b:Landroid/graphics/Paint;

    .line 43
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setLinearText(Z)V

    .line 45
    invoke-virtual {p0}, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41400000

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kw;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->a(I)V

    .line 46
    invoke-virtual {p0}, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_color_ff3300"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lh;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->b(I)V

    .line 47
    invoke-direct {p0}, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->h()V

    .line 48
    return-void
.end method

.method private e(I)Z
    .registers 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->c:Lcom/baidu/bdgame/sdk/obf/cy;

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/cy;->c(I)Z

    move-result v0

    return v0
.end method

.method private f()V
    .registers 5

    .prologue
    .line 101
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->e:[F

    array-length v1, v1

    if-ge v0, v1, :cond_28

    .line 102
    iget-object v1, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->e:[F

    iget-object v2, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->b:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->d:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    aput v2, v1, v0

    .line 103
    iget v1, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->l:F

    iget-object v2, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->e:[F

    aget v2, v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->l:F

    .line 104
    iget v1, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->l:F

    iget v2, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->g:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->l:F

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 106
    :cond_28
    iget v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->l:F

    iget v1, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->g:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->l:F

    .line 107
    invoke-virtual {p0}, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->a()F

    move-result v0

    iput v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->f:F

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->h:Z

    .line 109
    return-void
.end method

.method private g()V
    .registers 2

    .prologue
    .line 237
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->k:F

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->d:[Ljava/lang/String;

    .line 239
    return-void
.end method

.method private h()V
    .registers 3

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 248
    const/high16 v1, 0x41f00000

    mul-float/2addr v0, v1

    const/high16 v1, 0x42840000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->m:F

    .line 250
    return-void
.end method


# virtual methods
.method public a()F
    .registers 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 113
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float v0, v1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public a(I)V
    .registers 4

    .prologue
    .line 257
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->b:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 258
    return-void
.end method

.method protected a(Landroid/graphics/Paint;)V
    .registers 3

    .prologue
    .line 253
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 254
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/cy;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 59
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/cy;->a()I

    move-result v0

    if-nez v0, :cond_10

    .line 60
    :cond_9
    invoke-direct {p0}, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->g()V

    .line 61
    invoke-virtual {p0}, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->c()V

    .line 74
    :goto_f
    return-void

    .line 64
    :cond_10
    iput-object p1, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->c:Lcom/baidu/bdgame/sdk/obf/cy;

    .line 66
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->c:Lcom/baidu/bdgame/sdk/obf/cy;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cy;->a()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    move v0, v1

    .line 67
    :goto_1b
    iget-object v3, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->c:Lcom/baidu/bdgame/sdk/obf/cy;

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/cy;->a()I

    move-result v3

    if-ge v0, v3, :cond_2e

    .line 68
    iget-object v3, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->c:Lcom/baidu/bdgame/sdk/obf/cy;

    invoke-virtual {v3, v0}, Lcom/baidu/bdgame/sdk/obf/cy;->b(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 70
    :cond_2e
    array-length v0, v2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->d:[Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->d:[Ljava/lang/String;

    array-length v3, v2

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->d:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->e:[F

    .line 73
    iput-boolean v1, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->h:Z

    goto :goto_f
.end method

.method public a(Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView$a;)V
    .registers 2

    .prologue
    .line 282
    iput-object p1, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->s:Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView$a;

    .line 283
    return-void
.end method

.method public b()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 179
    iget-object v2, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->a:Landroid/os/Handler;

    if-nez v2, :cond_8

    .line 223
    :goto_7
    return-void

    .line 182
    :cond_8
    iget v2, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->k:F

    neg-float v2, v2

    iget v4, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->m:F

    add-float/2addr v2, v4

    cmpg-float v2, v0, v2

    if-gez v2, :cond_33

    iget v2, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->k:F

    neg-float v2, v2

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_33

    move v1, v3

    .line 199
    :cond_1a
    :goto_1a
    if-eqz v1, :cond_60

    .line 200
    invoke-virtual {p0}, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->postInvalidate()V

    .line 201
    iget v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->k:F

    iget v1, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->m:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->k:F

    .line 202
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->a:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView$1;

    invoke-direct {v1, p0}, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView$1;-><init>(Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7

    :cond_33
    move v2, v0

    move v0, v1

    .line 187
    :goto_35
    iget-object v4, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->e:[F

    array-length v4, v4

    if-ge v0, v4, :cond_1a

    .line 188
    iget-object v4, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->e:[F

    aget v4, v4, v0

    add-float/2addr v2, v4

    .line 189
    iget-object v4, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->e:[F

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-eq v0, v4, :cond_4a

    .line 190
    iget v4, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->g:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    .line 192
    :cond_4a
    iget v4, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->k:F

    neg-float v4, v4

    iget v5, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->m:F

    add-float/2addr v4, v5

    cmpg-float v4, v2, v4

    if-gez v4, :cond_5d

    iget v4, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->k:F

    neg-float v4, v4

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_5d

    move v1, v3

    .line 195
    goto :goto_1a

    .line 187
    :cond_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 211
    :cond_60
    iget v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->k:F

    iget v1, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->m:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->k:F

    .line 212
    iget v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->k:F

    neg-float v0, v0

    iget v1, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->l:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_75

    .line 213
    iget v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->i:I

    int-to-float v0, v0

    iput v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->k:F

    .line 215
    :cond_75
    invoke-virtual {p0}, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->postInvalidate()V

    .line 216
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->a:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView$2;

    invoke-direct {v1, p0}, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView$2;-><init>(Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;)V

    const-wide/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7
.end method

.method public b(I)V
    .registers 3

    .prologue
    .line 261
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 262
    return-void
.end method

.method public c()V
    .registers 3

    .prologue
    .line 226
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->k:F

    .line 227
    invoke-virtual {p0}, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->postInvalidate()V

    .line 228
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 229
    return-void
.end method

.method public c(I)V
    .registers 2

    .prologue
    .line 265
    iput p1, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->g:I

    .line 266
    return-void
.end method

.method public d()V
    .registers 3

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->postInvalidate()V

    .line 233
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 234
    return-void
.end method

.method public d(I)V
    .registers 2

    .prologue
    .line 272
    iput p1, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->r:I

    .line 273
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    const/high16 v8, 0x3f800000

    .line 118
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 119
    iget v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->r:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    .line 120
    iget v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->r:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 122
    :cond_10
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->d:[Ljava/lang/String;

    if-nez v0, :cond_15

    .line 142
    :cond_14
    return-void

    :cond_15
    move v6, v7

    .line 123
    :goto_16
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->d:[Ljava/lang/String;

    array-length v0, v0

    if-ge v6, v0, :cond_14

    .line 124
    iget v1, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->k:F

    move v0, v7

    .line 125
    :goto_1e
    if-ge v0, v6, :cond_28

    .line 126
    iget-object v2, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->e:[F

    aget v2, v2, v0

    add-float/2addr v1, v2

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 128
    :cond_28
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 129
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->b:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 130
    invoke-direct {p0, v6}, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->e(I)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 131
    iget v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->f:F

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->e:[F

    aget v0, v0, v6

    add-float v3, v1, v0

    iget v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->f:F

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 134
    iget v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->f:F

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v0, v2

    sub-float v2, v0, v8

    iget-object v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->e:[F

    aget v0, v0, v6

    add-float v3, v1, v0

    iget v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->f:F

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v0, v4

    sub-float v4, v0, v8

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 139
    :cond_74
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->d:[Ljava/lang/String;

    aget-object v0, v0, v6

    iget v2, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->f:F

    const v3, 0x3f8ccccd

    mul-float/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 140
    iget v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->g:I

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 123
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_16
.end method

.method protected onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 84
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 85
    iget-boolean v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->h:Z

    if-nez v0, :cond_29

    .line 86
    invoke-virtual {p0}, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kw;->f(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_3c

    .line 87
    invoke-virtual {p0}, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kw;->g(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x425c0000

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kw;->a(Landroid/content/Context;F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->i:I

    .line 93
    :goto_26
    invoke-direct {p0}, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->f()V

    .line 95
    :cond_29
    iget v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->i:I

    iget v1, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->l:F

    float-to-int v1, v1

    if-le v0, v1, :cond_52

    iget v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->i:I

    :goto_32
    iget v1, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->f:F

    const/high16 v2, 0x3fc00000

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->setMeasuredDimension(II)V

    .line 98
    return-void

    .line 90
    :cond_3c
    invoke-virtual {p0}, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kw;->g(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x435b0000

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kw;->a(Landroid/content/Context;F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->i:I

    goto :goto_26

    .line 95
    :cond_52
    iget v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->l:F

    float-to-int v0, v0

    goto :goto_32
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_58

    .line 171
    :cond_7
    :goto_7
    :pswitch_7
    const/4 v0, 0x1

    return v0

    .line 152
    :pswitch_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 153
    iget-wide v2, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->j:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_7

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->j:J

    .line 155
    const/4 v1, 0x0

    .line 156
    const/4 v0, 0x0

    :goto_1e
    iget-object v2, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->e:[F

    array-length v2, v2

    if-ge v0, v2, :cond_7

    .line 157
    iget-object v2, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->e:[F

    aget v2, v2, v0

    add-float/2addr v1, v2

    .line 158
    iget-object v2, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->e:[F

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_33

    .line 159
    iget v2, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->g:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 161
    :cond_33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->k:F

    sub-float/2addr v2, v3

    cmpl-float v2, v1, v2

    if-lez v2, :cond_54

    .line 162
    iget-object v1, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->s:Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView$a;

    if-eqz v1, :cond_7

    invoke-direct {p0, v0}, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->e(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 163
    iget-object v1, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->s:Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView$a;

    iget-object v2, p0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->c:Lcom/baidu/bdgame/sdk/obf/cy;

    invoke-virtual {v2, v0}, Lcom/baidu/bdgame/sdk/obf/cy;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView$a;->a(ILjava/lang/String;)V

    goto :goto_7

    .line 156
    :cond_54
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 148
    nop

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method
