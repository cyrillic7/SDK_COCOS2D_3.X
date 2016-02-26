.class public Lcom/baidu/bdgame/sdk/obf/mj;
.super Lcom/baidu/bdgame/sdk/obf/cd;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/EditText;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/Button;

.field private o:Z

.field private p:Z


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ce;)V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 76
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cd;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    .line 71
    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->o:Z

    .line 73
    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->p:Z

    .line 77
    sget-object v0, Lcom/baidu/sapi2/utils/StatEvent;->PV_QUICK_USER_REG:Lcom/baidu/sapi2/utils/StatEvent;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/StatService;->onEvent(Lcom/baidu/sapi2/utils/StatEvent;)V

    .line 78
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/mj;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/mj;Z)Z
    .registers 2

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/baidu/bdgame/sdk/obf/mj;->o:Z

    return p1
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/mj;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/mj;Z)V
    .registers 2

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/mj;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .registers 4

    .prologue
    .line 439
    if-eqz p1, :cond_9

    .line 440
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->h:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 444
    :goto_8
    return-void

    .line 442
    :cond_9
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->h:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_8
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/mj;)V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/mj;->n()V

    return-void
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/mj;Z)V
    .registers 2

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/mj;->c(Z)V

    return-void
.end method

.method private c(Z)V
    .registers 5

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 451
    if-eqz p1, :cond_1a

    .line 452
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 453
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 454
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->l:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 460
    :goto_19
    return-void

    .line 456
    :cond_1a
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 457
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 458
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->l:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_19
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/mj;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lcom/baidu/bdgame/sdk/obf/mj;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method private f()V
    .registers 5

    .prologue
    .line 295
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kx;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/mj;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 297
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/mj;->i:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 298
    new-instance v3, Lcom/baidu/sapi2/dto/QuickUserRegDTO;

    invoke-direct {v3}, Lcom/baidu/sapi2/dto/QuickUserRegDTO;-><init>()V

    .line 299
    iput-object v0, v3, Lcom/baidu/sapi2/dto/QuickUserRegDTO;->username:Ljava/lang/String;

    .line 300
    iput-object v1, v3, Lcom/baidu/sapi2/dto/QuickUserRegDTO;->password:Ljava/lang/String;

    .line 301
    iput-object v2, v3, Lcom/baidu/sapi2/dto/QuickUserRegDTO;->captcha:Ljava/lang/String;

    .line 302
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v1

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/mj$16;

    invoke-direct {v2, p0, v0}, Lcom/baidu/bdgame/sdk/obf/mj$16;-><init>(Lcom/baidu/bdgame/sdk/obf/mj;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/baidu/sapi2/SapiAccountService;->quickUserReg(Lcom/baidu/sapi2/callback/QuickUserRegCallback;Lcom/baidu/sapi2/dto/QuickUserRegDTO;)V

    .line 381
    return-void
.end method

.method static synthetic f(Lcom/baidu/bdgame/sdk/obf/mj;)Z
    .registers 2

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->o:Z

    return v0
.end method

.method static synthetic g(Lcom/baidu/bdgame/sdk/obf/mj;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method private g()V
    .registers 3

    .prologue
    .line 385
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountService;->getCaptchaKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 386
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v0

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/mj$17;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/mj$17;-><init>(Lcom/baidu/bdgame/sdk/obf/mj;)V

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiAccountService;->getCaptcha(Lcom/baidu/sapi2/callback/SapiCallback;)V

    .line 413
    :cond_22
    return-void
.end method

.method static synthetic h(Lcom/baidu/bdgame/sdk/obf/mj;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->i:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic i(Lcom/baidu/bdgame/sdk/obf/mj;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->j:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic j(Lcom/baidu/bdgame/sdk/obf/mj;)V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/mj;->g()V

    return-void
.end method

.method static synthetic k(Lcom/baidu/bdgame/sdk/obf/mj;)V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/mj;->f()V

    return-void
.end method

.method static synthetic l(Lcom/baidu/bdgame/sdk/obf/mj;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->k:Landroid/widget/ImageView;

    return-object v0
.end method

.method private n()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 416
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 417
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/mj;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 418
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/mj;->i:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 419
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 420
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->n:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 432
    :goto_2a
    return-void

    .line 423
    :cond_2b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_3e

    .line 424
    :cond_38
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->n:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2a

    .line 427
    :cond_3e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_52

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 428
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->n:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2a

    .line 431
    :cond_52
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->n:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2a
.end method


# virtual methods
.method protected a(Landroid/app/Activity;)Landroid/view/View;
    .registers 5

    .prologue
    .line 82
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "bdp_view_controller_account_register_baidu"

    invoke-static {p1, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 83
    const-string v0, "txt_back"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->a:Landroid/widget/TextView;

    .line 84
    const-string v0, "img_close"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->b:Landroid/widget/ImageView;

    .line 85
    const-string v0, "edt_account"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->c:Landroid/widget/EditText;

    .line 86
    const-string v0, "img_account_del"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->d:Landroid/widget/ImageView;

    .line 87
    const-string v0, "edt_pass"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->e:Landroid/widget/EditText;

    .line 88
    const-string v0, "img_pass_del"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->f:Landroid/widget/ImageView;

    .line 89
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mj;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "img_password_show"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->g:Landroid/widget/ImageView;

    .line 90
    const-string v0, "lin_verifycode"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->h:Landroid/widget/LinearLayout;

    .line 91
    const-string v0, "edt_verifycode"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->i:Landroid/widget/EditText;

    .line 92
    const-string v0, "img_verifycode_del"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->j:Landroid/widget/ImageView;

    .line 93
    const-string v0, "img_verifycode"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->k:Landroid/widget/ImageView;

    .line 94
    const-string v0, "img_verifycode_loading"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->l:Landroid/widget/ImageView;

    .line 95
    const-string v0, "img_change_verifycode"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->m:Landroid/widget/ImageView;

    .line 96
    const-string v0, "btn_register"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->n:Landroid/widget/Button;

    .line 97
    return-object v1
.end method

.method protected a(Landroid/app/Activity;Landroid/view/View;)V
    .registers 5

    .prologue
    .line 102
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->a:Landroid/widget/TextView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/mj$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/mj$1;-><init>(Lcom/baidu/bdgame/sdk/obf/mj;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->b:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/mj$2;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/mj$2;-><init>(Lcom/baidu/bdgame/sdk/obf/mj;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 119
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/mj$3;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/mj$3;-><init>(Lcom/baidu/bdgame/sdk/obf/mj;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 138
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/mj$4;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/mj$4;-><init>(Lcom/baidu/bdgame/sdk/obf/mj;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 149
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/mj$5;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/mj$5;-><init>(Lcom/baidu/bdgame/sdk/obf/mj;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 157
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->e:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/mj$6;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/mj$6;-><init>(Lcom/baidu/bdgame/sdk/obf/mj;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 176
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->e:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/mj$7;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/mj$7;-><init>(Lcom/baidu/bdgame/sdk/obf/mj;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 187
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->e:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/mj$8;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/mj$8;-><init>(Lcom/baidu/bdgame/sdk/obf/mj;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 195
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->f:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/mj$9;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/mj$9;-><init>(Lcom/baidu/bdgame/sdk/obf/mj;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/mj$10;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/mj$10;-><init>(Lcom/baidu/bdgame/sdk/obf/mj;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->i:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 219
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->i:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/mj$11;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/mj$11;-><init>(Lcom/baidu/bdgame/sdk/obf/mj;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 238
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->i:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/mj$12;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/mj$12;-><init>(Lcom/baidu/bdgame/sdk/obf/mj;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 249
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->j:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/mj$13;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/mj$13;-><init>(Lcom/baidu/bdgame/sdk/obf/mj;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->m:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/mj$14;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/mj$14;-><init>(Lcom/baidu/bdgame/sdk/obf/mj;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->n:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 264
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->n:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/mj$15;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/mj$15;-><init>(Lcom/baidu/bdgame/sdk/obf/mj;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/mj;->n()V

    .line 292
    return-void
.end method

.method protected a(Lcom/baidu/sapi2/utils/StatEvent;)V
    .registers 3

    .prologue
    .line 464
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->p:Z

    if-eqz v0, :cond_a

    .line 465
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/mj;->p:Z

    .line 466
    invoke-static {p1}, Lcom/baidu/sapi2/utils/StatService;->onEvent(Lcom/baidu/sapi2/utils/StatEvent;)V

    .line 468
    :cond_a
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 472
    sget-object v0, Lcom/baidu/sapi2/utils/StatEvent;->OP_QUICK_USER_REG:Lcom/baidu/sapi2/utils/StatEvent;

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/mj;->a(Lcom/baidu/sapi2/utils/StatEvent;)V

    .line 473
    const/4 v0, 0x0

    return v0
.end method
