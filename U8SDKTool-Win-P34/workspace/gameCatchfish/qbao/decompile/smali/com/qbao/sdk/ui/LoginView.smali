.class public Lcom/qbao/sdk/ui/LoginView;
.super Lcom/qbao/sdk/ui/BaseView;
.source "LoginView.java"


# instance fields
.field private di:Lcom/qbao/sdk/api/QbaoSdk$ILoginCallback;

.field private eA:Landroid/widget/EditText;

.field private eR:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/qbao/sdk/ui/BaseView;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/qbao/sdk/ui/LoginView;->setOrientation(I)V

    .line 39
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/qbao/sdk/ui/LoginView;->setGravity(I)V

    .line 40
    invoke-static {}, Lcom/qbao/sdk/a/e;->an()Lcom/qbao/sdk/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qbao/sdk/a/e;->aq()Lcom/qbao/sdk/api/QbaoSdk$ILoginCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/qbao/sdk/ui/LoginView;->di:Lcom/qbao/sdk/api/QbaoSdk$ILoginCallback;

    .line 41
    invoke-virtual {p0}, Lcom/qbao/sdk/ui/LoginView;->aF()V

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/qbao/sdk/ui/LoginView;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/qbao/sdk/ui/LoginView;->eR:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/qbao/sdk/ui/LoginView;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    .prologue
    .line 186
    invoke-direct {p0, p1, p2, p3}, Lcom/qbao/sdk/ui/LoginView;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private aT()Landroid/widget/LinearLayout;
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 164
    const/16 v0, 0x10

    invoke-virtual {p0, v5, v5, v0, v5}, Lcom/qbao/sdk/ui/LoginView;->a(ZZII)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 165
    const-string v1, "\u8bf7\u8f93\u5165\u5bc6\u7801"

    const/high16 v2, 0x3f800000

    const/4 v3, 0x1

    sget v4, Lcom/qbao/sdk/e/g;->in:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/qbao/sdk/ui/LoginView;->a(Ljava/lang/String;FIIZ)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/qbao/sdk/ui/LoginView;->eA:Landroid/widget/EditText;

    .line 166
    const-string v0, "\u5fd8\u8bb0\u5bc6\u7801 \uff1f"

    sget v1, Lcom/qbao/sdk/e/g;->hF:I

    sget v2, Lcom/qbao/sdk/e/g;->hN:I

    sget v3, Lcom/qbao/sdk/e/g;->il:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/qbao/sdk/ui/LoginView;->a(Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v0

    .line 167
    new-instance v1, Lcom/qbao/sdk/ui/LoginView$5;

    invoke-direct {v1, p0}, Lcom/qbao/sdk/ui/LoginView$5;-><init>(Lcom/qbao/sdk/ui/LoginView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 182
    sget v0, Lcom/qbao/sdk/e/g;->hX:I

    invoke-virtual {p0, v5, v5, v0}, Lcom/qbao/sdk/ui/LoginView;->a(ZII)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 183
    iget-object v0, p0, Lcom/qbao/sdk/ui/LoginView;->eA:Landroid/widget/EditText;

    invoke-virtual {p0, v0, v6}, Lcom/qbao/sdk/ui/LoginView;->a(Landroid/widget/EditText;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/qbao/sdk/ui/LoginView;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/qbao/sdk/ui/LoginView;->eA:Landroid/widget/EditText;

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    .prologue
    .line 187
    const-string v0, "\u6b63\u5728\u5904\u7406..."

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/qbao/sdk/ui/LoginView;->b(Ljava/lang/String;Z)V

    .line 188
    invoke-static {}, Lcom/qbao/sdk/a/a;->Y()Lcom/qbao/sdk/a/a;

    move-result-object v0

    new-instance v1, Lcom/qbao/sdk/ui/LoginView$6;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/qbao/sdk/ui/LoginView$6;-><init>(Lcom/qbao/sdk/ui/LoginView;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/qbao/sdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/qbao/core/a/b;)V

    .line 212
    return-void
.end method

.method static synthetic c(Lcom/qbao/sdk/ui/LoginView;)Lcom/qbao/sdk/api/QbaoSdk$ILoginCallback;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/qbao/sdk/ui/LoginView;->di:Lcom/qbao/sdk/api/QbaoSdk$ILoginCallback;

    return-object v0
.end method


# virtual methods
.method protected aA()Landroid/widget/RelativeLayout;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 53
    const-string v1, "\u767b\u5f55"

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/qbao/sdk/ui/LoginView;->a(Ljava/lang/String;ZZZLandroid/view/View$OnClickListener;)Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method protected aB()Landroid/widget/LinearLayout;
    .registers 15

    .prologue
    const/high16 v4, 0x3f400000

    const/16 v12, 0x10

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v11, 0x0

    .line 59
    invoke-virtual {p0, v5, v5, v5, v11}, Lcom/qbao/sdk/ui/LoginView;->a(ZZII)Landroid/widget/LinearLayout;

    move-result-object v9

    .line 60
    sget v0, Lcom/qbao/sdk/e/g;->ic:I

    sget v1, Lcom/qbao/sdk/e/g;->ic:I

    sget v2, Lcom/qbao/sdk/e/g;->ic:I

    invoke-virtual {v9, v0, v11, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 61
    const-string v0, "\u8bf7\u8f93\u5165\u94b1\u5b9d\u8d26\u53f7"

    sget v1, Lcom/qbao/sdk/e/g;->in:I

    invoke-virtual {p0, v0, v4, v8, v1}, Lcom/qbao/sdk/ui/LoginView;->a(Ljava/lang/String;FII)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/qbao/sdk/ui/LoginView;->eR:Landroid/widget/EditText;

    .line 63
    iget-object v0, p0, Lcom/qbao/sdk/ui/LoginView;->eR:Landroid/widget/EditText;

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 64
    sget v0, Lcom/qbao/sdk/e/g;->hR:I

    invoke-virtual {p0, v5, v11, v0}, Lcom/qbao/sdk/ui/LoginView;->a(ZII)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 65
    invoke-direct {p0}, Lcom/qbao/sdk/ui/LoginView;->aT()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 67
    sget v0, Lcom/qbao/sdk/e/g;->ia:I

    invoke-virtual {p0, v5, v11, v0}, Lcom/qbao/sdk/ui/LoginView;->a(ZII)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 69
    new-instance v10, Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/qbao/sdk/ui/LoginView;->mContext:Landroid/content/Context;

    invoke-direct {v10, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 70
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    sget v1, Lcom/qbao/sdk/e/g;->ib:I

    sget v2, Lcom/qbao/sdk/e/g;->ib:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v0}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v11}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v10, v0}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    const-string v0, "qb_unchecked"

    invoke-virtual {p0, v0}, Lcom/qbao/sdk/ui/LoginView;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    new-instance v0, Lcom/qbao/sdk/ui/LoginView$1;

    invoke-direct {v0, p0, v10}, Lcom/qbao/sdk/ui/LoginView$1;-><init>(Lcom/qbao/sdk/ui/LoginView;Landroid/widget/CheckBox;)V

    invoke-virtual {v10, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 85
    const-string v0, "\u8bb0\u4f4f\u5bc6\u7801"

    sget v1, Lcom/qbao/sdk/e/g;->hy:I

    sget v2, Lcom/qbao/sdk/e/g;->im:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/qbao/sdk/ui/LoginView;->a(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    .line 86
    sget-object v1, Lcom/qbao/core/d/d$a;->aO:Lcom/qbao/core/d/d$a;

    sget v2, Lcom/qbao/sdk/e/g;->hS:I

    new-array v3, v8, [Landroid/view/View;

    aput-object v10, v3, v11

    aput-object v0, v3, v5

    invoke-virtual {p0, v1, v11, v2, v3}, Lcom/qbao/sdk/ui/LoginView;->a(Lcom/qbao/core/d/d$a;ZI[Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 87
    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 89
    const-string v1, "qb_go"

    invoke-virtual {p0, v1}, Lcom/qbao/sdk/ui/LoginView;->ac(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v1

    .line 90
    const-string v2, "\u5173\u4e8e\u94b1\u5b9d\u6e38\u620f"

    sget v3, Lcom/qbao/sdk/e/g;->hy:I

    sget v6, Lcom/qbao/sdk/e/g;->hP:I

    sget v7, Lcom/qbao/sdk/e/g;->im:I

    invoke-virtual {p0, v2, v3, v6, v7}, Lcom/qbao/sdk/ui/LoginView;->a(Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v2

    .line 91
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 93
    sget-object v3, Lcom/qbao/core/d/d$a;->aO:Lcom/qbao/core/d/d$a;

    sget v6, Lcom/qbao/sdk/e/g;->aJ:I

    new-array v7, v8, [Landroid/view/View;

    aput-object v2, v7, v11

    aput-object v1, v7, v5

    invoke-virtual {p0, v3, v11, v6, v7}, Lcom/qbao/sdk/ui/LoginView;->a(Lcom/qbao/core/d/d$a;ZI[Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 94
    new-instance v2, Lcom/qbao/sdk/ui/LoginView$2;

    invoke-direct {v2, p0}, Lcom/qbao/sdk/ui/LoginView$2;-><init>(Lcom/qbao/sdk/ui/LoginView;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 102
    sget-object v2, Lcom/qbao/core/d/d$a;->aR:Lcom/qbao/core/d/d$a;

    new-array v3, v8, [Landroid/view/View;

    aput-object v0, v3, v11

    aput-object v1, v3, v5

    invoke-virtual {p0, v2, v5, v11, v3}, Lcom/qbao/sdk/ui/LoginView;->a(Lcom/qbao/core/d/d$a;ZI[Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 103
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v6, 0x3fe8000000000000L

    iget-boolean v1, p0, Lcom/qbao/sdk/ui/LoginView;->el:Z

    if-eqz v1, :cond_151

    sget v1, Lcom/qbao/sdk/e/g;->aD:I

    :goto_cb
    int-to-double v12, v1

    mul-double/2addr v6, v12

    double-to-int v1, v6

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 105
    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 106
    sget v0, Lcom/qbao/sdk/e/g;->ib:I

    invoke-virtual {p0, v5, v11, v0}, Lcom/qbao/sdk/ui/LoginView;->a(ZII)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 108
    invoke-static {}, Lcom/qbao/sdk/a/a;->Y()Lcom/qbao/sdk/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qbao/sdk/a/a;->getUserName()Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {}, Lcom/qbao/sdk/a/a;->Y()Lcom/qbao/sdk/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qbao/sdk/a/a;->aa()Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_100

    .line 111
    iget-object v2, p0, Lcom/qbao/sdk/ui/LoginView;->eR:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v2, p0, Lcom/qbao/sdk/ui/LoginView;->eR:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 114
    :cond_100
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_117

    .line 115
    iget-object v0, p0, Lcom/qbao/sdk/ui/LoginView;->eA:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/qbao/sdk/ui/LoginView;->eA:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 117
    invoke-virtual {v10, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 121
    :cond_117
    const-string v1, "\u767b\u5f55"

    const/4 v2, -0x1

    sget v3, Lcom/qbao/sdk/e/g;->io:I

    sget v6, Lcom/qbao/sdk/e/g;->hH:I

    sget v7, Lcom/qbao/sdk/e/g;->hH:I

    sget v8, Lcom/qbao/sdk/e/g;->hL:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/qbao/sdk/ui/LoginView;->a(Ljava/lang/String;IIFIIII)Landroid/widget/Button;

    move-result-object v0

    .line 122
    new-instance v1, Lcom/qbao/sdk/ui/LoginView$3;

    invoke-direct {v1, p0, v10}, Lcom/qbao/sdk/ui/LoginView$3;-><init>(Lcom/qbao/sdk/ui/LoginView;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 148
    sget v0, Lcom/qbao/sdk/e/g;->hW:I

    invoke-virtual {p0, v5, v11, v0}, Lcom/qbao/sdk/ui/LoginView;->a(ZII)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 150
    const-string v1, "\u6ce8\u518c\u94b1\u5b9d\u8d26\u53f7"

    sget v2, Lcom/qbao/sdk/e/g;->hG:I

    sget v3, Lcom/qbao/sdk/e/g;->hO:I

    sget v4, Lcom/qbao/sdk/e/g;->im:I

    new-instance v5, Lcom/qbao/sdk/ui/LoginView$4;

    invoke-direct {v5, p0}, Lcom/qbao/sdk/ui/LoginView$4;-><init>(Lcom/qbao/sdk/ui/LoginView;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/qbao/sdk/ui/LoginView;->a(Ljava/lang/String;IIILandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object v0

    .line 157
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 159
    return-object v9

    .line 103
    :cond_151
    sget v1, Lcom/qbao/sdk/e/g;->aC:I

    goto/16 :goto_cb
.end method

.method protected aI()Landroid/widget/LinearLayout;
    .registers 4

    .prologue
    .line 46
    invoke-super {p0}, Lcom/qbao/sdk/ui/BaseView;->aI()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 47
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 48
    return-object v1
.end method

.method protected aO()V
    .registers 5

    .prologue
    .line 216
    invoke-super {p0}, Lcom/qbao/sdk/ui/BaseView;->aO()V

    .line 217
    iget-object v0, p0, Lcom/qbao/sdk/ui/LoginView;->di:Lcom/qbao/sdk/api/QbaoSdk$ILoginCallback;

    if-eqz v0, :cond_11

    .line 218
    iget-object v0, p0, Lcom/qbao/sdk/ui/LoginView;->di:Lcom/qbao/sdk/api/QbaoSdk$ILoginCallback;

    const/4 v1, 0x3

    const-string v2, ""

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, Lcom/qbao/sdk/api/QbaoSdk$ILoginCallback;->onResult(ILjava/lang/String;Ljava/lang/Object;)V

    .line 220
    :cond_11
    invoke-static {}, Lcom/qbao/sdk/a/e;->exitApp()V

    .line 221
    return-void
.end method
