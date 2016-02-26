.class public Lcom/baidu/bdgame/sdk/obf/ms;
.super Lcom/baidu/bdgame/sdk/obf/cd;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/ms$a;
    }
.end annotation


# static fields
.field private static final a:I = 0x0

.field private static final b:I = 0x1


# instance fields
.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/EditText;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/Button;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/ImageView;

.field private s:I

.field private t:Z

.field private u:I

.field private v:Lcom/baidu/bdgame/sdk/obf/ms$a;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ce;)V
    .registers 3

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cd;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->t:Z

    .line 81
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ms;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method private a(I)V
    .registers 6

    .prologue
    const/4 v3, 0x4

    .line 220
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/ms;->s:I

    .line 221
    packed-switch p1, :pswitch_data_90

    .line 243
    :goto_6
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ms;->f()V

    .line 244
    return-void

    .line 223
    :pswitch_a
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->e:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ms;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_login_hint_account_baidu"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 224
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->c:Landroid/widget/TextView;

    const-string v1, "#ffffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 225
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->d:Landroid/widget/TextView;

    const-string v1, "#ff90bcff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 226
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->p:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ms;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_upgrade_btn_login"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 227
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ms;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/li;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 228
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 230
    :cond_4e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->q:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 234
    :pswitch_55
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->e:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ms;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_register_hint_account_baidu"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 235
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->c:Landroid/widget/TextView;

    const-string v1, "#ff90bcff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 236
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->d:Landroid/widget/TextView;

    const-string v1, "#ffffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 237
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->p:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ms;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_upgrade_btn_register"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 238
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 221
    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_a
        :pswitch_55
    .end packed-switch
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ms;Lcom/baidu/sapi2/dto/LoginDTO$LoginType;)V
    .registers 2

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ms;->a(Lcom/baidu/sapi2/dto/LoginDTO$LoginType;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ms;Z)V
    .registers 2

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ms;->b(Z)V

    return-void
.end method

.method private a(Lcom/baidu/sapi2/dto/LoginDTO$LoginType;)V
    .registers 6

    .prologue
    .line 385
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kx;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 386
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ms;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 387
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ms;->k:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 388
    new-instance v3, Lcom/baidu/sapi2/dto/LoginDTO;

    invoke-direct {v3}, Lcom/baidu/sapi2/dto/LoginDTO;-><init>()V

    .line 389
    iput-object v0, v3, Lcom/baidu/sapi2/dto/LoginDTO;->account:Ljava/lang/String;

    .line 390
    iput-object v1, v3, Lcom/baidu/sapi2/dto/LoginDTO;->password:Ljava/lang/String;

    .line 391
    iput-object v2, v3, Lcom/baidu/sapi2/dto/LoginDTO;->captcha:Ljava/lang/String;

    .line 392
    iput-object p1, v3, Lcom/baidu/sapi2/dto/LoginDTO;->loginType:Lcom/baidu/sapi2/dto/LoginDTO$LoginType;

    .line 394
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ms;->l()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/baidu/platformsdk/LoginActivity;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ms$7;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ms$7;-><init>(Lcom/baidu/bdgame/sdk/obf/ms;)V

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/LoginActivity;->a(Lcom/baidu/platformsdk/LoginActivity$a;)V

    .line 403
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v0

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ms$8;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ms$8;-><init>(Lcom/baidu/bdgame/sdk/obf/ms;)V

    invoke-virtual {v0, v1, v3}, Lcom/baidu/sapi2/SapiAccountService;->login(Lcom/baidu/sapi2/callback/LoginCallback;Lcom/baidu/sapi2/dto/LoginDTO;)V

    .line 467
    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/ms;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/ms;Z)V
    .registers 2

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ms;->c(Z)V

    return-void
.end method

.method private b(Z)V
    .registers 5

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 302
    if-eqz p1, :cond_1a

    .line 303
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->n:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 311
    :goto_19
    return-void

    .line 307
    :cond_1a
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->n:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_19
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/ms;)V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ms;->f()V

    return-void
.end method

.method private c(Z)V
    .registers 4

    .prologue
    .line 551
    if-eqz p1, :cond_9

    .line 552
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->j:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 556
    :goto_8
    return-void

    .line 554
    :cond_9
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->j:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_8
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/ms;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lcom/baidu/bdgame/sdk/obf/ms;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic f(Lcom/baidu/bdgame/sdk/obf/ms;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->k:Landroid/widget/EditText;

    return-object v0
.end method

.method private f()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 247
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ms;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 249
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ms;->k:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 250
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 251
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->p:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 263
    :goto_2a
    return-void

    .line 254
    :cond_2b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 255
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->p:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2a

    .line 258
    :cond_37
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4b

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 259
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->p:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2a

    .line 262
    :cond_4b
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->p:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2a
.end method

.method static synthetic g(Lcom/baidu/bdgame/sdk/obf/ms;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->l:Landroid/widget/ImageView;

    return-object v0
.end method

.method private g()V
    .registers 3

    .prologue
    .line 267
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountService;->getCaptchaKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 268
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v0

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ms$5;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ms$5;-><init>(Lcom/baidu/bdgame/sdk/obf/ms;)V

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiAccountService;->getCaptcha(Lcom/baidu/sapi2/callback/SapiCallback;)V

    .line 295
    :cond_22
    return-void
.end method

.method static synthetic h(Lcom/baidu/bdgame/sdk/obf/ms;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->m:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic i(Lcom/baidu/bdgame/sdk/obf/ms;)V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ms;->n()V

    return-void
.end method

.method static synthetic j(Lcom/baidu/bdgame/sdk/obf/ms;)I
    .registers 2

    .prologue
    .line 51
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->u:I

    return v0
.end method

.method static synthetic k(Lcom/baidu/bdgame/sdk/obf/ms;)V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ms;->p()V

    return-void
.end method

.method static synthetic l(Lcom/baidu/bdgame/sdk/obf/ms;)V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ms;->g()V

    return-void
.end method

.method static synthetic m(Lcom/baidu/bdgame/sdk/obf/ms;)V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ms;->q()V

    return-void
.end method

.method private n()V
    .registers 3

    .prologue
    .line 368
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->s:I

    packed-switch v0, :pswitch_data_2a

    .line 382
    :goto_5
    return-void

    .line 371
    :pswitch_6
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ms;->k()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/bs;->a(I)Lcom/baidu/bdgame/sdk/obf/bs;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bv;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bs;)V

    .line 373
    sget-object v0, Lcom/baidu/sapi2/dto/LoginDTO$LoginType;->MERGE:Lcom/baidu/sapi2/dto/LoginDTO$LoginType;

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ms;->a(Lcom/baidu/sapi2/dto/LoginDTO$LoginType;)V

    goto :goto_5

    .line 377
    :pswitch_19
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ms;->k()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x30

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/bs;->a(I)Lcom/baidu/bdgame/sdk/obf/bs;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bv;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bs;)V

    .line 379
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ms;->o()V

    goto :goto_5

    .line 368
    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_6
        :pswitch_19
    .end packed-switch
.end method

.method private o()V
    .registers 5

    .prologue
    .line 470
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kx;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 471
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ms;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 472
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ms;->k:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 473
    new-instance v3, Lcom/baidu/sapi2/dto/QuickUserRegDTO;

    invoke-direct {v3}, Lcom/baidu/sapi2/dto/QuickUserRegDTO;-><init>()V

    .line 474
    iput-object v0, v3, Lcom/baidu/sapi2/dto/QuickUserRegDTO;->username:Ljava/lang/String;

    .line 475
    iput-object v1, v3, Lcom/baidu/sapi2/dto/QuickUserRegDTO;->password:Ljava/lang/String;

    .line 476
    iput-object v2, v3, Lcom/baidu/sapi2/dto/QuickUserRegDTO;->captcha:Ljava/lang/String;

    .line 477
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v0

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ms$9;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ms$9;-><init>(Lcom/baidu/bdgame/sdk/obf/ms;)V

    invoke-virtual {v0, v1, v3}, Lcom/baidu/sapi2/SapiAccountService;->quickUserReg(Lcom/baidu/sapi2/callback/QuickUserRegCallback;Lcom/baidu/sapi2/dto/QuickUserRegDTO;)V

    .line 536
    return-void
.end method

.method private p()V
    .registers 3

    .prologue
    .line 539
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ms;->k()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_dialog_loading_login"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ms;->c(I)V

    .line 540
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    const-string v1, "bduss"

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiAccountManager;->getSession(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 541
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ms;->v:Lcom/baidu/bdgame/sdk/obf/ms$a;

    if-eqz v1, :cond_20

    .line 542
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ms;->v:Lcom/baidu/bdgame/sdk/obf/ms$a;

    invoke-interface {v1, v0}, Lcom/baidu/bdgame/sdk/obf/ms$a;->a(Ljava/lang/String;)V

    .line 544
    :cond_20
    return-void
.end method

.method private q()V
    .registers 5

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ms;->l()Landroid/app/Activity;

    move-result-object v0

    .line 560
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_43

    .line 561
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/lt;

    invoke-direct {v1, v0}, Lcom/baidu/bdgame/sdk/obf/lt;-><init>(Landroid/content/Context;)V

    .line 562
    const-string v2, "bdp_account_login_type_confirm"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lt;->a(Ljava/lang/String;)V

    .line 563
    const-string v2, "bdp_account_login_type_confirm_phone"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/baidu/bdgame/sdk/obf/ms$10;

    invoke-direct {v3, p0, v1}, Lcom/baidu/bdgame/sdk/obf/ms$10;-><init>(Lcom/baidu/bdgame/sdk/obf/ms;Lcom/baidu/bdgame/sdk/obf/lt;)V

    invoke-virtual {v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/lt;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 571
    const-string v2, "bdp_account_login_type_confirm_username"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/ms$11;

    invoke-direct {v2, p0, v1}, Lcom/baidu/bdgame/sdk/obf/ms$11;-><init>(Lcom/baidu/bdgame/sdk/obf/ms;Lcom/baidu/bdgame/sdk/obf/lt;)V

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/lt;->b(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 579
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/lt;->show()V

    .line 581
    :cond_43
    return-void
.end method


# virtual methods
.method protected a(Landroid/app/Activity;)Landroid/view/View;
    .registers 5

    .prologue
    .line 85
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "bdp_view_controller_user_upgrade"

    invoke-static {p1, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 86
    const-string v0, "txt_tab_login"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->c:Landroid/widget/TextView;

    .line 87
    const-string v0, "txt_tab_register"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->d:Landroid/widget/TextView;

    .line 88
    const-string v0, "edt_account"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->e:Landroid/widget/EditText;

    .line 89
    const-string v0, "img_account_del"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->f:Landroid/widget/ImageView;

    .line 90
    const-string v0, "edt_pass"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->g:Landroid/widget/EditText;

    .line 91
    const-string v0, "img_pass_del"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->h:Landroid/widget/ImageView;

    .line 92
    const-string v0, "img_show_pwd"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->i:Landroid/widget/ImageView;

    .line 93
    const-string v0, "lin_verifycode"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->j:Landroid/widget/LinearLayout;

    .line 94
    const-string v0, "edt_verifycode"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->k:Landroid/widget/EditText;

    .line 95
    const-string v0, "img_verifycode_del"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->l:Landroid/widget/ImageView;

    .line 96
    const-string v0, "img_verifycode"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->m:Landroid/widget/ImageView;

    .line 97
    const-string v0, "img_verifycode_loading"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->n:Landroid/widget/ImageView;

    .line 98
    const-string v0, "img_change_verifycode"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->o:Landroid/widget/ImageView;

    .line 99
    const-string v0, "btn_submit"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->p:Landroid/widget/Button;

    .line 100
    const-string v0, "txt_fast_upgrade"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->q:Landroid/widget/TextView;

    .line 101
    const-string v0, "img_close"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->r:Landroid/widget/ImageView;

    .line 102
    return-object v1
.end method

.method protected a(Landroid/app/Activity;Landroid/view/View;)V
    .registers 5

    .prologue
    .line 107
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->e:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ms$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ms$1;-><init>(Lcom/baidu/bdgame/sdk/obf/ms;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 128
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->e:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ms$12;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ms$12;-><init>(Lcom/baidu/bdgame/sdk/obf/ms;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 139
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->g:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ms$13;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ms$13;-><init>(Lcom/baidu/bdgame/sdk/obf/ms;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 160
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->g:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ms$14;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ms$14;-><init>(Lcom/baidu/bdgame/sdk/obf/ms;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 171
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->g:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ms$2;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ms$2;-><init>(Lcom/baidu/bdgame/sdk/obf/ms;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 179
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->k:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ms$3;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ms$3;-><init>(Lcom/baidu/bdgame/sdk/obf/ms;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 200
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->k:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ms$4;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ms$4;-><init>(Lcom/baidu/bdgame/sdk/obf/ms;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 211
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->p:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->q:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ms;->a(I)V

    .line 217
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/ms$a;)V
    .registers 2

    .prologue
    .line 584
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ms;->v:Lcom/baidu/bdgame/sdk/obf/ms$a;

    .line 585
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 315
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->c:Landroid/widget/TextView;

    if-ne p1, v0, :cond_f

    .line 316
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->s:I

    if-eqz v0, :cond_e

    .line 317
    invoke-direct {p0, v3}, Lcom/baidu/bdgame/sdk/obf/ms;->a(I)V

    .line 365
    :cond_e
    :goto_e
    return-void

    .line 319
    :cond_f
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->d:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1b

    .line 320
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->s:I

    if-eq v0, v2, :cond_e

    .line 321
    invoke-direct {p0, v2}, Lcom/baidu/bdgame/sdk/obf/ms;->a(I)V

    goto :goto_e

    .line 323
    :cond_1b
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->f:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2e

    .line 324
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->e:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->g:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 326
    :cond_2e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->h:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_3a

    .line 327
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->g:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 328
    :cond_3a
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->i:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_7b

    .line 329
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->t:Z

    if-eqz v0, :cond_62

    .line 330
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->g:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 331
    iput-boolean v3, p0, Lcom/baidu/bdgame/sdk/obf/ms;->t:Z

    .line 332
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->i:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ms;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_icon_pwd_hidden"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 338
    :goto_5a
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->g:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_e

    .line 334
    :cond_62
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->g:Landroid/widget/EditText;

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 335
    iput-boolean v2, p0, Lcom/baidu/bdgame/sdk/obf/ms;->t:Z

    .line 336
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->i:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ms;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_icon_pwd_shown"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5a

    .line 339
    :cond_7b
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->l:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_87

    .line 340
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->k:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 341
    :cond_87
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->o:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_8f

    .line 342
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ms;->g()V

    goto :goto_e

    .line 343
    :cond_8f
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->p:Landroid/widget/Button;

    if-ne p1, v0, :cond_a8

    .line 344
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ms$6;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ms;->k()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/ms$6;-><init>(Lcom/baidu/bdgame/sdk/obf/ms;Landroid/content/Context;)V

    .line 358
    invoke-virtual {p0, v4}, Lcom/baidu/bdgame/sdk/obf/ms;->a(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ms;->k()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/baidu/bdgame/sdk/obf/bl;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bi;)Lcom/baidu/bdgame/sdk/obf/bk;

    goto/16 :goto_e

    .line 360
    :cond_a8
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->r:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_b1

    .line 361
    invoke-virtual {p0, v4}, Lcom/baidu/bdgame/sdk/obf/ms;->b(Landroid/os/Bundle;)Z

    goto/16 :goto_e

    .line 362
    :cond_b1
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->q:Landroid/widget/TextView;

    if-ne p1, v0, :cond_e

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->v:Lcom/baidu/bdgame/sdk/obf/ms$a;

    if-eqz v0, :cond_e

    .line 363
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->v:Lcom/baidu/bdgame/sdk/obf/ms$a;

    invoke-interface {v0}, Lcom/baidu/bdgame/sdk/obf/ms$a;->a()V

    goto/16 :goto_e
.end method
