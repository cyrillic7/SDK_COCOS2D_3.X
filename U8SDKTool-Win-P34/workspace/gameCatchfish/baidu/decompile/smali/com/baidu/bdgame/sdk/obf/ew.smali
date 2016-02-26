.class public Lcom/baidu/bdgame/sdk/obf/ew;
.super Lcom/baidu/bdgame/sdk/obf/cd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/ew$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/Button;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ce;)V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cd;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ew;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ew;->k:Ljava/lang/String;

    return-object p1
.end method

.method private a(ILjava/lang/String;)V
    .registers 6

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ew;->m()V

    .line 191
    if-nez p1, :cond_31

    .line 192
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ew;->h()Landroid/os/Bundle;

    move-result-object v0

    .line 193
    if-nez v0, :cond_10

    .line 194
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 196
    :cond_10
    const-string v1, "bundle_key_binding_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 197
    const-string v1, "bundle_key_old_phone_no"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ew;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v1, "bundle_key_old_phone_code"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ew;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/gy;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ew;->i()Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/baidu/bdgame/sdk/obf/gy;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    invoke-virtual {p0, v1, v0}, Lcom/baidu/bdgame/sdk/obf/ew;->a(Lcom/baidu/bdgame/sdk/obf/cd;Landroid/os/Bundle;)V

    .line 203
    :goto_30
    return-void

    .line 201
    :cond_31
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ew;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_30
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ew;)V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ew;->f()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ew;ILjava/lang/String;)V
    .registers 3

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/ew;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/ew;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ew;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/ew;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ew;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/ew;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ew;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/ew;)V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ew;->g()V

    return-void
.end method

.method static synthetic e(Lcom/baidu/bdgame/sdk/obf/ew;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ew;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/baidu/bdgame/sdk/obf/ew;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ew;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method private f()V
    .registers 4

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ew;->k()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ew$7;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ew$7;-><init>(Lcom/baidu/bdgame/sdk/obf/ew;)V

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bl;->d(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)Z

    move-result v0

    .line 167
    if-eqz v0, :cond_25

    .line 168
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ew;->e:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 169
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ew;->e:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ew;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_bind_phone_check_phone_verifycode_getting"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 173
    :goto_24
    return-void

    .line 171
    :cond_25
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ew;->k()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ew;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_error_token_invalid"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;I)V

    goto :goto_24
.end method

.method static synthetic g(Lcom/baidu/bdgame/sdk/obf/ew;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ew;->j:Ljava/lang/String;

    return-object v0
.end method

.method private g()V
    .registers 3

    .prologue
    .line 176
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ew;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 178
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ew;->i:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 182
    :goto_16
    return-void

    .line 181
    :cond_17
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ew;->i:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_16
.end method

.method static synthetic h(Lcom/baidu/bdgame/sdk/obf/ew;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ew;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/baidu/bdgame/sdk/obf/ew;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ew;->c:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic j(Lcom/baidu/bdgame/sdk/obf/ew;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ew;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic k(Lcom/baidu/bdgame/sdk/obf/ew;)Landroid/widget/Button;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ew;->e:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/app/Activity;)Landroid/view/View;
    .registers 5

    .prologue
    .line 51
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ew;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_view_controller_account_bind_phone_check_phone"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 52
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ew;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "img_close"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ew;->a:Landroid/widget/ImageView;

    .line 53
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ew;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "txt_des"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ew;->b:Landroid/widget/TextView;

    .line 54
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ew;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "lin_binded_phone"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ew;->c:Landroid/widget/LinearLayout;

    .line 55
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ew;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "txt_binded_phone"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ew;->d:Landroid/widget/TextView;

    .line 56
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ew;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "btn_get_verifycode"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ew;->e:Landroid/widget/Button;

    .line 57
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ew;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "txt_sent_tip"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ew;->f:Landroid/widget/TextView;

    .line 58
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ew;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "edt_verifycode"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ew;->g:Landroid/widget/EditText;

    .line 59
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ew;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "img_verifycode_del"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ew;->h:Landroid/widget/ImageView;

    .line 60
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ew;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "btn_next"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ew;->i:Landroid/widget/Button;

    .line 61
    return-object v1
.end method

.method protected a(Landroid/app/Activity;Landroid/view/View;)V
    .registers 5

    .prologue
    .line 66
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ew;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ew$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ew$1;-><init>(Lcom/baidu/bdgame/sdk/obf/ew;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ew;->e:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ew$2;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ew$2;-><init>(Lcom/baidu/bdgame/sdk/obf/ew;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ew;->g:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ew$3;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ew$3;-><init>(Lcom/baidu/bdgame/sdk/obf/ew;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 99
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ew;->g:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ew$4;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ew$4;-><init>(Lcom/baidu/bdgame/sdk/obf/ew;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 110
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ew;->h:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ew$5;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ew$5;-><init>(Lcom/baidu/bdgame/sdk/obf/ew;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ew;->i:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ew$6;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ew$6;-><init>(Lcom/baidu/bdgame/sdk/obf/ew;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ew;->g()V

    .line 140
    invoke-super {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/cd;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 141
    return-void
.end method
