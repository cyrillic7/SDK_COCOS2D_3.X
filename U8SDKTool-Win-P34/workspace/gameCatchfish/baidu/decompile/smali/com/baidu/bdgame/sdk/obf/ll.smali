.class public Lcom/baidu/bdgame/sdk/obf/ll;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:I

.field private c:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 37
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ll;->a:Landroid/view/View;

    .line 39
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ll;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ll$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ll$1;-><init>(Lcom/baidu/bdgame/sdk/obf/ll;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 49
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ll;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ll;->c:Landroid/widget/FrameLayout$LayoutParams;

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ll;I)I
    .registers 2

    .prologue
    .line 11
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/ll;->b:I

    return p1
.end method

.method private a()V
    .registers 7

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ll;->b()I

    move-result v0

    .line 55
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ll;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 59
    sub-int v2, v1, v0

    .line 60
    if-nez v2, :cond_23

    .line 61
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/ll;->b:I

    if-lez v0, :cond_22

    .line 62
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ll;->c:Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/ll;->b:I

    .line 64
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ll;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 83
    :cond_22
    :goto_22
    return-void

    .line 68
    :cond_23
    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/ll;->b:I

    if-nez v1, :cond_22

    .line 69
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ll;->a:Landroid/view/View;

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/ll$2;

    invoke-direct {v2, p0, v0}, Lcom/baidu/bdgame/sdk/obf/ll$2;-><init>(Lcom/baidu/bdgame/sdk/obf/ll;I)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_22
.end method

.method public static a(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 23
    const/16 v1, 0x9

    if-eq v0, v1, :cond_a

    const/16 v1, 0xa

    if-ne v0, v1, :cond_b

    .line 28
    :cond_a
    :goto_a
    return-void

    .line 27
    :cond_b
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ll;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/ll;-><init>(Landroid/app/Activity;)V

    goto :goto_a
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ll;)V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ll;->a()V

    return-void
.end method

.method private b()I
    .registers 3

    .prologue
    .line 86
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 87
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ll;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 88
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v0, v1, v0

    return v0
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/ll;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 2

    .prologue
    .line 11
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ll;->c:Landroid/widget/FrameLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/ll;)Landroid/view/View;
    .registers 2

    .prologue
    .line 11
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ll;->a:Landroid/view/View;

    return-object v0
.end method
