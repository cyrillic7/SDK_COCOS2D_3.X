.class Lcom/baidu/sapi2/SapiWebView$FastRegAction;
.super Ljava/lang/Object;
.source "SapiWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/sapi2/SapiWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FastRegAction"
.end annotation


# static fields
.field private static final b:I = 0x0

.field private static final c:I = 0x1


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/SapiWebView;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:Landroid/os/Handler;

.field private h:Ljava/lang/Runnable;

.field private i:Landroid/os/Handler;

.field private j:I

.field private k:Landroid/os/Handler;

.field private l:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/baidu/sapi2/SapiWebView;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 2365
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2366
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->e:Z

    .line 2367
    iput-boolean v1, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->f:Z

    .line 2368
    iput v1, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->j:I

    .line 2369
    new-instance v0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$1;

    invoke-direct {v0, p0, p1}, Lcom/baidu/sapi2/SapiWebView$FastRegAction$1;-><init>(Lcom/baidu/sapi2/SapiWebView$FastRegAction;Lcom/baidu/sapi2/SapiWebView;)V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->g:Landroid/os/Handler;

    .line 2375
    new-instance v0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$2;

    invoke-direct {v0, p0, p1}, Lcom/baidu/sapi2/SapiWebView$FastRegAction$2;-><init>(Lcom/baidu/sapi2/SapiWebView$FastRegAction;Lcom/baidu/sapi2/SapiWebView;)V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->h:Ljava/lang/Runnable;

    .line 2381
    new-instance v0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$3;

    invoke-direct {v0, p0, p1}, Lcom/baidu/sapi2/SapiWebView$FastRegAction$3;-><init>(Lcom/baidu/sapi2/SapiWebView$FastRegAction;Lcom/baidu/sapi2/SapiWebView;)V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->i:Landroid/os/Handler;

    .line 2395
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->k:Landroid/os/Handler;

    .line 2396
    new-instance v0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$4;

    invoke-direct {v0, p0, p1}, Lcom/baidu/sapi2/SapiWebView$FastRegAction$4;-><init>(Lcom/baidu/sapi2/SapiWebView$FastRegAction;Lcom/baidu/sapi2/SapiWebView;)V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->l:Ljava/lang/Runnable;

    .line 2403
    return-void
.end method

.method private a()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u70b9\u51fb\u53d1\u9001\u76f4\u63a5\u6ce8\u518c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)V
    .registers 1
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    .prologue
    .line 2350
    invoke-direct {p0}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->b()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/sapi2/SapiWebView$FastRegAction;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView$FastRegAction;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2350
    invoke-direct {p0, p1}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/sapi2/SapiWebView$FastRegAction;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView$FastRegAction;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 2350
    invoke-direct {p0, p1, p2}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5
    .param p1, "phoneNum"    # Ljava/lang/String;

    .prologue
    .line 2589
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->a:Lcom/baidu/sapi2/SapiWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiAccountService;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&username="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#fastRegVerify"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;)V

    .line 2590
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "phone"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 2553
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v0

    new-instance v1, Lcom/baidu/sapi2/SapiWebView$FastRegAction$9;

    invoke-direct {v1, p0}, Lcom/baidu/sapi2/SapiWebView$FastRegAction$9;-><init>(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/baidu/sapi2/SapiAccountService;->a(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2586
    return-void
.end method

.method static synthetic a(Lcom/baidu/sapi2/SapiWebView$FastRegAction;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView$FastRegAction;
    .param p1, "x1"    # Z

    .prologue
    .line 2350
    iput-boolean p1, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    .prologue
    .line 2350
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->l:Ljava/lang/Runnable;

    return-object v0
.end method

.method private b()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 2410
    iget-boolean v2, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->e:Z

    if-eqz v2, :cond_b

    .line 2411
    invoke-direct {p0}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->d:Ljava/lang/String;

    .line 2414
    :cond_b
    iget-object v2, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/sapi2/utils/SapiUtils;->isSimReady(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 2415
    invoke-direct {p0}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->e()V

    .line 2466
    :goto_1a
    return-void

    .line 2420
    :cond_1b
    iget-object v2, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 2421
    invoke-direct {p0}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->e()V

    goto :goto_1a

    .line 2425
    :cond_2b
    iget-object v2, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v2}, Lcom/baidu/sapi2/SapiWebView;->d(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v2

    iget-boolean v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->fastRegConfirm:Z

    if-eqz v2, :cond_89

    .line 2426
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "\u63d0\u793a"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "\u53d1\u9001\u4e00\u6761\u77ed\u4fe1\uff0c\u5373\u53ef\u5b8c\u6210\u6ce8\u518c\u3002"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "\u786e\u5b9a"

    new-instance v4, Lcom/baidu/sapi2/SapiWebView$FastRegAction$6;

    invoke-direct {v4, p0}, Lcom/baidu/sapi2/SapiWebView$FastRegAction$6;-><init>(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "\u53d6\u6d88"

    new-instance v4, Lcom/baidu/sapi2/SapiWebView$FastRegAction$5;

    invoke-direct {v4, p0}, Lcom/baidu/sapi2/SapiWebView$FastRegAction$5;-><init>(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2450
    .local v0, "dialog":Landroid/app/AlertDialog;
    iget-object v2, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v2}, Lcom/baidu/sapi2/SapiWebView;->d(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v2

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->fastRegConfirmMsg:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7f

    .line 2451
    iget-object v2, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v2}, Lcom/baidu/sapi2/SapiWebView;->d(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v2

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->fastRegConfirmMsg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2453
    :cond_7f
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 2454
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 2455
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1a

    .line 2457
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :cond_89
    iget-object v2, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v4}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/sapi2/utils/SapiUtils;->getFastRegChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/baidu/sapi2/utils/SapiUtils;->sendSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 2458
    .local v1, "sendSuccess":Z
    if-eqz v1, :cond_b1

    .line 2459
    iget-object v2, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->g:Landroid/os/Handler;

    iget-object v3, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->h:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3a98

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2460
    iput-boolean v6, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->e:Z

    .line 2461
    invoke-direct {p0}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->d()V

    goto/16 :goto_1a

    .line 2463
    :cond_b1
    invoke-direct {p0}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->e()V

    goto/16 :goto_1a
.end method

.method static synthetic b(Lcom/baidu/sapi2/SapiWebView$FastRegAction;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView$FastRegAction;
    .param p1, "x1"    # Z

    .prologue
    .line 2350
    iput-boolean p1, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->e:Z

    return p1
.end method

.method static synthetic c(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    .prologue
    .line 2350
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->k:Landroid/os/Handler;

    return-object v0
.end method

.method private c()V
    .registers 3

    .prologue
    .line 2469
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2470
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->e:Z

    .line 2471
    return-void
.end method

.method static synthetic d(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    .prologue
    .line 2350
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->g:Landroid/os/Handler;

    return-object v0
.end method

.method private d()V
    .registers 4

    .prologue
    .line 2475
    iget-boolean v0, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->f:Z

    if-eqz v0, :cond_8

    .line 2476
    invoke-direct {p0}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->c()V

    .line 2522
    :goto_7
    return-void

    .line 2480
    :cond_8
    iget-boolean v0, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->e:Z

    if-eqz v0, :cond_17

    .line 2481
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2482
    invoke-direct {p0}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->e()V

    goto :goto_7

    .line 2486
    :cond_17
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v0

    new-instance v1, Lcom/baidu/sapi2/SapiWebView$FastRegAction$7;

    invoke-direct {v1, p0}, Lcom/baidu/sapi2/SapiWebView$FastRegAction$7;-><init>(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)V

    iget-object v2, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/sapi2/SapiAccountService;->a(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)Z

    goto :goto_7
.end method

.method static synthetic e(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    .prologue
    .line 2350
    invoke-direct {p0}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .registers 5

    .prologue
    .line 2525
    invoke-direct {p0}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->f()Ljava/lang/String;

    move-result-object v0

    .line 2526
    .local v0, "phoneNum":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 2527
    const/4 v1, 0x1

    iput v1, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->j:I

    .line 2528
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v1

    new-instance v2, Lcom/baidu/sapi2/SapiWebView$FastRegAction$8;

    invoke-direct {v2, p0}, Lcom/baidu/sapi2/SapiWebView$FastRegAction$8;-><init>(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)V

    invoke-virtual {v1, v2, v0}, Lcom/baidu/sapi2/SapiAccountService;->getDynamicPwd(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)Z

    .line 2549
    :goto_1d
    return-void

    .line 2547
    :cond_1e
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->a:Lcom/baidu/sapi2/SapiWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiAccountService;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&regLink=0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#sms_login"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1d
.end method

.method static synthetic f(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)I
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    .prologue
    .line 2350
    iget v0, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->j:I

    return v0
.end method

.method private f()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2593
    iget-object v2, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 2594
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 2595
    .local v0, "phoneNum":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 2596
    const/4 v2, 0x0

    .line 2598
    :goto_19
    return-object v2

    :cond_1a
    const-string v2, "+86"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_19
.end method

.method static synthetic g(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    .prologue
    .line 2350
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    .prologue
    .line 2350
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->h:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic i(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)V
    .registers 1
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    .prologue
    .line 2350
    invoke-direct {p0}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->d()V

    return-void
.end method

.method static synthetic j(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)V
    .registers 1
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    .prologue
    .line 2350
    invoke-direct {p0}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->e()V

    return-void
.end method

.method static synthetic k(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)V
    .registers 1
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    .prologue
    .line 2350
    invoke-direct {p0}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->c()V

    return-void
.end method

.method static synthetic l(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    .prologue
    .line 2350
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->i:Landroid/os/Handler;

    return-object v0
.end method
