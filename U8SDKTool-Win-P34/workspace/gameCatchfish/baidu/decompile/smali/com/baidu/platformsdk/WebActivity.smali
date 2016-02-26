.class public Lcom/baidu/platformsdk/WebActivity;
.super Lcom/baidu/platformsdk/LoginWatchActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "WebActivity"

.field private static final c:Ljava/lang/String; = "TITLE"

.field private static final f:Ljava/lang/String; = "URL"


# instance fields
.field protected a:Landroid/view/LayoutInflater;

.field private g:Landroid/widget/FrameLayout;

.field private h:Landroid/widget/FrameLayout;

.field private i:Lcom/baidu/bdgame/sdk/obf/jo;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/TextView;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/baidu/platformsdk/LoginWatchActivity;-><init>()V

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/platformsdk/WebActivity;->m:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/platformsdk/WebActivity;->n:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/baidu/platformsdk/WebActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/platformsdk/WebActivity;->n:Ljava/lang/String;

    return-object v0
.end method

.method private a(I)V
    .registers 7

    .prologue
    .line 93
    const-string v0, "bdp_paycenter_title_web"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 94
    iget-object v1, p0, Lcom/baidu/platformsdk/WebActivity;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 95
    iget-object v1, p0, Lcom/baidu/platformsdk/WebActivity;->g:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/baidu/platformsdk/WebActivity;->a:Landroid/view/LayoutInflater;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    invoke-virtual {p0}, Lcom/baidu/platformsdk/WebActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_btn_back"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/platformsdk/WebActivity;->j:Landroid/widget/ImageView;

    .line 100
    invoke-virtual {p0}, Lcom/baidu/platformsdk/WebActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_iv_close"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/platformsdk/WebActivity;->k:Landroid/widget/ImageView;

    .line 102
    invoke-virtual {p0}, Lcom/baidu/platformsdk/WebActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_tv_title"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/platformsdk/WebActivity;->l:Landroid/widget/TextView;

    .line 104
    iget-object v0, p0, Lcom/baidu/platformsdk/WebActivity;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/platformsdk/WebActivity;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/baidu/platformsdk/WebActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/baidu/platformsdk/WebActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 151
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/baidu/platformsdk/WebActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    if-eqz p1, :cond_e

    .line 153
    const-string v1, "TITLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    :cond_e
    if-eqz p2, :cond_19

    .line 156
    const-string v1, "URL"

    invoke-static {p0, p2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    :cond_19
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 159
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 162
    return-void
.end method

.method static synthetic b(Lcom/baidu/platformsdk/WebActivity;)Lcom/baidu/bdgame/sdk/obf/jo;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/platformsdk/WebActivity;->i:Lcom/baidu/bdgame/sdk/obf/jo;

    return-object v0
.end method

.method private b()V
    .registers 4

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/baidu/platformsdk/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TITLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 83
    iput-object v0, p0, Lcom/baidu/platformsdk/WebActivity;->m:Ljava/lang/String;

    .line 85
    :cond_12
    invoke-virtual {p0}, Lcom/baidu/platformsdk/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "URL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 87
    iput-object v0, p0, Lcom/baidu/platformsdk/WebActivity;->n:Ljava/lang/String;

    .line 89
    :cond_24
    const-string v0, "WebActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTitle :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/platformsdk/WebActivity;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,mUrl :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/platformsdk/WebActivity;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method private c()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 110
    invoke-virtual {p0}, Lcom/baidu/platformsdk/WebActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_content_frame"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/baidu/platformsdk/WebActivity;->h:Landroid/widget/FrameLayout;

    .line 112
    iget-object v0, p0, Lcom/baidu/platformsdk/WebActivity;->h:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/baidu/platformsdk/WebActivity;->i:Lcom/baidu/bdgame/sdk/obf/jo;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    return-void
.end method

.method private d()V
    .registers 5

    .prologue
    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/baidu/platformsdk/WebActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/baidu/platformsdk/WebActivity$1;

    invoke-direct {v1, p0}, Lcom/baidu/platformsdk/WebActivity$1;-><init>(Lcom/baidu/platformsdk/WebActivity;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 125
    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/bdgame/sdk/obf/ce;
    .registers 2

    .prologue
    .line 166
    const/4 v0, 0x0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/baidu/platformsdk/WebActivity;->k:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_8

    .line 130
    invoke-virtual {p0}, Lcom/baidu/platformsdk/WebActivity;->finish()V

    .line 137
    :cond_7
    :goto_7
    return-void

    .line 131
    :cond_8
    iget-object v0, p0, Lcom/baidu/platformsdk/WebActivity;->j:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_7

    .line 132
    iget-object v0, p0, Lcom/baidu/platformsdk/WebActivity;->i:Lcom/baidu/bdgame/sdk/obf/jo;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jo;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 134
    invoke-virtual {p0}, Lcom/baidu/platformsdk/WebActivity;->finish()V

    goto :goto_7
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/baidu/platformsdk/LoginWatchActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 75
    invoke-virtual {p0}, Lcom/baidu/platformsdk/WebActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kw;->f(Landroid/content/Context;)I

    move-result v0

    .line 76
    invoke-direct {p0, v0}, Lcom/baidu/platformsdk/WebActivity;->a(I)V

    .line 77
    iget-object v1, p0, Lcom/baidu/platformsdk/WebActivity;->i:Lcom/baidu/bdgame/sdk/obf/jo;

    invoke-virtual {v1, v0}, Lcom/baidu/bdgame/sdk/obf/jo;->a(I)V

    .line 78
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 52
    invoke-super {p0, p1}, Lcom/baidu/platformsdk/LoginWatchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/baidu/platformsdk/WebActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/platformsdk/WebActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_transparent"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 55
    invoke-virtual {p0}, Lcom/baidu/platformsdk/WebActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_web_frame"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/WebActivity;->setContentView(I)V

    .line 57
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/ll;->a(Landroid/app/Activity;)V

    .line 58
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/platformsdk/WebActivity;->a:Landroid/view/LayoutInflater;

    .line 59
    const-string v0, "bdp_paycenter_title_frame"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/baidu/platformsdk/WebActivity;->g:Landroid/widget/FrameLayout;

    .line 60
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/jo;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/jo;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/baidu/platformsdk/WebActivity;->i:Lcom/baidu/bdgame/sdk/obf/jo;

    .line 61
    invoke-direct {p0}, Lcom/baidu/platformsdk/WebActivity;->b()V

    .line 62
    invoke-virtual {p0}, Lcom/baidu/platformsdk/WebActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kw;->f(Landroid/content/Context;)I

    move-result v0

    .line 63
    invoke-direct {p0, v0}, Lcom/baidu/platformsdk/WebActivity;->a(I)V

    .line 64
    iget-object v1, p0, Lcom/baidu/platformsdk/WebActivity;->i:Lcom/baidu/bdgame/sdk/obf/jo;

    invoke-virtual {v1, v0}, Lcom/baidu/bdgame/sdk/obf/jo;->a(I)V

    .line 65
    invoke-direct {p0}, Lcom/baidu/platformsdk/WebActivity;->c()V

    .line 66
    invoke-direct {p0}, Lcom/baidu/platformsdk/WebActivity;->d()V

    .line 67
    invoke-virtual {p0}, Lcom/baidu/platformsdk/WebActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setLayout(II)V

    .line 69
    invoke-virtual {p0, v4, v4}, Lcom/baidu/platformsdk/WebActivity;->overridePendingTransition(II)V

    .line 70
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 141
    invoke-super {p0}, Lcom/baidu/platformsdk/LoginWatchActivity;->onPause()V

    .line 144
    invoke-virtual {p0}, Lcom/baidu/platformsdk/WebActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 145
    iget-object v0, p0, Lcom/baidu/platformsdk/WebActivity;->i:Lcom/baidu/bdgame/sdk/obf/jo;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jo;->c()V

    .line 147
    :cond_e
    return-void
.end method
