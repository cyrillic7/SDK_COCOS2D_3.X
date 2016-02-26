.class public Lcom/qbao/sdk/ui/ForgotPwdView;
.super Lcom/qbao/sdk/ui/BaseView;
.source "ForgotPwdView.java"


# instance fields
.field private eA:Landroid/widget/EditText;

.field private eB:Lcom/qbao/sdk/e/f;

.field private eC:Ljava/lang/String;

.field private eD:Ljava/lang/String;

.field private eE:Ljava/lang/String;

.field private ev:Landroid/widget/LinearLayout;

.field private ew:I

.field private ex:Z

.field private ey:Landroid/widget/TextView;

.field private ez:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 70
    invoke-direct {p0, p1}, Lcom/qbao/sdk/ui/BaseView;-><init>(Landroid/content/Context;)V

    .line 34
    iput v1, p0, Lcom/qbao/sdk/ui/ForgotPwdView;->ew:I

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView;->ex:Z

    .line 51
    new-instance v0, Lcom/qbao/sdk/ui/ForgotPwdView$1;

    invoke-direct {v0, p0}, Lcom/qbao/sdk/ui/ForgotPwdView$1;-><init>(Lcom/qbao/sdk/ui/ForgotPwdView;)V

    iput-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView;->mHandler:Landroid/os/Handler;

    .line 71
    invoke-virtual {p0, v1}, Lcom/qbao/sdk/ui/ForgotPwdView;->setOrientation(I)V

    .line 72
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/qbao/sdk/ui/ForgotPwdView;->setGravity(I)V

    .line 73
    iput-object p2, p0, Lcom/qbao/sdk/ui/ForgotPwdView;->eE:Ljava/lang/String;

    .line 74
    invoke-virtual {p0}, Lcom/qbao/sdk/ui/ForgotPwdView;->aF()V

    .line 75
    return-void
.end method

.method static synthetic a(Lcom/qbao/sdk/ui/ForgotPwdView;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView;->ey:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/qbao/sdk/ui/ForgotPwdView;Lcom/qbao/sdk/e/f;)V
    .registers 2

    .prologue
    .line 45
    iput-object p1, p0, Lcom/qbao/sdk/ui/ForgotPwdView;->eB:Lcom/qbao/sdk/e/f;

    return-void
.end method

.method static synthetic a(Lcom/qbao/sdk/ui/ForgotPwdView;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/qbao/sdk/ui/ForgotPwdView;->ad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/qbao/sdk/ui/ForgotPwdView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 253
    invoke-direct {p0, p1, p2}, Lcom/qbao/sdk/ui/ForgotPwdView;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/qbao/sdk/ui/ForgotPwdView;Z)V
    .registers 2

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/qbao/sdk/ui/ForgotPwdView;->ex:Z

    return-void
.end method

.method private aP()Landroid/widget/LinearLayout;
    .registers 14

    .prologue
    const/4 v3, 0x2

    const/high16 v12, 0x3f400000

    const/4 v5, 0x0

    const/4 v11, 0x1

    .line 112
    invoke-virtual {p0, v11, v11, v11, v5}, Lcom/qbao/sdk/ui/ForgotPwdView;->a(ZZII)Landroid/widget/LinearLayout;

    move-result-object v9

    .line 113
    sget v0, Lcom/qbao/sdk/e/g;->ic:I

    sget v1, Lcom/qbao/sdk/e/g;->ic:I

    sget v2, Lcom/qbao/sdk/e/g;->ic:I

    invoke-virtual {v9, v0, v5, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 115
    const-string v0, "\u83b7\u53d6\u9a8c\u8bc1\u7801"

    sget v1, Lcom/qbao/sdk/e/g;->hF:I

    sget v2, Lcom/qbao/sdk/e/g;->hN:I

    sget v4, Lcom/qbao/sdk/e/g;->il:I

    invoke-virtual {p0, v0, v1, v2, v4}, Lcom/qbao/sdk/ui/ForgotPwdView;->a(Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView;->ey:Landroid/widget/TextView;

    .line 116
    const-string v1, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7"

    const v2, 0x3f0a3d71

    sget v4, Lcom/qbao/sdk/e/g;->in:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/qbao/sdk/ui/ForgotPwdView;->a(Ljava/lang/String;FIIZ)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView;->ez:Landroid/widget/EditText;

    .line 117
    iget-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView;->eE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 118
    iget-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView;->ez:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/qbao/sdk/ui/ForgotPwdView;->eE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView;->ez:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/qbao/sdk/ui/ForgotPwdView;->eE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 121
    :cond_48
    iget-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView;->ey:Landroid/widget/TextView;

    new-instance v1, Lcom/qbao/sdk/ui/ForgotPwdView$3;

    invoke-direct {v1, p0}, Lcom/qbao/sdk/ui/ForgotPwdView$3;-><init>(Lcom/qbao/sdk/ui/ForgotPwdView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView;->ez:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/qbao/sdk/ui/ForgotPwdView;->ey:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/qbao/sdk/ui/ForgotPwdView;->a(Landroid/widget/EditText;Landroid/widget/TextView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 138
    sget v0, Lcom/qbao/sdk/e/g;->hR:I

    invoke-virtual {p0, v11, v5, v0}, Lcom/qbao/sdk/ui/ForgotPwdView;->a(ZII)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 140
    const-string v0, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    sget v1, Lcom/qbao/sdk/e/g;->in:I

    invoke-virtual {p0, v0, v12, v3, v1}, Lcom/qbao/sdk/ui/ForgotPwdView;->a(Ljava/lang/String;FII)Landroid/widget/EditText;

    move-result-object v10

    .line 141
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 142
    sget v0, Lcom/qbao/sdk/e/g;->hR:I

    invoke-virtual {p0, v11, v5, v0}, Lcom/qbao/sdk/ui/ForgotPwdView;->a(ZII)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 144
    sget v0, Lcom/qbao/sdk/e/g;->ib:I

    invoke-virtual {p0, v11, v5, v0}, Lcom/qbao/sdk/ui/ForgotPwdView;->a(ZII)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 145
    const-string v0, "\u66f4\u591a\u627e\u56de\u65b9\u5f0f\uff0c\u8bf7\u767b\u5f55www.qbao.com\u94b1\u5b9d\u7f51"

    sget v1, Lcom/qbao/sdk/e/g;->hy:I

    sget v2, Lcom/qbao/sdk/e/g;->il:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/qbao/sdk/ui/ForgotPwdView;->a(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 146
    sget v0, Lcom/qbao/sdk/e/g;->ib:I

    invoke-virtual {p0, v11, v5, v0}, Lcom/qbao/sdk/ui/ForgotPwdView;->a(ZII)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 148
    const-string v1, "\u4e0b\u4e00\u6b65"

    const/4 v2, -0x1

    sget v3, Lcom/qbao/sdk/e/g;->io:I

    sget v6, Lcom/qbao/sdk/e/g;->hH:I

    sget v7, Lcom/qbao/sdk/e/g;->hH:I

    sget v8, Lcom/qbao/sdk/e/g;->hL:I

    move-object v0, p0

    move v4, v12

    move v5, v11

    invoke-virtual/range {v0 .. v8}, Lcom/qbao/sdk/ui/ForgotPwdView;->a(Ljava/lang/String;IIFIIII)Landroid/widget/Button;

    move-result-object v0

    .line 149
    new-instance v1, Lcom/qbao/sdk/ui/ForgotPwdView$4;

    invoke-direct {v1, p0, v10}, Lcom/qbao/sdk/ui/ForgotPwdView$4;-><init>(Lcom/qbao/sdk/ui/ForgotPwdView;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 172
    return-object v9
.end method

.method private aQ()Landroid/widget/LinearLayout;
    .registers 11

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 176
    invoke-virtual {p0, v5, v5, v5, v3}, Lcom/qbao/sdk/ui/ForgotPwdView;->a(ZZII)Landroid/widget/LinearLayout;

    move-result-object v9

    .line 177
    sget v0, Lcom/qbao/sdk/e/g;->ic:I

    sget v1, Lcom/qbao/sdk/e/g;->ic:I

    sget v2, Lcom/qbao/sdk/e/g;->ic:I

    invoke-virtual {v9, v0, v3, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 179
    invoke-direct {p0}, Lcom/qbao/sdk/ui/ForgotPwdView;->aS()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 180
    sget v0, Lcom/qbao/sdk/e/g;->ic:I

    invoke-virtual {p0, v5, v3, v0}, Lcom/qbao/sdk/ui/ForgotPwdView;->a(ZII)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 182
    const-string v1, "\u5b8c\u6210"

    const/4 v2, -0x1

    sget v3, Lcom/qbao/sdk/e/g;->io:I

    const/high16 v4, 0x3f400000

    sget v6, Lcom/qbao/sdk/e/g;->hH:I

    sget v7, Lcom/qbao/sdk/e/g;->hH:I

    sget v8, Lcom/qbao/sdk/e/g;->hL:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/qbao/sdk/ui/ForgotPwdView;->a(Ljava/lang/String;IIFIIII)Landroid/widget/Button;

    move-result-object v0

    .line 183
    new-instance v1, Lcom/qbao/sdk/ui/ForgotPwdView$5;

    invoke-direct {v1, p0}, Lcom/qbao/sdk/ui/ForgotPwdView$5;-><init>(Lcom/qbao/sdk/ui/ForgotPwdView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 200
    return-object v9
.end method

.method private aR()Landroid/widget/LinearLayout;
    .registers 11

    .prologue
    const/16 v6, 0x11

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 204
    invoke-virtual {p0, v5, v5, v6, v4}, Lcom/qbao/sdk/ui/ForgotPwdView;->a(ZZII)Landroid/widget/LinearLayout;

    move-result-object v9

    .line 205
    sget v0, Lcom/qbao/sdk/e/g;->ic:I

    sget v1, Lcom/qbao/sdk/e/g;->ic:I

    sget v2, Lcom/qbao/sdk/e/g;->ic:I

    sget v3, Lcom/qbao/sdk/e/g;->ic:I

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 207
    const-string v0, "\u8bbe\u7f6e\u6210\u529f\r\n\u8bf7\u4f7f\u7528\u65b0\u5bc6\u7801\u767b\u5f55"

    sget v1, Lcom/qbao/sdk/e/g;->hD:I

    sget v2, Lcom/qbao/sdk/e/g;->ip:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/qbao/sdk/ui/ForgotPwdView;->a(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    .line 208
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 209
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 210
    sget v0, Lcom/qbao/sdk/e/g;->id:I

    invoke-virtual {p0, v5, v4, v0}, Lcom/qbao/sdk/ui/ForgotPwdView;->a(ZII)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 212
    const-string v1, "\u786e\u5b9a"

    const/4 v2, -0x1

    sget v3, Lcom/qbao/sdk/e/g;->io:I

    const/high16 v4, 0x3f400000

    sget v6, Lcom/qbao/sdk/e/g;->hH:I

    sget v7, Lcom/qbao/sdk/e/g;->hH:I

    sget v8, Lcom/qbao/sdk/e/g;->hL:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/qbao/sdk/ui/ForgotPwdView;->a(Ljava/lang/String;IIFIIII)Landroid/widget/Button;

    move-result-object v0

    .line 213
    new-instance v1, Lcom/qbao/sdk/ui/ForgotPwdView$6;

    invoke-direct {v1, p0}, Lcom/qbao/sdk/ui/ForgotPwdView$6;-><init>(Lcom/qbao/sdk/ui/ForgotPwdView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 222
    return-object v9
.end method

.method private aS()Landroid/widget/LinearLayout;
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 226
    const/16 v0, 0x10

    invoke-virtual {p0, v5, v5, v0, v5}, Lcom/qbao/sdk/ui/ForgotPwdView;->a(ZZII)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 227
    const-string v0, "qb_hide_pwd"

    sget v1, Lcom/qbao/sdk/e/g;->ig:I

    sget v2, Lcom/qbao/sdk/e/g;->ic:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/qbao/sdk/ui/ForgotPwdView;->b(Ljava/lang/String;II)Landroid/widget/ImageView;

    move-result-object v7

    .line 229
    sget v0, Lcom/qbao/sdk/e/g;->hU:I

    sget v1, Lcom/qbao/sdk/e/g;->hU:I

    sget v2, Lcom/qbao/sdk/e/g;->hU:I

    sget v3, Lcom/qbao/sdk/e/g;->hU:I

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 230
    const-string v1, "\u8bf7\u8f93\u5165\u65b0\u5bc6\u7801"

    const/high16 v2, 0x3f800000

    const/4 v3, 0x1

    sget v4, Lcom/qbao/sdk/e/g;->in:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/qbao/sdk/ui/ForgotPwdView;->a(Ljava/lang/String;FIIZ)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView;->eA:Landroid/widget/EditText;

    .line 231
    new-instance v0, Lcom/qbao/sdk/ui/ForgotPwdView$7;

    invoke-direct {v0, p0, v7}, Lcom/qbao/sdk/ui/ForgotPwdView$7;-><init>(Lcom/qbao/sdk/ui/ForgotPwdView;Landroid/widget/ImageView;)V

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 249
    iget-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView;->eA:Landroid/widget/EditText;

    invoke-virtual {p0, v0, v6}, Lcom/qbao/sdk/ui/ForgotPwdView;->a(Landroid/widget/EditText;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 250
    return-object v0
.end method

.method private ad(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 274
    const-string v0, "\u6b63\u5728\u5904\u7406..."

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/qbao/sdk/ui/ForgotPwdView;->b(Ljava/lang/String;Z)V

    .line 275
    iget-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView;->eD:Ljava/lang/String;

    new-instance v1, Lcom/qbao/sdk/ui/ForgotPwdView$9;

    invoke-direct {v1, p0, p1}, Lcom/qbao/sdk/ui/ForgotPwdView$9;-><init>(Lcom/qbao/sdk/ui/ForgotPwdView;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/qbao/sdk/b/a;->a(Ljava/lang/String;Lcom/qbao/core/a/b;)V

    .line 305
    return-void
.end method

.method static synthetic b(Lcom/qbao/sdk/ui/ForgotPwdView;)Lcom/qbao/sdk/e/f;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView;->eB:Lcom/qbao/sdk/e/f;

    return-object v0
.end method

.method static synthetic b(Lcom/qbao/sdk/ui/ForgotPwdView;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 47
    iput-object p1, p0, Lcom/qbao/sdk/ui/ForgotPwdView;->eC:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/qbao/sdk/ui/ForgotPwdView;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView;->ez:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/qbao/sdk/ui/ForgotPwdView;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 48
    iput-object p1, p0, Lcom/qbao/sdk/ui/ForgotPwdView;->eD:Ljava/lang/String;

    return-void
.end method

.method static synthetic d(Lcom/qbao/sdk/ui/ForgotPwdView;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/qbao/sdk/ui/ForgotPwdView;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView;->eA:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/qbao/sdk/ui/ForgotPwdView;)Z
    .registers 2

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView;->ex:Z

    return v0
.end method

.method static synthetic g(Lcom/qbao/sdk/ui/ForgotPwdView;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/qbao/sdk/ui/ForgotPwdView;->aQ()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/qbao/sdk/ui/ForgotPwdView;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView;->eD:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/qbao/sdk/ui/ForgotPwdView;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView;->eC:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/qbao/sdk/ui/ForgotPwdView;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/qbao/sdk/ui/ForgotPwdView;->aR()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method private s(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 254
    const-string v0, "\u6b63\u5728\u5904\u7406..."

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/qbao/sdk/ui/ForgotPwdView;->b(Ljava/lang/String;Z)V

    .line 255
    new-instance v0, Lcom/qbao/sdk/ui/ForgotPwdView$8;

    invoke-direct {v0, p0, p1}, Lcom/qbao/sdk/ui/ForgotPwdView$8;-><init>(Lcom/qbao/sdk/ui/ForgotPwdView;Ljava/lang/String;)V

    invoke-static {p1, p2, v0}, Lcom/qbao/sdk/b/a;->f(Ljava/lang/String;Ljava/lang/String;Lcom/qbao/core/a/b;)V

    .line 271
    return-void
.end method


# virtual methods
.method public a(ILandroid/view/View;)V
    .registers 4

    .prologue
    .line 103
    iput p1, p0, Lcom/qbao/sdk/ui/ForgotPwdView;->ew:I

    .line 104
    iget-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView;->ev:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_10

    .line 105
    iget-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView;->ev:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 106
    iget-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView;->ev:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 108
    :cond_10
    return-void
.end method

.method protected aA()Landroid/widget/RelativeLayout;
    .registers 7

    .prologue
    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 79
    iget v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView;->ew:I

    if-ne v0, v2, :cond_19

    const-string v1, ""

    :goto_8
    iget v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView;->ew:I

    if-ne v0, v2, :cond_1c

    move v2, v3

    :goto_d
    new-instance v5, Lcom/qbao/sdk/ui/ForgotPwdView$2;

    invoke-direct {v5, p0}, Lcom/qbao/sdk/ui/ForgotPwdView$2;-><init>(Lcom/qbao/sdk/ui/ForgotPwdView;)V

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/qbao/sdk/ui/ForgotPwdView;->a(Ljava/lang/String;ZZZLandroid/view/View$OnClickListener;)Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0

    :cond_19
    const-string v1, "\u627e\u56de\u5bc6\u7801"

    goto :goto_8

    :cond_1c
    const/4 v2, 0x1

    goto :goto_d
.end method

.method protected aB()Landroid/widget/LinearLayout;
    .registers 6

    .prologue
    const/4 v4, 0x3

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v2, v4, v0}, Lcom/qbao/sdk/ui/ForgotPwdView;->a(ZZII)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView;->ev:Landroid/widget/LinearLayout;

    .line 91
    iget-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView;->ev:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView;->ew:I

    if-ne v0, v2, :cond_24

    .line 93
    iget-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView;->ev:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/qbao/sdk/ui/ForgotPwdView;->aP()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 99
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView;->ev:Landroid/widget/LinearLayout;

    return-object v0

    .line 94
    :cond_24
    iget v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView;->ew:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_33

    .line 95
    iget-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView;->ev:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/qbao/sdk/ui/ForgotPwdView;->aQ()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_21

    .line 96
    :cond_33
    iget v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView;->ew:I

    if-ne v0, v4, :cond_21

    .line 97
    iget-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView;->ev:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/qbao/sdk/ui/ForgotPwdView;->aR()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_21
.end method
