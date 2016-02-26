.class public Lcom/baidu/platformsdk/TaskActivity;
.super Lcom/baidu/platformsdk/LoginWatchActivity;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/bdgame/sdk/obf/ce;

.field private b:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/baidu/platformsdk/LoginWatchActivity;-><init>()V

    return-void
.end method

.method private b()V
    .registers 7

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/baidu/platformsdk/TaskActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kw;->f(Landroid/content/Context;)I

    move-result v0

    .line 47
    invoke-virtual {p0}, Lcom/baidu/platformsdk/TaskActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kw;->a(Landroid/content/Context;F)I

    move-result v1

    .line 48
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/kw;->g(Landroid/content/Context;)I

    move-result v2

    .line 49
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/kw;->h(Landroid/content/Context;)I

    move-result v3

    .line 50
    const/4 v4, 0x1

    if-ne v0, v4, :cond_2d

    .line 51
    iget-object v0, p0, Lcom/baidu/platformsdk/TaskActivity;->b:Landroid/view/ViewGroup;

    div-int/lit8 v4, v1, 0x2

    div-int/lit8 v5, v1, 0x2

    invoke-virtual {v0, v1, v4, v1, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 55
    :cond_25
    :goto_25
    invoke-virtual {p0}, Lcom/baidu/platformsdk/TaskActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 56
    return-void

    .line 52
    :cond_2d
    if-nez v0, :cond_25

    .line 53
    iget-object v0, p0, Lcom/baidu/platformsdk/TaskActivity;->b:Landroid/view/ViewGroup;

    div-int/lit8 v4, v1, 0x2

    div-int/lit8 v5, v1, 0x2

    invoke-virtual {v0, v4, v1, v5, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_25
.end method


# virtual methods
.method public a()Lcom/baidu/bdgame/sdk/obf/ce;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/baidu/platformsdk/TaskActivity;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    return-object v0
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/baidu/platformsdk/TaskActivity;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ce;->c()Z

    move-result v0

    if-nez v0, :cond_b

    .line 76
    invoke-super {p0}, Lcom/baidu/platformsdk/LoginWatchActivity;->onBackPressed()V

    .line 78
    :cond_b
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/baidu/platformsdk/LoginWatchActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 61
    invoke-virtual {p0}, Lcom/baidu/platformsdk/TaskActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kw;->a(Landroid/content/Context;F)I

    move-result v0

    .line 62
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2f

    .line 63
    iget-object v1, p0, Lcom/baidu/platformsdk/TaskActivity;->b:Landroid/view/ViewGroup;

    div-int/lit8 v2, v0, 0x2

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {v1, v0, v2, v0, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 67
    :cond_1a
    :goto_1a
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/kw;->g(Landroid/content/Context;)I

    move-result v0

    .line 68
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/kw;->h(Landroid/content/Context;)I

    move-result v1

    .line 69
    invoke-virtual {p0}, Lcom/baidu/platformsdk/TaskActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 70
    iget-object v0, p0, Lcom/baidu/platformsdk/TaskActivity;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ce;->d()V

    .line 71
    return-void

    .line 64
    :cond_2f
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a

    .line 65
    iget-object v1, p0, Lcom/baidu/platformsdk/TaskActivity;->b:Landroid/view/ViewGroup;

    div-int/lit8 v2, v0, 0x2

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {v1, v2, v0, v3, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_1a
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 27
    invoke-super {p0, p1}, Lcom/baidu/platformsdk/LoginWatchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_e

    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/TaskActivity;->setFinishOnTouchOutside(Z)V

    .line 31
    :cond_e
    const-string v0, "bdp_paycenter_blank"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/TaskActivity;->setContentView(I)V

    .line 32
    const-string v0, "bdp_paycenter_main"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/TaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/baidu/platformsdk/TaskActivity;->b:Landroid/view/ViewGroup;

    .line 34
    iget-object v0, p0, Lcom/baidu/platformsdk/TaskActivity;->b:Landroid/view/ViewGroup;

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ce;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/platformsdk/TaskActivity;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    .line 36
    invoke-direct {p0}, Lcom/baidu/platformsdk/TaskActivity;->b()V

    .line 37
    invoke-virtual {p0}, Lcom/baidu/platformsdk/TaskActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 39
    invoke-virtual {p0}, Lcom/baidu/platformsdk/TaskActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/platformsdk/TaskActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_transparent"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 43
    return-void
.end method
