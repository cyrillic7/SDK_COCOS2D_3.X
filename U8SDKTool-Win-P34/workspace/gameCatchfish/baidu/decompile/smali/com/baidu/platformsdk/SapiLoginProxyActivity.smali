.class public Lcom/baidu/platformsdk/SapiLoginProxyActivity;
.super Lcom/baidu/platformsdk/BaseActivity;
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
.field public static final a:Ljava/lang/String; = "EXTRA_ACTION_TITLE"

.field public static final b:Ljava/lang/String; = "EXTRA_ACTION_URL"


# instance fields
.field protected c:Landroid/view/LayoutInflater;

.field private d:Landroid/widget/FrameLayout;

.field private e:Landroid/widget/FrameLayout;

.field private f:Lcom/baidu/sapi2/SapiWebView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/TextView;

.field private j:Lcom/baidu/bdgame/sdk/obf/lu;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/baidu/platformsdk/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/platformsdk/SapiLoginProxyActivity;)Lcom/baidu/bdgame/sdk/obf/lu;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->j:Lcom/baidu/bdgame/sdk/obf/lu;

    return-object v0
.end method

.method private a()V
    .registers 3

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_ACTION_TITLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->k:Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_ACTION_URL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->l:Ljava/lang/String;

    .line 89
    return-void
.end method

.method private a(I)V
    .registers 7

    .prologue
    .line 92
    const-string v0, "bdp_paycenter_title_web"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 93
    iget-object v1, p0, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 94
    iget-object v1, p0, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->d:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->c:Landroid/view/LayoutInflater;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    invoke-virtual {p0}, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_btn_back"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->g:Landroid/widget/ImageView;

    .line 99
    invoke-virtual {p0}, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_iv_close"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->h:Landroid/widget/ImageView;

    .line 101
    invoke-virtual {p0}, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_tv_title"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->i:Landroid/widget/TextView;

    .line 103
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .prologue
    .line 208
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/baidu/platformsdk/SapiLoginProxyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    const-string v1, "EXTRA_ACTION_TITLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    const-string v1, "EXTRA_ACTION_URL"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    invoke-virtual {p0, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 212
    return-void
.end method

.method private b()V
    .registers 4

    .prologue
    .line 109
    new-instance v0, Lcom/baidu/platformsdk/SapiLoginProxyActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/baidu/platformsdk/SapiLoginProxyActivity$1;-><init>(Lcom/baidu/platformsdk/SapiLoginProxyActivity;Landroid/content/Context;)V

    .line 127
    iget-object v1, p0, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->j:Lcom/baidu/bdgame/sdk/obf/lu;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lu;->a(Ljava/lang/String;)V

    .line 128
    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/bl;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bi;)Lcom/baidu/bdgame/sdk/obf/bk;

    .line 129
    return-void
.end method

.method static synthetic b(Lcom/baidu/platformsdk/SapiLoginProxyActivity;)V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->c()V

    return-void
.end method

.method private c()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 132
    new-instance v0, Lcom/baidu/sapi2/SapiWebView;

    invoke-direct {v0, p0}, Lcom/baidu/sapi2/SapiWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->f:Lcom/baidu/sapi2/SapiWebView;

    .line 133
    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const v2, 0x1010078

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 134
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x40000000

    invoke-static {p0, v3}, Lcom/baidu/sapi2/utils/SapiUtils;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3, v4, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iget-object v1, p0, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->f:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v1, v0}, Lcom/baidu/sapi2/SapiWebView;->setProgressBar(Landroid/widget/ProgressBar;)V

    .line 136
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->f:Lcom/baidu/sapi2/SapiWebView;

    new-instance v1, Lcom/baidu/platformsdk/SapiLoginProxyActivity$2;

    invoke-direct {v1, p0}, Lcom/baidu/platformsdk/SapiLoginProxyActivity$2;-><init>(Lcom/baidu/platformsdk/SapiLoginProxyActivity;)V

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiWebView;->setOnBackCallback(Lcom/baidu/sapi2/SapiWebView$OnBackCallback;)V

    .line 142
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->f:Lcom/baidu/sapi2/SapiWebView;

    new-instance v1, Lcom/baidu/platformsdk/SapiLoginProxyActivity$3;

    invoke-direct {v1, p0}, Lcom/baidu/platformsdk/SapiLoginProxyActivity$3;-><init>(Lcom/baidu/platformsdk/SapiLoginProxyActivity;)V

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiWebView;->setOnFinishCallback(Lcom/baidu/sapi2/SapiWebView$OnFinishCallback;)V

    .line 149
    return-void
.end method

.method static synthetic c(Lcom/baidu/platformsdk/SapiLoginProxyActivity;)V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->d()V

    return-void
.end method

.method private d()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 152
    invoke-virtual {p0}, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_content_frame"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->e:Landroid/widget/FrameLayout;

    .line 154
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->e:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->f:Lcom/baidu/sapi2/SapiWebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    return-void
.end method

.method static synthetic d(Lcom/baidu/platformsdk/SapiLoginProxyActivity;)V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->e()V

    return-void
.end method

.method private e()V
    .registers 5

    .prologue
    .line 159
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/baidu/platformsdk/SapiLoginProxyActivity$4;

    invoke-direct {v1, p0}, Lcom/baidu/platformsdk/SapiLoginProxyActivity$4;-><init>(Lcom/baidu/platformsdk/SapiLoginProxyActivity;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 188
    return-void
.end method

.method static synthetic e(Lcom/baidu/platformsdk/SapiLoginProxyActivity;)V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->f()V

    return-void
.end method

.method static synthetic f(Lcom/baidu/platformsdk/SapiLoginProxyActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->l:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->f:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 201
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->f:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiWebView;->goBack()V

    .line 205
    :goto_d
    return-void

    .line 203
    :cond_e
    invoke-virtual {p0}, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->finish()V

    goto :goto_d
.end method

.method static synthetic g(Lcom/baidu/platformsdk/SapiLoginProxyActivity;)Lcom/baidu/sapi2/SapiWebView;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->f:Lcom/baidu/sapi2/SapiWebView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->h:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_8

    .line 193
    invoke-virtual {p0}, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->finish()V

    .line 197
    :cond_7
    :goto_7
    return-void

    .line 194
    :cond_8
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->g:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_7

    .line 195
    invoke-direct {p0}, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->f()V

    goto :goto_7
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/baidu/platformsdk/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 82
    invoke-virtual {p0}, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kw;->f(Landroid/content/Context;)I

    move-result v0

    .line 83
    invoke-direct {p0, v0}, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->a(I)V

    .line 84
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 61
    invoke-super {p0, p1}, Lcom/baidu/platformsdk/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_transparent"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 64
    invoke-virtual {p0}, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_web_frame"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->setContentView(I)V

    .line 66
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/ll;->a(Landroid/app/Activity;)V

    .line 67
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->c:Landroid/view/LayoutInflater;

    .line 68
    const-string v0, "bdp_paycenter_title_frame"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->d:Landroid/widget/FrameLayout;

    .line 69
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/lu;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/lu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->j:Lcom/baidu/bdgame/sdk/obf/lu;

    .line 70
    invoke-direct {p0}, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->a()V

    .line 71
    invoke-virtual {p0}, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kw;->f(Landroid/content/Context;)I

    move-result v0

    .line 72
    invoke-direct {p0, v0}, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->a(I)V

    .line 73
    invoke-virtual {p0}, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setLayout(II)V

    .line 75
    invoke-virtual {p0, v4, v4}, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->overridePendingTransition(II)V

    .line 76
    invoke-direct {p0}, Lcom/baidu/platformsdk/SapiLoginProxyActivity;->b()V

    .line 77
    return-void
.end method
