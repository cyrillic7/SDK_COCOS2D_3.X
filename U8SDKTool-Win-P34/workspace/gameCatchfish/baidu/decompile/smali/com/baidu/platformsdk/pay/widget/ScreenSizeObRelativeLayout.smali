.class public Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/by;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout$a;
    }
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private b:I

.field private c:Z

.field private d:Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout;->c:Z

    .line 28
    invoke-direct {p0, p1}, Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout;->a(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout;->c:Z

    .line 23
    invoke-direct {p0, p1}, Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout;->a(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method static synthetic a(Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout;)Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout$a;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout;->d:Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout$a;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 32
    new-instance v0, Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout$1;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout$1;-><init>(Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout;->a:Landroid/os/Handler;

    .line 41
    return-void
.end method

.method static synthetic b(Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout;)Z
    .registers 2

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout;->c:Z

    return v0
.end method


# virtual methods
.method public a(Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout$a;)V
    .registers 2

    .prologue
    .line 81
    iput-object p1, p0, Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout;->d:Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout$a;

    .line 82
    return-void
.end method

.method protected onMeasure(II)V
    .registers 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const-wide/16 v6, 0x32

    const/high16 v4, 0x42c80000

    const/4 v3, 0x0

    .line 49
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 51
    invoke-virtual {p0}, Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kw;->f(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1c

    .line 52
    invoke-virtual {p0}, Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout;->getMeasuredHeight()I

    move-result v0

    .line 53
    iget v1, p0, Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout;->b:I

    if-nez v1, :cond_1d

    .line 54
    iput v0, p0, Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout;->b:I

    .line 76
    :cond_1c
    :goto_1c
    return-void

    .line 57
    :cond_1d
    iget v1, p0, Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout;->b:I

    if-ge v1, v0, :cond_42

    .line 59
    iget v1, p0, Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout;->b:I

    sub-int v1, v0, v1

    invoke-virtual {p0}, Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/baidu/bdgame/sdk/obf/kw;->a(Landroid/content/Context;F)I

    move-result v2

    if-le v1, v2, :cond_3f

    iget-boolean v1, p0, Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout;->c:Z

    if-eqz v1, :cond_3f

    .line 61
    iput-boolean v3, p0, Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout;->c:Z

    .line 62
    iget-object v1, p0, Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout;->a:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 63
    iget-object v1, p0, Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout;->a:Landroid/os/Handler;

    invoke-virtual {v1, v3, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 74
    :cond_3f
    :goto_3f
    iput v0, p0, Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout;->b:I

    goto :goto_1c

    .line 65
    :cond_42
    iget v1, p0, Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout;->b:I

    if-le v1, v0, :cond_3f

    .line 67
    iget v1, p0, Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout;->b:I

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/baidu/bdgame/sdk/obf/kw;->a(Landroid/content/Context;F)I

    move-result v2

    if-le v1, v2, :cond_3f

    iget-boolean v1, p0, Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout;->c:Z

    if-nez v1, :cond_3f

    .line 69
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout;->c:Z

    .line 70
    iget-object v1, p0, Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout;->a:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 71
    iget-object v1, p0, Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout;->a:Landroid/os/Handler;

    invoke-virtual {v1, v3, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3f
.end method
