.class public Lcom/baidu/bdgame/sdk/obf/gy;
.super Lcom/baidu/bdgame/sdk/obf/cd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/gy$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "bundle_key_binding_type"

.field public static final b:Ljava/lang/String; = "bundle_key_email_code"

.field public static final c:Ljava/lang/String; = "bundle_key_old_phone_no"

.field public static final d:Ljava/lang/String; = "bundle_key_old_phone_code"

.field public static final e:I = 0x0

.field public static final f:I = 0x1

.field public static final g:I = 0x2


# instance fields
.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/EditText;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/Button;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/EditText;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/widget/Button;

.field private s:Landroid/widget/TextView;

.field private t:I

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Lcom/baidu/bdgame/sdk/obf/gy$a;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ce;)V
    .registers 2

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cd;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/gy;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->l:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/gy;Lcom/baidu/bdgame/sdk/obf/gy$a;)Lcom/baidu/bdgame/sdk/obf/gy$a;
    .registers 2

    .prologue
    .line 30
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gy;->x:Lcom/baidu/bdgame/sdk/obf/gy$a;

    return-object p1
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 11

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gy;->m()V

    .line 309
    if-nez p1, :cond_8b

    .line 313
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->t:I

    packed-switch v0, :pswitch_data_94

    .line 330
    const-string v2, "bdp_account_bind_phone_title"

    .line 331
    const-string v1, "bdp_account_bind_phone_success_tip"

    .line 332
    const-string v0, "bdp_account_bind_phone_success_remark"

    .line 335
    :goto_10
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gy;->h()Landroid/os/Bundle;

    move-result-object v3

    .line 336
    if-nez v3, :cond_1b

    .line 337
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 339
    :cond_1b
    const-string v4, "bundle_key_title"

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gy;->k()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gy;->k()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/lf;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 343
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/lf;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 345
    :cond_3a
    const-string v2, "bundle_key_account"

    invoke-virtual {v3, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v2, "bundle_key_tip"

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gy;->k()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gy;->k()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string v1, "bundle_key_remark"

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gy;->k()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gy;->k()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/mn;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gy;->i()Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mn;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    invoke-virtual {p0, v0, v3}, Lcom/baidu/bdgame/sdk/obf/gy;->b(Lcom/baidu/bdgame/sdk/obf/cd;Landroid/os/Bundle;)V

    .line 354
    :goto_75
    return-void

    .line 315
    :pswitch_76
    const-string v2, "bdp_account_bind_phone_title"

    .line 316
    const-string v1, "bdp_account_bind_phone_success_tip"

    .line 317
    const-string v0, "bdp_account_bind_phone_success_remark"

    goto :goto_10

    .line 320
    :pswitch_7d
    const-string v2, "bdp_account_bind_phone_title"

    .line 321
    const-string v1, "bdp_account_bind_phone_success_tip"

    .line 322
    const-string v0, "bdp_account_bind_phone_success_remark"

    goto :goto_10

    .line 325
    :pswitch_84
    const-string v2, "bdp_account_bind_phone_new_title"

    .line 326
    const-string v1, "bdp_account_bind_phone_check_phone_success_tip"

    .line 327
    const-string v0, "bdp_account_bind_phone_check_phone_success_remark"

    goto :goto_10

    .line 352
    :cond_8b
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gy;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_75

    .line 313
    nop

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_76
        :pswitch_7d
        :pswitch_84
    .end packed-switch
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/gy;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/gy;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/gy;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->m:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/gy;)V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/gy;->f()V

    return-void
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/gy;)Lcom/baidu/bdgame/sdk/obf/gy$a;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->x:Lcom/baidu/bdgame/sdk/obf/gy$a;

    return-object v0
.end method

.method static synthetic e(Lcom/baidu/bdgame/sdk/obf/gy;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/baidu/bdgame/sdk/obf/gy;)Landroid/widget/Button;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->n:Landroid/widget/Button;

    return-object v0
.end method

.method private f()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 357
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 358
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gy;->p:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 359
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 360
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->r:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 368
    :goto_20
    return-void

    .line 363
    :cond_21
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 364
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->r:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_20

    .line 367
    :cond_2d
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->r:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_20
.end method

.method static synthetic g(Lcom/baidu/bdgame/sdk/obf/gy;)I
    .registers 2

    .prologue
    .line 30
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->t:I

    return v0
.end method

.method static synthetic h(Lcom/baidu/bdgame/sdk/obf/gy;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/baidu/bdgame/sdk/obf/gy;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->w:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/baidu/bdgame/sdk/obf/gy;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->p:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic k(Lcom/baidu/bdgame/sdk/obf/gy;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->q:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic l(Lcom/baidu/bdgame/sdk/obf/gy;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->v:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/app/Activity;)Landroid/view/View;
    .registers 5

    .prologue
    .line 67
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gy;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_view_controller_account_bind_phone"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 68
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gy;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "txt_title"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->h:Landroid/widget/TextView;

    .line 69
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gy;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "txt_back"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->i:Landroid/widget/TextView;

    .line 70
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gy;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "img_close"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->j:Landroid/widget/ImageView;

    .line 71
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gy;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "txt_tip"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->k:Landroid/widget/TextView;

    .line 72
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gy;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "edt_phone_no"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->l:Landroid/widget/EditText;

    .line 73
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gy;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "img_phone_no_del"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->m:Landroid/widget/ImageView;

    .line 74
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gy;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "btn_get_verifycode"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->n:Landroid/widget/Button;

    .line 75
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gy;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "txt_sent_tip"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->o:Landroid/widget/TextView;

    .line 76
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gy;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "edt_verifycode"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->p:Landroid/widget/EditText;

    .line 77
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gy;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "img_verifycode_del"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->q:Landroid/widget/ImageView;

    .line 78
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gy;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "btn_submit"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->r:Landroid/widget/Button;

    .line 79
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gy;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "txt_new_tip"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->s:Landroid/widget/TextView;

    .line 80
    return-object v1
.end method

.method protected a(Landroid/app/Activity;Landroid/view/View;)V
    .registers 5

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gy;->e()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 86
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->i:Landroid/widget/TextView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/gy$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/gy$1;-><init>(Lcom/baidu/bdgame/sdk/obf/gy;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    :goto_16
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->j:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/gy$6;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/gy$6;-><init>(Lcom/baidu/bdgame/sdk/obf/gy;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->l:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/gy$7;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/gy$7;-><init>(Lcom/baidu/bdgame/sdk/obf/gy;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 126
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->l:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/gy$8;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/gy$8;-><init>(Lcom/baidu/bdgame/sdk/obf/gy;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 137
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->l:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/gy$9;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/gy$9;-><init>(Lcom/baidu/bdgame/sdk/obf/gy;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 145
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->m:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/gy$10;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/gy$10;-><init>(Lcom/baidu/bdgame/sdk/obf/gy;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->n:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/gy$11;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/gy$11;-><init>(Lcom/baidu/bdgame/sdk/obf/gy;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->p:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/gy$2;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/gy$2;-><init>(Lcom/baidu/bdgame/sdk/obf/gy;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 218
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->p:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/gy$3;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/gy$3;-><init>(Lcom/baidu/bdgame/sdk/obf/gy;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 229
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->q:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/gy$4;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/gy$4;-><init>(Lcom/baidu/bdgame/sdk/obf/gy;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->r:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/gy$5;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/gy$5;-><init>(Lcom/baidu/bdgame/sdk/obf/gy;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/gy;->f()V

    .line 269
    invoke-super {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/cd;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 270
    return-void

    .line 95
    :cond_81
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->i:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_16
.end method

.method protected a(ZLandroid/os/Bundle;)V
    .registers 8

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 274
    if-eqz p1, :cond_2b

    if-eqz p2, :cond_2b

    .line 275
    const-string v0, "bundle_key_binding_type"

    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->t:I

    .line 276
    const-string v0, "bundle_key_email_code"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->u:Ljava/lang/String;

    .line 277
    const-string v0, "bundle_key_old_phone_no"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->v:Ljava/lang/String;

    .line 278
    const-string v0, "bundle_key_old_phone_code"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->w:Ljava/lang/String;

    .line 279
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->t:I

    packed-switch v0, :pswitch_data_80

    .line 299
    :cond_2b
    :goto_2b
    invoke-super {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/cd;->a(ZLandroid/os/Bundle;)V

    .line 300
    return-void

    .line 281
    :pswitch_2f
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gy;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_bind_phone_title"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 282
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2b

    .line 286
    :pswitch_49
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gy;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_bind_phone_title"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 287
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2b

    .line 291
    :pswitch_63
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gy;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_bind_phone_new_title"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 292
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->k:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2b

    .line 279
    nop

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_49
        :pswitch_63
    .end packed-switch
.end method
