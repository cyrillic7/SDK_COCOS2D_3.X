.class public Lcom/baidu/bdgame/sdk/obf/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/ay$a;
    }
.end annotation


# instance fields
.field private A:Lcom/baidu/bdgame/sdk/obf/ba;

.field private B:Lcom/baidu/bdgame/sdk/obf/r;

.field private C:I

.field private D:Z

.field private E:Z

.field private a:Lcom/baidu/bdgame/sdk/obf/cd;

.field private b:Z

.field private c:Landroid/view/View;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/widget/EditText;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/widget/Button;

.field private r:Landroid/widget/Button;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/LinearLayout;

.field private u:Landroid/widget/Button;

.field private v:Landroid/widget/Button;

.field private w:Landroid/widget/LinearLayout;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/LinearLayout;

.field private z:Lcom/baidu/bdgame/sdk/obf/ay$a;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/cd;Z)V
    .registers 4

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->D:Z

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->E:Z

    .line 107
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ay;->a:Lcom/baidu/bdgame/sdk/obf/cd;

    .line 108
    iput-boolean p2, p0, Lcom/baidu/bdgame/sdk/obf/ay;->b:Z

    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->C:I

    .line 110
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ay;->b()V

    .line 111
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ay;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ay;Lcom/baidu/bdgame/sdk/obf/ba;)Lcom/baidu/bdgame/sdk/obf/ba;
    .registers 2

    .prologue
    .line 64
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ay;->A:Lcom/baidu/bdgame/sdk/obf/ba;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ay;Lcom/baidu/bdgame/sdk/obf/r;)Lcom/baidu/bdgame/sdk/obf/r;
    .registers 2

    .prologue
    .line 64
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ay;->B:Lcom/baidu/bdgame/sdk/obf/r;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ay;Lcom/baidu/sapi2/dto/LoginDTO$LoginType;)V
    .registers 2

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ay;->a(Lcom/baidu/sapi2/dto/LoginDTO$LoginType;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ay;Z)V
    .registers 2

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ay;->a(Z)V

    return-void
.end method

.method private a(Lcom/baidu/sapi2/dto/LoginDTO$LoginType;)V
    .registers 6

    .prologue
    .line 625
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kx;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 626
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ay;->h:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 627
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ay;->l:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 628
    new-instance v3, Lcom/baidu/sapi2/dto/LoginDTO;

    invoke-direct {v3}, Lcom/baidu/sapi2/dto/LoginDTO;-><init>()V

    .line 629
    iput-object v0, v3, Lcom/baidu/sapi2/dto/LoginDTO;->account:Ljava/lang/String;

    .line 630
    iput-object v1, v3, Lcom/baidu/sapi2/dto/LoginDTO;->password:Ljava/lang/String;

    .line 631
    iput-object v2, v3, Lcom/baidu/sapi2/dto/LoginDTO;->captcha:Ljava/lang/String;

    .line 632
    iput-object p1, v3, Lcom/baidu/sapi2/dto/LoginDTO;->loginType:Lcom/baidu/sapi2/dto/LoginDTO$LoginType;

    .line 634
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->a:Lcom/baidu/bdgame/sdk/obf/cd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->l()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/baidu/platformsdk/LoginActivity;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ay$8;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ay$8;-><init>(Lcom/baidu/bdgame/sdk/obf/ay;)V

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/LoginActivity;->a(Lcom/baidu/platformsdk/LoginActivity$a;)V

    .line 643
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v0

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ay$9;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ay$9;-><init>(Lcom/baidu/bdgame/sdk/obf/ay;)V

    invoke-virtual {v0, v1, v3}, Lcom/baidu/sapi2/SapiAccountService;->login(Lcom/baidu/sapi2/callback/LoginCallback;Lcom/baidu/sapi2/dto/LoginDTO;)V

    .line 706
    return-void
.end method

.method private a(Z)V
    .registers 4

    .prologue
    .line 845
    if-eqz p1, :cond_9

    .line 846
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->k:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 850
    :goto_8
    return-void

    .line 848
    :cond_9
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->k:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_8
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/ay;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method private b()V
    .registers 5

    .prologue
    .line 114
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->a:Lcom/baidu/bdgame/sdk/obf/cd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v1

    .line 115
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v2, "bdp_controller_account_login_baidu"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->c:Landroid/view/View;

    .line 116
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->c:Landroid/view/View;

    const-string v2, "edt_focus"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->d:Landroid/widget/EditText;

    .line 117
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->c:Landroid/view/View;

    const-string v2, "edt_account"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->e:Landroid/widget/EditText;

    .line 118
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->c:Landroid/view/View;

    const-string v2, "img_account_del"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->f:Landroid/widget/ImageView;

    .line 119
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->c:Landroid/view/View;

    const-string v2, "img_arrow"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->g:Landroid/widget/ImageView;

    .line 120
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->c:Landroid/view/View;

    const-string v2, "edt_pass"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->h:Landroid/widget/EditText;

    .line 121
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->c:Landroid/view/View;

    const-string v2, "img_pass_del"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->i:Landroid/widget/ImageView;

    .line 122
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->c:Landroid/view/View;

    const-string v2, "txt_find_pass"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->j:Landroid/widget/TextView;

    .line 123
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->c:Landroid/view/View;

    const-string v2, "lin_verifycode"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->k:Landroid/widget/LinearLayout;

    .line 124
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->c:Landroid/view/View;

    const-string v2, "edt_verifycode"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->l:Landroid/widget/EditText;

    .line 125
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->c:Landroid/view/View;

    const-string v2, "img_verifycode_del"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->m:Landroid/widget/ImageView;

    .line 126
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->c:Landroid/view/View;

    const-string v2, "img_verifycode"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->n:Landroid/widget/ImageView;

    .line 127
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->c:Landroid/view/View;

    const-string v2, "img_verifycode_loading"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->o:Landroid/widget/ImageView;

    .line 128
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->c:Landroid/view/View;

    const-string v2, "img_change_verifycode"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->p:Landroid/widget/ImageView;

    .line 129
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->c:Landroid/view/View;

    const-string v2, "btn_login"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->q:Landroid/widget/Button;

    .line 130
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->c:Landroid/view/View;

    const-string v2, "btn_one_key_register"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->r:Landroid/widget/Button;

    .line 131
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->c:Landroid/view/View;

    const-string v2, "txt_create_account"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->s:Landroid/widget/TextView;

    .line 132
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->c:Landroid/view/View;

    const-string v2, "lin_baidu_channel"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->t:Landroid/widget/LinearLayout;

    .line 133
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->c:Landroid/view/View;

    const-string v2, "btn_other_login_91"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->u:Landroid/widget/Button;

    .line 134
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->c:Landroid/view/View;

    const-string v2, "btn_other_login_dk"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->v:Landroid/widget/Button;

    .line 135
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->c:Landroid/view/View;

    const-string v2, "lin_customer_support"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->w:Landroid/widget/LinearLayout;

    .line 136
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->c:Landroid/view/View;

    const-string v2, "txt_customer_support"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->x:Landroid/widget/TextView;

    .line 137
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->c:Landroid/view/View;

    const-string v2, "lin_history"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->y:Landroid/widget/LinearLayout;

    .line 139
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ay;->c()V

    .line 140
    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/ay;Z)V
    .registers 2

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ay;->c(Z)V

    return-void
.end method

.method private b(Z)V
    .registers 5

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 857
    if-eqz p1, :cond_1a

    .line 858
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 859
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 860
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->o:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 866
    :goto_19
    return-void

    .line 862
    :cond_1a
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 863
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 864
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->o:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_19
.end method

.method private c()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 143
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 144
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->e:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ay$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ay$1;-><init>(Lcom/baidu/bdgame/sdk/obf/ay;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 163
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->e:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ay$4;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ay$4;-><init>(Lcom/baidu/bdgame/sdk/obf/ay;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 174
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->f:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ay$16;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ay$16;-><init>(Lcom/baidu/bdgame/sdk/obf/ay;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ay$17;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ay$17;-><init>(Lcom/baidu/bdgame/sdk/obf/ay;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 194
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ay$18;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ay$18;-><init>(Lcom/baidu/bdgame/sdk/obf/ay;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->h:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 214
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->h:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ay$19;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ay$19;-><init>(Lcom/baidu/bdgame/sdk/obf/ay;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 234
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->h:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ay$20;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ay$20;-><init>(Lcom/baidu/bdgame/sdk/obf/ay;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 245
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->h:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ay$21;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ay$21;-><init>(Lcom/baidu/bdgame/sdk/obf/ay;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 253
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->i:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ay$22;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ay$22;-><init>(Lcom/baidu/bdgame/sdk/obf/ay;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->j:Landroid/widget/TextView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ay$12;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ay$12;-><init>(Lcom/baidu/bdgame/sdk/obf/ay;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->l:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 289
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->l:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ay$23;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ay$23;-><init>(Lcom/baidu/bdgame/sdk/obf/ay;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 308
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->l:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ay$24;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ay$24;-><init>(Lcom/baidu/bdgame/sdk/obf/ay;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 319
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->m:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ay$25;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ay$25;-><init>(Lcom/baidu/bdgame/sdk/obf/ay;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->p:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ay$26;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ay$26;-><init>(Lcom/baidu/bdgame/sdk/obf/ay;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->q:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 334
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->q:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ay$27;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ay$27;-><init>(Lcom/baidu/bdgame/sdk/obf/ay;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->a:Lcom/baidu/bdgame/sdk/obf/cd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/li;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_113

    .line 387
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->r:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 391
    :goto_be
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->r:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ay$28;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ay$28;-><init>(Lcom/baidu/bdgame/sdk/obf/ay;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->b:Z

    if-eqz v0, :cond_119

    .line 428
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 429
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->u:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ay$29;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ay$29;-><init>(Lcom/baidu/bdgame/sdk/obf/ay;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->v:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ay$2;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ay$2;-><init>(Lcom/baidu/bdgame/sdk/obf/ay;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->a:Lcom/baidu/bdgame/sdk/obf/cd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ay$3;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ay$3;-><init>(Lcom/baidu/bdgame/sdk/obf/ay;)V

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bl;->g(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 476
    :goto_f3
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->a:Lcom/baidu/bdgame/sdk/obf/cd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ay$5;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ay$5;-><init>(Lcom/baidu/bdgame/sdk/obf/ay;)V

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bl;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 517
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->a:Lcom/baidu/bdgame/sdk/obf/cd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ay$6;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ay$6;-><init>(Lcom/baidu/bdgame/sdk/obf/ay;)V

    invoke-static {v0, v2, v1}, Lcom/baidu/bdgame/sdk/obf/bl;->b(Landroid/content/Context;ILcom/baidu/bdgame/sdk/obf/n;)V

    .line 586
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ay;->d()V

    .line 587
    return-void

    .line 389
    :cond_113
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->r:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_be

    .line 473
    :cond_119
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_f3
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/ay;)V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ay;->d()V

    return-void
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/ay;Z)V
    .registers 2

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ay;->b(Z)V

    return-void
.end method

.method private c(Z)V
    .registers 6

    .prologue
    .line 873
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->a:Lcom/baidu/bdgame/sdk/obf/cd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->m()V

    .line 874
    if-eqz p1, :cond_1e

    .line 875
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->a:Lcom/baidu/bdgame/sdk/obf/cd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v0

    .line 876
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ay;->a:Lcom/baidu/bdgame/sdk/obf/cd;

    const/4 v2, 0x0

    const-string v3, "bdp_passport_login"

    invoke-static {v0, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/baidu/bdgame/sdk/obf/cd;->b(ILjava/lang/String;Landroid/os/Parcelable;)V

    .line 878
    :cond_1e
    return-void
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/ay;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->h:Landroid/widget/EditText;

    return-object v0
.end method

.method private d()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 590
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 591
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ay;->h:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 592
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ay;->l:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 593
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 594
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->q:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 606
    :goto_2a
    return-void

    .line 597
    :cond_2b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 598
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->q:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2a

    .line 601
    :cond_37
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4b

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 602
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->q:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2a

    .line 605
    :cond_4b
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->q:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2a
.end method

.method static synthetic e(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/cd;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->a:Lcom/baidu/bdgame/sdk/obf/cd;

    return-object v0
.end method

.method private e()V
    .registers 4

    .prologue
    .line 609
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->D:Z

    .line 610
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->s:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ay;->a:Lcom/baidu/bdgame/sdk/obf/cd;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_username_register"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 611
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->s:Landroid/widget/TextView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ay$7;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ay$7;-><init>(Lcom/baidu/bdgame/sdk/obf/ay;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 622
    return-void
.end method

.method static synthetic f(Lcom/baidu/bdgame/sdk/obf/ay;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method private f()V
    .registers 5

    .prologue
    .line 709
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->a:Lcom/baidu/bdgame/sdk/obf/cd;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ay;->a:Lcom/baidu/bdgame/sdk/obf/cd;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_dialog_loading_login"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cd;->c(I)V

    .line 710
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    const-string v1, "bduss"

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiAccountManager;->getSession(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 711
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ay;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/kx;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 712
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ay;->a:Lcom/baidu/bdgame/sdk/obf/cd;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/baidu/bdgame/sdk/obf/ay$10;

    invoke-direct {v3, p0}, Lcom/baidu/bdgame/sdk/obf/ay$10;-><init>(Lcom/baidu/bdgame/sdk/obf/ay;)V

    invoke-static {v2, v1, v0, v3}, Lcom/baidu/bdgame/sdk/obf/bl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/bk;

    .line 726
    return-void
.end method

.method static synthetic g(Lcom/baidu/bdgame/sdk/obf/ay;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->y:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private g()V
    .registers 3

    .prologue
    .line 729
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v0

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ay$11;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ay$11;-><init>(Lcom/baidu/bdgame/sdk/obf/ay;)V

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiAccountService;->fastReg(Lcom/baidu/sapi2/callback/SapiCallback;)V

    .line 784
    return-void
.end method

.method static synthetic h(Lcom/baidu/bdgame/sdk/obf/ay;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method private h()V
    .registers 5

    .prologue
    .line 787
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->a:Lcom/baidu/bdgame/sdk/obf/cd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->l()Landroid/app/Activity;

    move-result-object v0

    .line 788
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_45

    .line 789
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/lt;

    invoke-direct {v1, v0}, Lcom/baidu/bdgame/sdk/obf/lt;-><init>(Landroid/content/Context;)V

    .line 790
    const-string v2, "bdp_account_login_type_confirm"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lt;->a(Ljava/lang/String;)V

    .line 791
    const-string v2, "bdp_account_login_type_confirm_phone"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/baidu/bdgame/sdk/obf/ay$13;

    invoke-direct {v3, p0, v1}, Lcom/baidu/bdgame/sdk/obf/ay$13;-><init>(Lcom/baidu/bdgame/sdk/obf/ay;Lcom/baidu/bdgame/sdk/obf/lt;)V

    invoke-virtual {v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/lt;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 799
    const-string v2, "bdp_account_login_type_confirm_username"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/ay$14;

    invoke-direct {v2, p0, v1}, Lcom/baidu/bdgame/sdk/obf/ay$14;-><init>(Lcom/baidu/bdgame/sdk/obf/ay;Lcom/baidu/bdgame/sdk/obf/lt;)V

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/lt;->b(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 807
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/lt;->show()V

    .line 809
    :cond_45
    return-void
.end method

.method static synthetic i(Lcom/baidu/bdgame/sdk/obf/ay;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->i:Landroid/widget/ImageView;

    return-object v0
.end method

.method private i()V
    .registers 3

    .prologue
    .line 813
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountService;->getCaptchaKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 814
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v0

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ay$15;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ay$15;-><init>(Lcom/baidu/bdgame/sdk/obf/ay;)V

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiAccountService;->getCaptcha(Lcom/baidu/sapi2/callback/SapiCallback;)V

    .line 838
    :cond_22
    return-void
.end method

.method static synthetic j(Lcom/baidu/bdgame/sdk/obf/ay;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->l:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic k(Lcom/baidu/bdgame/sdk/obf/ay;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->m:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic l(Lcom/baidu/bdgame/sdk/obf/ay;)V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ay;->i()V

    return-void
.end method

.method static synthetic m(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/r;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->B:Lcom/baidu/bdgame/sdk/obf/r;

    return-object v0
.end method

.method static synthetic n(Lcom/baidu/bdgame/sdk/obf/ay;)Z
    .registers 2

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->D:Z

    return v0
.end method

.method static synthetic o(Lcom/baidu/bdgame/sdk/obf/ay;)V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ay;->g()V

    return-void
.end method

.method static synthetic p(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/ay$a;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->z:Lcom/baidu/bdgame/sdk/obf/ay$a;

    return-object v0
.end method

.method static synthetic q(Lcom/baidu/bdgame/sdk/obf/ay;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->x:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic r(Lcom/baidu/bdgame/sdk/obf/ay;)V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ay;->e()V

    return-void
.end method

.method static synthetic s(Lcom/baidu/bdgame/sdk/obf/ay;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->s:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic t(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/ba;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->A:Lcom/baidu/bdgame/sdk/obf/ba;

    return-object v0
.end method

.method static synthetic u(Lcom/baidu/bdgame/sdk/obf/ay;)I
    .registers 2

    .prologue
    .line 64
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->C:I

    return v0
.end method

.method static synthetic v(Lcom/baidu/bdgame/sdk/obf/ay;)V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ay;->f()V

    return-void
.end method

.method static synthetic w(Lcom/baidu/bdgame/sdk/obf/ay;)V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ay;->h()V

    return-void
.end method

.method static synthetic x(Lcom/baidu/bdgame/sdk/obf/ay;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->n:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .registers 2

    .prologue
    .line 885
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->c:Landroid/view/View;

    if-nez v0, :cond_7

    .line 886
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ay;->b()V

    .line 889
    :cond_7
    sget-object v0, Lcom/baidu/sapi2/utils/StatEvent;->PV_LOGIN:Lcom/baidu/sapi2/utils/StatEvent;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/StatService;->onEvent(Lcom/baidu/sapi2/utils/StatEvent;)V

    .line 890
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->c:Landroid/view/View;

    return-object v0
.end method

.method public a(I)V
    .registers 3

    .prologue
    .line 906
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 907
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/ay$a;)V
    .registers 2

    .prologue
    .line 914
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ay;->z:Lcom/baidu/bdgame/sdk/obf/ay$a;

    .line 915
    return-void
.end method

.method protected a(Lcom/baidu/sapi2/utils/StatEvent;)V
    .registers 3

    .prologue
    .line 895
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->E:Z

    if-eqz v0, :cond_a

    .line 896
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ay;->E:Z

    .line 897
    invoke-static {p1}, Lcom/baidu/sapi2/utils/StatService;->onEvent(Lcom/baidu/sapi2/utils/StatEvent;)V

    .line 899
    :cond_a
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 932
    sget-object v0, Lcom/baidu/sapi2/utils/StatEvent;->OP_LOGIN:Lcom/baidu/sapi2/utils/StatEvent;

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ay;->a(Lcom/baidu/sapi2/utils/StatEvent;)V

    .line 933
    const/4 v0, 0x0

    return v0
.end method
