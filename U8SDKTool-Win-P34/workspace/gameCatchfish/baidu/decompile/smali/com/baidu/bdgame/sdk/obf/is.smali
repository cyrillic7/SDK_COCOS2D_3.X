.class public abstract Lcom/baidu/bdgame/sdk/obf/is;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected c:Landroid/content/Context;

.field protected d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/16 v1, 0x400

    .line 28
    const-string v0, "bdp_dialog_style"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 29
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/is;->c:Landroid/content/Context;

    .line 30
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/is;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/is;->d:Landroid/os/Handler;

    .line 33
    return-void
.end method

.method private b()V
    .registers 5

    .prologue
    .line 42
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/is;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 43
    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/is;->a(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    .line 44
    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/is;->a(Landroid/view/View;)V

    .line 46
    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/is;->setContentView(Landroid/view/View;)V

    .line 47
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/is;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/is;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/is;->c:Landroid/content/Context;

    const-string v3, "bdp_paycenter_bg_dialog_alert"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/is;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/is;->setCancelable(Z)V

    .line 54
    return-void
.end method


# virtual methods
.method public a()I
    .registers 5

    .prologue
    .line 69
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/is;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kw;->f(Landroid/content/Context;)I

    move-result v1

    .line 70
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/is;->c:Landroid/content/Context;

    const/high16 v2, 0x41300000

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kw;->a(Landroid/content/Context;F)I

    move-result v2

    .line 71
    const/4 v0, 0x0

    .line 72
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2a

    .line 73
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/is;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kw;->h(Landroid/content/Context;)I

    move-result v0

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    .line 74
    int-to-float v0, v0

    const v2, 0x3f933333

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 78
    :cond_21
    :goto_21
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/is;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, -0x2

    invoke-virtual {v2, v0, v3}, Landroid/view/Window;->setLayout(II)V

    .line 79
    return v1

    .line 75
    :cond_2a
    if-nez v1, :cond_21

    .line 76
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/is;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kw;->g(Landroid/content/Context;)I

    move-result v0

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    goto :goto_21
.end method

.method protected abstract a(Landroid/view/LayoutInflater;)Landroid/view/View;
.end method

.method protected a(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 60
    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 84
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 85
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/is;->dismiss()V

    .line 86
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 90
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/is;->b()V

    .line 39
    return-void
.end method

.method public show()V
    .registers 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 65
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/is;->a()I

    .line 66
    return-void
.end method
