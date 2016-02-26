.class public Lcom/baidu/platformsdk/SapiWebActivity;
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
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field private static final g:Ljava/lang/String; = "ACTION"


# instance fields
.field protected f:Landroid/view/LayoutInflater;

.field private h:Landroid/widget/FrameLayout;

.field private i:Landroid/widget/FrameLayout;

.field private j:Lcom/baidu/sapi2/SapiWebView;

.field private k:Lcom/baidu/bdgame/sdk/obf/lu;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/TextView;

.field private o:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/baidu/platformsdk/LoginWatchActivity;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/platformsdk/SapiWebActivity;->o:I

    return-void
.end method

.method static synthetic a(Lcom/baidu/platformsdk/SapiWebActivity;)I
    .registers 2

    .prologue
    .line 45
    iget v0, p0, Lcom/baidu/platformsdk/SapiWebActivity;->o:I

    return v0
.end method

.method private a(I)V
    .registers 7

    .prologue
    .line 97
    const-string v0, "bdp_paycenter_title_web"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 98
    iget-object v1, p0, Lcom/baidu/platformsdk/SapiWebActivity;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 99
    iget-object v1, p0, Lcom/baidu/platformsdk/SapiWebActivity;->h:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/baidu/platformsdk/SapiWebActivity;->f:Landroid/view/LayoutInflater;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    invoke-virtual {p0}, Lcom/baidu/platformsdk/SapiWebActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_btn_back"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/SapiWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity;->l:Landroid/widget/ImageView;

    .line 104
    invoke-virtual {p0}, Lcom/baidu/platformsdk/SapiWebActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_iv_close"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/SapiWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity;->m:Landroid/widget/ImageView;

    .line 106
    invoke-virtual {p0}, Lcom/baidu/platformsdk/SapiWebActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_tv_title"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/SapiWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity;->n:Landroid/widget/TextView;

    .line 108
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .registers 4

    .prologue
    .line 272
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/baidu/platformsdk/SapiWebActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 273
    const-string v1, "ACTION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 274
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 275
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 276
    return-void
.end method

.method static synthetic b(Lcom/baidu/platformsdk/SapiWebActivity;)Lcom/baidu/sapi2/SapiWebView;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity;->j:Lcom/baidu/sapi2/SapiWebView;

    return-object v0
.end method

.method private b()V
    .registers 4

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/baidu/platformsdk/SapiWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ACTION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/baidu/platformsdk/SapiWebActivity;->o:I

    .line 87
    return-void
.end method

.method static synthetic c(Lcom/baidu/platformsdk/SapiWebActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method private c()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 113
    invoke-virtual {p0}, Lcom/baidu/platformsdk/SapiWebActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_content_frame"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/SapiWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity;->i:Landroid/widget/FrameLayout;

    .line 115
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity;->i:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/baidu/platformsdk/SapiWebActivity;->j:Lcom/baidu/sapi2/SapiWebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    return-void
.end method

.method static synthetic d(Lcom/baidu/platformsdk/SapiWebActivity;)Lcom/baidu/bdgame/sdk/obf/lu;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity;->k:Lcom/baidu/bdgame/sdk/obf/lu;

    return-object v0
.end method

.method private d()V
    .registers 5

    .prologue
    .line 120
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/baidu/platformsdk/SapiWebActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/baidu/platformsdk/SapiWebActivity$1;

    invoke-direct {v1, p0}, Lcom/baidu/platformsdk/SapiWebActivity$1;-><init>(Lcom/baidu/platformsdk/SapiWebActivity;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 149
    return-void
.end method

.method private e()V
    .registers 4

    .prologue
    .line 152
    new-instance v0, Lcom/baidu/platformsdk/SapiWebActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/baidu/platformsdk/SapiWebActivity$2;-><init>(Lcom/baidu/platformsdk/SapiWebActivity;Landroid/content/Context;)V

    .line 170
    iget-object v1, p0, Lcom/baidu/platformsdk/SapiWebActivity;->k:Lcom/baidu/bdgame/sdk/obf/lu;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lu;->a(Ljava/lang/String;)V

    .line 171
    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/bl;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bi;)Lcom/baidu/bdgame/sdk/obf/bk;

    .line 172
    return-void
.end method

.method static synthetic e(Lcom/baidu/platformsdk/SapiWebActivity;)V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/baidu/platformsdk/SapiWebActivity;->f()V

    return-void
.end method

.method private f()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 175
    new-instance v0, Lcom/baidu/sapi2/SapiWebView;

    invoke-direct {v0, p0}, Lcom/baidu/sapi2/SapiWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity;->j:Lcom/baidu/sapi2/SapiWebView;

    .line 176
    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const v2, 0x1010078

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 177
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x40000000

    invoke-static {p0, v3}, Lcom/baidu/sapi2/utils/SapiUtils;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3, v4, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    iget-object v1, p0, Lcom/baidu/platformsdk/SapiWebActivity;->j:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v1, v0}, Lcom/baidu/sapi2/SapiWebView;->setProgressBar(Landroid/widget/ProgressBar;)V

    .line 179
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity;->j:Lcom/baidu/sapi2/SapiWebView;

    new-instance v1, Lcom/baidu/platformsdk/SapiWebActivity$3;

    invoke-direct {v1, p0}, Lcom/baidu/platformsdk/SapiWebActivity$3;-><init>(Lcom/baidu/platformsdk/SapiWebActivity;)V

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiWebView;->setOnBackCallback(Lcom/baidu/sapi2/SapiWebView$OnBackCallback;)V

    .line 185
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity;->j:Lcom/baidu/sapi2/SapiWebView;

    new-instance v1, Lcom/baidu/platformsdk/SapiWebActivity$4;

    invoke-direct {v1, p0}, Lcom/baidu/platformsdk/SapiWebActivity$4;-><init>(Lcom/baidu/platformsdk/SapiWebActivity;)V

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiWebView;->setOnFinishCallback(Lcom/baidu/sapi2/SapiWebView$OnFinishCallback;)V

    .line 233
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity;->j:Lcom/baidu/sapi2/SapiWebView;

    new-instance v1, Lcom/baidu/platformsdk/SapiWebActivity$5;

    invoke-direct {v1, p0}, Lcom/baidu/platformsdk/SapiWebActivity$5;-><init>(Lcom/baidu/platformsdk/SapiWebActivity;)V

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiWebView;->setChangePwdCallback(Lcom/baidu/sapi2/SapiWebView$ChangePwdCallback;)V

    .line 252
    return-void
.end method

.method static synthetic f(Lcom/baidu/platformsdk/SapiWebActivity;)V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/baidu/platformsdk/SapiWebActivity;->c()V

    return-void
.end method

.method private g()V
    .registers 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity;->j:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 265
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity;->j:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiWebView;->goBack()V

    .line 269
    :goto_d
    return-void

    .line 267
    :cond_e
    invoke-virtual {p0}, Lcom/baidu/platformsdk/SapiWebActivity;->finish()V

    goto :goto_d
.end method

.method static synthetic g(Lcom/baidu/platformsdk/SapiWebActivity;)V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/baidu/platformsdk/SapiWebActivity;->d()V

    return-void
.end method

.method static synthetic h(Lcom/baidu/platformsdk/SapiWebActivity;)V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/baidu/platformsdk/SapiWebActivity;->g()V

    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/bdgame/sdk/obf/ce;
    .registers 2

    .prologue
    .line 280
    const/4 v0, 0x0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity;->m:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_8

    .line 257
    invoke-virtual {p0}, Lcom/baidu/platformsdk/SapiWebActivity;->finish()V

    .line 261
    :cond_7
    :goto_7
    return-void

    .line 258
    :cond_8
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity;->l:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_7

    .line 259
    invoke-direct {p0}, Lcom/baidu/platformsdk/SapiWebActivity;->g()V

    goto :goto_7
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/baidu/platformsdk/LoginWatchActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 92
    invoke-virtual {p0}, Lcom/baidu/platformsdk/SapiWebActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kw;->f(Landroid/content/Context;)I

    move-result v0

    .line 93
    invoke-direct {p0, v0}, Lcom/baidu/platformsdk/SapiWebActivity;->a(I)V

    .line 94
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 67
    invoke-super {p0, p1}, Lcom/baidu/platformsdk/LoginWatchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/baidu/platformsdk/SapiWebActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/platformsdk/SapiWebActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_transparent"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 70
    invoke-virtual {p0}, Lcom/baidu/platformsdk/SapiWebActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_web_frame"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/SapiWebActivity;->setContentView(I)V

    .line 72
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/ll;->a(Landroid/app/Activity;)V

    .line 73
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity;->f:Landroid/view/LayoutInflater;

    .line 74
    const-string v0, "bdp_paycenter_title_frame"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/SapiWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity;->h:Landroid/widget/FrameLayout;

    .line 75
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/lu;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/lu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity;->k:Lcom/baidu/bdgame/sdk/obf/lu;

    .line 76
    invoke-direct {p0}, Lcom/baidu/platformsdk/SapiWebActivity;->b()V

    .line 77
    invoke-virtual {p0}, Lcom/baidu/platformsdk/SapiWebActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kw;->f(Landroid/content/Context;)I

    move-result v0

    .line 78
    invoke-direct {p0, v0}, Lcom/baidu/platformsdk/SapiWebActivity;->a(I)V

    .line 79
    invoke-virtual {p0}, Lcom/baidu/platformsdk/SapiWebActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setLayout(II)V

    .line 81
    invoke-virtual {p0, v4, v4}, Lcom/baidu/platformsdk/SapiWebActivity;->overridePendingTransition(II)V

    .line 82
    invoke-direct {p0}, Lcom/baidu/platformsdk/SapiWebActivity;->e()V

    .line 83
    return-void
.end method
