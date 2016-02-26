.class public Lcom/baidu/bdgame/sdk/obf/dv;
.super Lcom/baidu/bdgame/sdk/obf/cd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/dv$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/Button;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ce;)V
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cd;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/dv;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dv;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/dv;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/dv;->l:Ljava/lang/String;

    return-object p1
.end method

.method private a(ILjava/lang/String;)V
    .registers 6

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/dv;->m()V

    .line 228
    if-nez p1, :cond_2a

    .line 229
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/dv;->h()Landroid/os/Bundle;

    move-result-object v0

    .line 230
    if-nez v0, :cond_10

    .line 231
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 233
    :cond_10
    const-string v1, "bundle_key_binding_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 234
    const-string v1, "bundle_key_email_code"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/dv;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/gy;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/dv;->i()Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/baidu/bdgame/sdk/obf/gy;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    invoke-virtual {p0, v1, v0}, Lcom/baidu/bdgame/sdk/obf/dv;->a(Lcom/baidu/bdgame/sdk/obf/cd;Landroid/os/Bundle;)V

    .line 239
    :goto_29
    return-void

    .line 237
    :cond_2a
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/dv;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_29
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/dv;ILjava/lang/String;)V
    .registers 3

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/dv;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/dv;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/dv;->k:Ljava/lang/String;

    return-object p1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 197
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 198
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 199
    const-string v1, "@"

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 200
    if-eqz v1, :cond_21

    array-length v2, v1

    if-ne v2, v4, :cond_21

    aget-object v2, v1, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v5, :cond_29

    .line 201
    :cond_21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    :cond_24
    :goto_24
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 203
    :cond_29
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_24
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/dv;)V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/dv;->f()V

    return-void
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/dv;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dv;->h:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/dv;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/dv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/dv;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dv;->i:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic e(Lcom/baidu/bdgame/sdk/obf/dv;)V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/dv;->g()V

    return-void
.end method

.method static synthetic f(Lcom/baidu/bdgame/sdk/obf/dv;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dv;->l:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .registers 4

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/dv;->k()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/dv$8;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/dv$8;-><init>(Lcom/baidu/bdgame/sdk/obf/dv;)V

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bl;->c(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)Z

    move-result v0

    .line 183
    if-eqz v0, :cond_25

    .line 184
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dv;->f:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 185
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dv;->f:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/dv;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_bind_phone_check_mail_verifycode_getting"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 189
    :goto_24
    return-void

    .line 187
    :cond_25
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/dv;->k()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/dv;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_error_token_invalid"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;I)V

    goto :goto_24
.end method

.method static synthetic g(Lcom/baidu/bdgame/sdk/obf/dv;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dv;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method private g()V
    .registers 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dv;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 215
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dv;->j:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 219
    :goto_16
    return-void

    .line 218
    :cond_17
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dv;->j:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_16
.end method

.method static synthetic h(Lcom/baidu/bdgame/sdk/obf/dv;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dv;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/baidu/bdgame/sdk/obf/dv;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dv;->c:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic j(Lcom/baidu/bdgame/sdk/obf/dv;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dv;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic k(Lcom/baidu/bdgame/sdk/obf/dv;)Landroid/widget/Button;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dv;->f:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/app/Activity;)Landroid/view/View;
    .registers 5

    .prologue
    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/dv;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_view_controller_account_bind_phone_check_mail"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 55
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/dv;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "img_close"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dv;->a:Landroid/widget/ImageView;

    .line 56
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/dv;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "txt_des"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dv;->b:Landroid/widget/TextView;

    .line 57
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/dv;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "lin_binded_mail"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dv;->c:Landroid/widget/LinearLayout;

    .line 58
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/dv;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "txt_binded_mail"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dv;->d:Landroid/widget/TextView;

    .line 59
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/dv;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "txt_login_mail"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dv;->e:Landroid/widget/TextView;

    .line 60
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/dv;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "btn_get_verifycode"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dv;->f:Landroid/widget/Button;

    .line 61
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/dv;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "txt_sent_tip"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dv;->g:Landroid/widget/TextView;

    .line 62
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/dv;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "edt_verifycode"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dv;->h:Landroid/widget/EditText;

    .line 63
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/dv;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "img_verifycode_del"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dv;->i:Landroid/widget/ImageView;

    .line 64
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/dv;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "btn_next"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dv;->j:Landroid/widget/Button;

    .line 65
    return-object v1
.end method

.method protected a(Landroid/app/Activity;Landroid/view/View;)V
    .registers 5

    .prologue
    .line 70
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dv;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/dv$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/dv$1;-><init>(Lcom/baidu/bdgame/sdk/obf/dv;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dv;->e:Landroid/widget/TextView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/dv$2;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/dv$2;-><init>(Lcom/baidu/bdgame/sdk/obf/dv;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dv;->f:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/dv$3;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/dv$3;-><init>(Lcom/baidu/bdgame/sdk/obf/dv;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dv;->h:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/dv$4;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/dv$4;-><init>(Lcom/baidu/bdgame/sdk/obf/dv;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 115
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dv;->h:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/dv$5;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/dv$5;-><init>(Lcom/baidu/bdgame/sdk/obf/dv;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 126
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dv;->i:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/dv$6;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/dv$6;-><init>(Lcom/baidu/bdgame/sdk/obf/dv;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dv;->j:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/dv$7;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/dv$7;-><init>(Lcom/baidu/bdgame/sdk/obf/dv;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/dv;->g()V

    .line 156
    invoke-super {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/cd;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 157
    return-void
.end method
