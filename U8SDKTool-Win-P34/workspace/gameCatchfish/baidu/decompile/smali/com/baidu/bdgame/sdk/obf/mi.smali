.class public Lcom/baidu/bdgame/sdk/obf/mi;
.super Lcom/baidu/bdgame/sdk/obf/cd;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/Button;

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ce;)V
    .registers 3

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cd;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/mi;->h:Z

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/mi;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mi;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method private a(ILjava/lang/String;)V
    .registers 8

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mi;->m()V

    .line 205
    if-nez p1, :cond_71

    .line 206
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 207
    const-string v0, "bundle_key_title"

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mi;->k()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mi;->k()Landroid/content/Context;

    move-result-object v3

    const-string v4, "bdp_account_pwd_modify_success_title"

    invoke-static {v3, v4}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v0, ""

    .line 210
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mi;->k()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/bl;->g(Landroid/content/Context;)Lcom/baidu/bdgame/sdk/obf/mh;

    move-result-object v2

    .line 211
    if-eqz v2, :cond_31

    .line 212
    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/mh;->e()Ljava/lang/String;

    move-result-object v0

    .line 214
    :cond_31
    const-string v2, "bundle_key_account"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v0, "bundle_key_tip"

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mi;->k()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mi;->k()Landroid/content/Context;

    move-result-object v3

    const-string v4, "bdp_account_pwd_modify_success_tip"

    invoke-static {v3, v4}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v0, "bundle_key_remark"

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mi;->k()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mi;->k()Landroid/content/Context;

    move-result-object v3

    const-string v4, "bdp_account_pwd_modify_success_remark"

    invoke-static {v3, v4}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/mn;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mi;->i()Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/baidu/bdgame/sdk/obf/mn;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    invoke-virtual {p0, v0, v1}, Lcom/baidu/bdgame/sdk/obf/mi;->b(Lcom/baidu/bdgame/sdk/obf/cd;Landroid/os/Bundle;)V

    .line 223
    :goto_70
    return-void

    .line 221
    :cond_71
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mi;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_70
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/mi;ILjava/lang/String;)V
    .registers 3

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/mi;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/mi;Z)Z
    .registers 2

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/baidu/bdgame/sdk/obf/mi;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/mi;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mi;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/mi;)V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/mi;->f()V

    return-void
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/mi;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mi;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lcom/baidu/bdgame/sdk/obf/mi;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mi;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method private f()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 226
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mi;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/mi;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 229
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mi;->g:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 237
    :goto_20
    return-void

    .line 232
    :cond_21
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 233
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mi;->g:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_20

    .line 236
    :cond_2d
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mi;->g:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_20
.end method

.method static synthetic f(Lcom/baidu/bdgame/sdk/obf/mi;)Z
    .registers 2

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/mi;->h:Z

    return v0
.end method

.method static synthetic g(Lcom/baidu/bdgame/sdk/obf/mi;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mi;->f:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/app/Activity;)Landroid/view/View;
    .registers 5

    .prologue
    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "bdp_view_controller_account_modify_password"

    invoke-static {p1, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 49
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mi;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "img_close"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mi;->a:Landroid/widget/ImageView;

    .line 50
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mi;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "edt_old_pwd"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mi;->b:Landroid/widget/EditText;

    .line 51
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mi;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "img_old_pwd_del"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mi;->c:Landroid/widget/ImageView;

    .line 52
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mi;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "edt_new_pwd"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mi;->d:Landroid/widget/EditText;

    .line 53
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mi;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "img_new_pwd_del"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mi;->e:Landroid/widget/ImageView;

    .line 54
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mi;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "img_password_show"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mi;->f:Landroid/widget/ImageView;

    .line 55
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mi;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "btn_ok"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mi;->g:Landroid/widget/Button;

    .line 56
    return-object v1
.end method

.method protected a(Landroid/app/Activity;Landroid/view/View;)V
    .registers 5

    .prologue
    .line 61
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mi;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/mi$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/mi$1;-><init>(Lcom/baidu/bdgame/sdk/obf/mi;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mi;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/mi$2;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/mi$2;-><init>(Lcom/baidu/bdgame/sdk/obf/mi;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 87
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mi;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/mi$3;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/mi$3;-><init>(Lcom/baidu/bdgame/sdk/obf/mi;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 98
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mi;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/mi$4;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/mi$4;-><init>(Lcom/baidu/bdgame/sdk/obf/mi;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mi;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/mi$5;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/mi$5;-><init>(Lcom/baidu/bdgame/sdk/obf/mi;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 124
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mi;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/mi$6;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/mi$6;-><init>(Lcom/baidu/bdgame/sdk/obf/mi;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 135
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mi;->e:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/mi$7;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/mi$7;-><init>(Lcom/baidu/bdgame/sdk/obf/mi;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mi;->f:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/mi$8;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/mi$8;-><init>(Lcom/baidu/bdgame/sdk/obf/mi;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mi;->g:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/mi$9;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/mi$9;-><init>(Lcom/baidu/bdgame/sdk/obf/mi;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/mi;->f()V

    .line 183
    return-void
.end method

.method protected a(ZLandroid/os/Bundle;)V
    .registers 7

    .prologue
    .line 187
    if-eqz p1, :cond_32

    .line 188
    if-eqz p2, :cond_32

    .line 189
    const-string v0, "bundle_key_user"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/mh;

    .line 190
    if-eqz v0, :cond_32

    .line 191
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/mi;->d:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mi;->k()Landroid/content/Context;

    move-result-object v2

    const-string v3, "bdp_color_text_hint"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lh;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 192
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/mh;->b()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 193
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mi;->d:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mi;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_pwd_modify_hint_new_pwd_91"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 200
    :cond_32
    :goto_32
    invoke-super {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/cd;->a(ZLandroid/os/Bundle;)V

    .line 201
    return-void

    .line 194
    :cond_36
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/mh;->c()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 195
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mi;->d:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mi;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_pwd_modify_hint_new_pwd_dk"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_32
.end method
