.class public Lcom/baidu/bdgame/sdk/obf/jo;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/jo$a;
    }
.end annotation


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ProgressBar;

.field private g:Z

.field private h:I

.field private i:Lcom/baidu/bdgame/sdk/obf/jo$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/jo;->h:I

    .line 55
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/jo;->a(Landroid/app/Activity;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/jo;->h:I

    .line 60
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/jo;->a(Landroid/app/Activity;)V

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/jo;I)I
    .registers 2

    .prologue
    .line 34
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/jo;->h:I

    return p1
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/jo;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jo;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a(Landroid/app/Activity;)V
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v5, -0x2

    const/4 v4, 0x5

    const/4 v3, 0x1

    .line 64
    invoke-virtual {p0, v3}, Lcom/baidu/bdgame/sdk/obf/jo;->setOrientation(I)V

    .line 65
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 66
    const/high16 v1, 0x3f800000

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 67
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jo;->a:Landroid/webkit/WebView;

    .line 68
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jo;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 69
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jo;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 70
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jo;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 72
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jo;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 73
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jo;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 74
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jo;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 75
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jo;->a:Landroid/webkit/WebView;

    const/16 v2, 0x19

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 76
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jo;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jo;->a:Landroid/webkit/WebView;

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/jo$1;

    invoke-direct {v2, p0}, Lcom/baidu/bdgame/sdk/obf/jo$1;-><init>(Lcom/baidu/bdgame/sdk/obf/jo;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 116
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jo;->a:Landroid/webkit/WebView;

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/jo$2;

    invoke-direct {v2, p0}, Lcom/baidu/bdgame/sdk/obf/jo$2;-><init>(Lcom/baidu/bdgame/sdk/obf/jo;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 133
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jo;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/jo$3;

    invoke-direct {v2, p0}, Lcom/baidu/bdgame/sdk/obf/jo$3;-><init>(Lcom/baidu/bdgame/sdk/obf/jo;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 149
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jo;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 150
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jo;->a:Landroid/webkit/WebView;

    const/16 v2, 0x14

    invoke-virtual {v1, v4, v4, v4, v2}, Landroid/webkit/WebView;->setPadding(IIII)V

    .line 151
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jo;->a:Landroid/webkit/WebView;

    invoke-virtual {p0, v1, v0}, Lcom/baidu/bdgame/sdk/obf/jo;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 154
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/jo;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x1010078

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jo;->f:Landroid/widget/ProgressBar;

    .line 156
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jo;->f:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/jo;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/jo;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "bdp_web_progressbar"

    invoke-static {v3, v4}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 158
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jo;->f:Landroid/widget/ProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 159
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jo;->f:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1, v0}, Lcom/baidu/bdgame/sdk/obf/jo;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 162
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/jo;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jo;->b:Landroid/widget/LinearLayout;

    .line 163
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/jo;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kw;->a(Landroid/content/Context;F)I

    move-result v1

    .line 164
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/jo;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 165
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jo;->b:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 166
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jo;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/jo;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "bdp_web_bg_bbs_menu"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 167
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jo;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Lcom/baidu/bdgame/sdk/obf/jo;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 171
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/jo;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jo;->c:Landroid/widget/ImageView;

    .line 172
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/jo;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jo;->d:Landroid/widget/ImageView;

    .line 173
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/jo;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jo;->e:Landroid/widget/ImageView;

    .line 174
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jo;->e:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/jo;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "bdp_web_menu_bbs_5"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 175
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jo;->b:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/jo;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jo;->b:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/jo;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jo;->b:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/jo;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jo;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/jo$4;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/jo$4;-><init>(Lcom/baidu/bdgame/sdk/obf/jo;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jo;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/jo$5;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/jo$5;-><init>(Lcom/baidu/bdgame/sdk/obf/jo;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jo;->e:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/jo$6;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/jo$6;-><init>(Lcom/baidu/bdgame/sdk/obf/jo;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jo;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/jo$7;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/jo$7;-><init>(Lcom/baidu/bdgame/sdk/obf/jo;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 214
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/jo;->f()V

    .line 215
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/jo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/jo;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smsto:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 224
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 225
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/jo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 226
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/jo;Z)Z
    .registers 2

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/baidu/bdgame/sdk/obf/jo;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/jo;)V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/jo;->f()V

    return-void
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/jo;)V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/jo;->d()V

    return-void
.end method

.method private d()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 243
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jo;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 244
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jo;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 245
    return-void
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/jo;)V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/jo;->e()V

    return-void
.end method

.method static synthetic e(Lcom/baidu/bdgame/sdk/obf/jo;)Landroid/widget/ProgressBar;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jo;->f:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private e()V
    .registers 3

    .prologue
    .line 248
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jo;->f:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 249
    return-void
.end method

.method static synthetic f(Lcom/baidu/bdgame/sdk/obf/jo;)Lcom/baidu/bdgame/sdk/obf/jo$a;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jo;->i:Lcom/baidu/bdgame/sdk/obf/jo$a;

    return-object v0
.end method

.method private f()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 255
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jo;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 256
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jo;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 257
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jo;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/jo;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_web_menu_bbs_0"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 262
    :goto_1e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jo;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 263
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jo;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 264
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jo;->d:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/jo;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_web_menu_bbs_1"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 269
    :goto_3a
    return-void

    .line 259
    :cond_3b
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jo;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 260
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jo;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/jo;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_web_menu_bbs_0_disable"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1e

    .line 266
    :cond_50
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jo;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 267
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jo;->d:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/jo;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_web_menu_bbs_1_disable"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3a
.end method

.method static synthetic g(Lcom/baidu/bdgame/sdk/obf/jo;)I
    .registers 2

    .prologue
    .line 34
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/jo;->h:I

    return v0
.end method

.method static synthetic h(Lcom/baidu/bdgame/sdk/obf/jo;)Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jo;->a:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic i(Lcom/baidu/bdgame/sdk/obf/jo;)Z
    .registers 2

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/jo;->g:Z

    return v0
.end method


# virtual methods
.method public a(I)V
    .registers 7

    .prologue
    const/4 v4, -0x1

    .line 272
    const/4 v0, 0x2

    if-ne p1, v0, :cond_19

    .line 273
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jo;->b:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/jo;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42100000

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kw;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v1, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    :goto_18
    return-void

    .line 275
    :cond_19
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jo;->b:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/jo;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42300000

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kw;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v1, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_18
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/jo$a;)V
    .registers 2

    .prologue
    .line 306
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/jo;->i:Lcom/baidu/bdgame/sdk/obf/jo$a;

    .line 307
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/jo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jo;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jo;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 286
    :cond_1c
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jo;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 288
    :cond_21
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jo;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 234
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/jo;->e()V

    .line 235
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jo;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 236
    const/4 v0, 0x1

    .line 238
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public b()Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jo;->a:Landroid/webkit/WebView;

    return-object v0
.end method

.method public b(I)V
    .registers 3

    .prologue
    .line 296
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jo;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 297
    return-void
.end method

.method public c()V
    .registers 1

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/jo;->removeAllViews()V

    .line 313
    return-void
.end method
