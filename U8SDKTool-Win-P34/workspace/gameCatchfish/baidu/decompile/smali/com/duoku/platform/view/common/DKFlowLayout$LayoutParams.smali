.class public Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/view/common/DKFlowLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field private static a:I


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 322
    const/4 v0, -0x1

    sput v0, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->a:I

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    .prologue
    .line 336
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 326
    sget v0, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->a:I

    iput v0, p0, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->d:I

    .line 327
    sget v0, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->a:I

    iput v0, p0, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->e:I

    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->f:Z

    .line 337
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 331
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 326
    sget v0, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->a:I

    iput v0, p0, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->d:I

    .line 327
    sget v0, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->a:I

    iput v0, p0, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->e:I

    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->f:Z

    .line 332
    invoke-direct {p0, p1, p2}, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 333
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .prologue
    .line 340
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    sget v0, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->a:I

    iput v0, p0, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->d:I

    .line 327
    sget v0, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->a:I

    iput v0, p0, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->e:I

    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->f:Z

    .line 341
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 358
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 359
    const-string v1, "layout_newLine"

    invoke-static {p1, v1}, Lcom/duoku/platform/util/m;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "layout_horizontalSpacing"

    invoke-static {p1, v2}, Lcom/duoku/platform/util/m;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 360
    const-string v2, "layout_verticalSpacing"

    invoke-static {p1, v2}, Lcom/duoku/platform/util/m;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 362
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 371
    :try_start_22
    const-string v0, "DKFlowLayout_LayoutParams_layout_horizontalSpacing"

    .line 370
    invoke-static {p1, v0}, Lcom/duoku/platform/util/m;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 371
    sget v2, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->a:I

    .line 370
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->d:I

    .line 373
    const-string v0, "DKFlowLayout_LayoutParams_layout_verticalSpacing"

    .line 372
    invoke-static {p1, v0}, Lcom/duoku/platform/util/m;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 373
    sget v2, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->a:I

    .line 372
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->e:I

    .line 374
    const-string v0, "DKFlowLayout_LayoutParams_layout_newLine"

    invoke-static {p1, v0}, Lcom/duoku/platform/util/m;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->f:Z
    :try_end_4b
    .catchall {:try_start_22 .. :try_end_4b} :catchall_4f

    .line 376
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 378
    return-void

    .line 375
    :catchall_4f
    move-exception v0

    .line 376
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 377
    throw v0
.end method

.method static synthetic a(Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;)Z
    .registers 2

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;)I
    .registers 2

    .prologue
    .line 327
    iget v0, p0, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->e:I

    return v0
.end method

.method static synthetic c(Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;)I
    .registers 2

    .prologue
    .line 326
    iget v0, p0, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->d:I

    return v0
.end method

.method static synthetic d(Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;)I
    .registers 2

    .prologue
    .line 324
    iget v0, p0, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->b:I

    return v0
.end method

.method static synthetic e(Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;)I
    .registers 2

    .prologue
    .line 325
    iget v0, p0, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->c:I

    return v0
.end method


# virtual methods
.method public a(II)V
    .registers 3

    .prologue
    .line 352
    iput p1, p0, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->b:I

    .line 353
    iput p2, p0, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->c:I

    .line 354
    return-void
.end method

.method public a()Z
    .registers 3

    .prologue
    .line 344
    iget v0, p0, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->d:I

    sget v1, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->a:I

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public b()Z
    .registers 3

    .prologue
    .line 348
    iget v0, p0, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->e:I

    sget v1, Lcom/duoku/platform/view/common/DKFlowLayout$LayoutParams;->a:I

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
