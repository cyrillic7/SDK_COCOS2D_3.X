.class public Lcom/baidu/platformsdk/ThirdPartyLoginActivity;
.super Lcom/baidu/platformsdk/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/platformsdk/ThirdPartyLoginActivity$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "set_result_intent_key_result_code"

.field public static final b:Ljava/lang/String; = "set_result_intent_key_result_data"


# instance fields
.field private c:Landroid/webkit/WebView;

.field private d:Landroid/widget/ProgressBar;

.field private e:Lcom/baidu/bdgame/sdk/obf/at;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/baidu/platformsdk/BaseActivity;-><init>()V

    .line 118
    return-void
.end method

.method private a()Landroid/view/View;
    .registers 7

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 64
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/baidu/platformsdk/ThirdPartyLoginActivity;->c:Landroid/webkit/WebView;

    .line 66
    new-instance v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    const v3, 0x1010077

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/baidu/platformsdk/ThirdPartyLoginActivity;->d:Landroid/widget/ProgressBar;

    .line 67
    iget-object v1, p0, Lcom/baidu/platformsdk/ThirdPartyLoginActivity;->d:Landroid/widget/ProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 68
    iget-object v1, p0, Lcom/baidu/platformsdk/ThirdPartyLoginActivity;->d:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 69
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 70
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 71
    iget-object v2, p0, Lcom/baidu/platformsdk/ThirdPartyLoginActivity;->c:Landroid/webkit/WebView;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    iget-object v2, p0, Lcom/baidu/platformsdk/ThirdPartyLoginActivity;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    return-object v0
.end method

.method public static final a(Landroid/app/Activity;ILcom/baidu/bdgame/sdk/obf/at;)V
    .registers 5

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/baidu/platformsdk/ThirdPartyLoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    const-string v1, "ThirdPlatformConfig"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 47
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/baidu/platformsdk/ThirdPartyLoginActivity;)V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/baidu/platformsdk/ThirdPartyLoginActivity;->d()V

    return-void
.end method

.method private b()V
    .registers 3

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/baidu/platformsdk/ThirdPartyLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 78
    invoke-virtual {p0}, Lcom/baidu/platformsdk/ThirdPartyLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ThirdPlatformConfig"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/at;

    iput-object v0, p0, Lcom/baidu/platformsdk/ThirdPartyLoginActivity;->e:Lcom/baidu/bdgame/sdk/obf/at;

    .line 80
    :cond_14
    return-void
.end method

.method static synthetic b(Lcom/baidu/platformsdk/ThirdPartyLoginActivity;)V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/baidu/platformsdk/ThirdPartyLoginActivity;->e()V

    return-void
.end method

.method static synthetic c(Lcom/baidu/platformsdk/ThirdPartyLoginActivity;)Lcom/baidu/bdgame/sdk/obf/at;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/platformsdk/ThirdPartyLoginActivity;->e:Lcom/baidu/bdgame/sdk/obf/at;

    return-object v0
.end method

.method private c()V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 84
    iget-object v0, p0, Lcom/baidu/platformsdk/ThirdPartyLoginActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 85
    iget-object v0, p0, Lcom/baidu/platformsdk/ThirdPartyLoginActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 86
    iget-object v0, p0, Lcom/baidu/platformsdk/ThirdPartyLoginActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 87
    iget-object v0, p0, Lcom/baidu/platformsdk/ThirdPartyLoginActivity;->c:Landroid/webkit/WebView;

    new-instance v1, Lcom/baidu/platformsdk/ThirdPartyLoginActivity$1;

    invoke-direct {v1, p0}, Lcom/baidu/platformsdk/ThirdPartyLoginActivity$1;-><init>(Lcom/baidu/platformsdk/ThirdPartyLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 96
    iget-object v0, p0, Lcom/baidu/platformsdk/ThirdPartyLoginActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 97
    iget-object v0, p0, Lcom/baidu/platformsdk/ThirdPartyLoginActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 98
    iget-object v0, p0, Lcom/baidu/platformsdk/ThirdPartyLoginActivity;->c:Landroid/webkit/WebView;

    new-instance v1, Lcom/baidu/platformsdk/ThirdPartyLoginActivity$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/baidu/platformsdk/ThirdPartyLoginActivity$a;-><init>(Lcom/baidu/platformsdk/ThirdPartyLoginActivity;Lcom/baidu/platformsdk/ThirdPartyLoginActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 99
    iget-object v0, p0, Lcom/baidu/platformsdk/ThirdPartyLoginActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 100
    iget-object v0, p0, Lcom/baidu/platformsdk/ThirdPartyLoginActivity;->e:Lcom/baidu/bdgame/sdk/obf/at;

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/baidu/platformsdk/ThirdPartyLoginActivity;->e:Lcom/baidu/bdgame/sdk/obf/at;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 101
    iget-object v0, p0, Lcom/baidu/platformsdk/ThirdPartyLoginActivity;->c:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/baidu/platformsdk/ThirdPartyLoginActivity;->e:Lcom/baidu/bdgame/sdk/obf/at;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/at;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 103
    :cond_60
    return-void
.end method

.method static synthetic d(Lcom/baidu/platformsdk/ThirdPartyLoginActivity;)Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/platformsdk/ThirdPartyLoginActivity;->c:Landroid/webkit/WebView;

    return-object v0
.end method

.method private d()V
    .registers 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/baidu/platformsdk/ThirdPartyLoginActivity;->d:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 107
    return-void
.end method

.method private e()V
    .registers 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/baidu/platformsdk/ThirdPartyLoginActivity;->d:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 111
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/baidu/platformsdk/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-direct {p0}, Lcom/baidu/platformsdk/ThirdPartyLoginActivity;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/ThirdPartyLoginActivity;->setContentView(Landroid/view/View;)V

    .line 54
    invoke-direct {p0}, Lcom/baidu/platformsdk/ThirdPartyLoginActivity;->b()V

    .line 55
    invoke-direct {p0}, Lcom/baidu/platformsdk/ThirdPartyLoginActivity;->c()V

    .line 56
    return-void
.end method
