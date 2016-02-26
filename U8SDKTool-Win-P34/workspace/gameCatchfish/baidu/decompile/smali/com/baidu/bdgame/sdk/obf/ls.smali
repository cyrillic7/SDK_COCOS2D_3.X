.class public abstract Lcom/baidu/bdgame/sdk/obf/ls;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 20
    const-string v0, "bdp_dialog_style"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 21
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ls;->a:Landroid/content/Context;

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ls;->b:Landroid/os/Handler;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 27
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ls;->a:Landroid/content/Context;

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ls;->b:Landroid/os/Handler;

    .line 29
    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/view/LayoutInflater;)Landroid/view/View;
.end method

.method public a()V
    .registers 5

    .prologue
    .line 61
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ls;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kw;->f(Landroid/content/Context;)I

    move-result v1

    .line 62
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ls;->a:Landroid/content/Context;

    const/high16 v2, 0x41900000

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kw;->a(Landroid/content/Context;F)I

    move-result v2

    .line 63
    const/4 v0, 0x0

    .line 64
    const/4 v3, 0x1

    if-ne v1, v3, :cond_24

    .line 65
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ls;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kw;->h(Landroid/content/Context;)I

    move-result v0

    mul-int/lit8 v1, v2, 0x2

    sub-int/2addr v0, v1

    .line 69
    :cond_1b
    :goto_1b
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ls;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->setLayout(II)V

    .line 70
    return-void

    .line 66
    :cond_24
    if-nez v1, :cond_1b

    .line 67
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ls;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kw;->g(Landroid/content/Context;)I

    move-result v0

    mul-int/lit8 v1, v2, 0x2

    sub-int/2addr v0, v1

    goto :goto_1b
.end method

.method protected a(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 36
    return-void
.end method

.method protected varargs a(Landroid/view/View;[I)V
    .registers 5

    .prologue
    .line 84
    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_12

    .line 85
    aget v1, p2, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 86
    if-eqz v1, :cond_f

    .line 87
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 90
    :cond_12
    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 75
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ls;->dismiss()V

    .line 76
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 81
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 42
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ls;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 43
    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ls;->a(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    .line 44
    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ls;->setContentView(Landroid/view/View;)V

    .line 46
    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ls;->a(Landroid/view/View;)V

    .line 47
    return-void
.end method

.method public show()V
    .registers 1

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 57
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ls;->a()V

    .line 58
    return-void
.end method
