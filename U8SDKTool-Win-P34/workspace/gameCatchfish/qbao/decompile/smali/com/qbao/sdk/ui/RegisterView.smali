.class public Lcom/qbao/sdk/ui/RegisterView;
.super Lcom/qbao/sdk/ui/BaseView;
.source "RegisterView.java"


# instance fields
.field private di:Lcom/qbao/sdk/api/QbaoSdk$ILoginCallback;

.field private eA:Landroid/widget/EditText;

.field private eB:Lcom/qbao/sdk/e/f;

.field private ex:Z

.field private ey:Landroid/widget/TextView;

.field private ez:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/qbao/sdk/ui/BaseView;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qbao/sdk/ui/RegisterView;->ex:Z

    .line 48
    new-instance v0, Lcom/qbao/sdk/ui/RegisterView$1;

    invoke-direct {v0, p0}, Lcom/qbao/sdk/ui/RegisterView$1;-><init>(Lcom/qbao/sdk/ui/RegisterView;)V

    iput-object v0, p0, Lcom/qbao/sdk/ui/RegisterView;->mHandler:Landroid/os/Handler;

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/qbao/sdk/ui/RegisterView;->setOrientation(I)V

    .line 68
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/qbao/sdk/ui/RegisterView;->setGravity(I)V

    .line 69
    invoke-static {}, Lcom/qbao/sdk/a/e;->an()Lcom/qbao/sdk/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qbao/sdk/a/e;->aq()Lcom/qbao/sdk/api/QbaoSdk$ILoginCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/qbao/sdk/ui/RegisterView;->di:Lcom/qbao/sdk/api/QbaoSdk$ILoginCallback;

    .line 70
    invoke-virtual {p0}, Lcom/qbao/sdk/ui/RegisterView;->aF()V

    .line 71
    return-void
.end method

.method static synthetic a(Lcom/qbao/sdk/ui/RegisterView;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/qbao/sdk/ui/RegisterView;->ey:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/qbao/sdk/ui/RegisterView;Lcom/qbao/sdk/e/f;)V
    .registers 2

    .prologue
    .line 43
    iput-object p1, p0, Lcom/qbao/sdk/ui/RegisterView;->eB:Lcom/qbao/sdk/e/f;

    return-void
.end method

.method static synthetic a(Lcom/qbao/sdk/ui/RegisterView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 205
    invoke-direct {p0, p1, p2, p3}, Lcom/qbao/sdk/ui/RegisterView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/qbao/sdk/ui/RegisterView;Z)V
    .registers 2

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/qbao/sdk/ui/RegisterView;->ex:Z

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 206
    const-string v0, "\u6b63\u5728\u5904\u7406..."

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/qbao/sdk/ui/RegisterView;->b(Ljava/lang/String;Z)V

    .line 207
    new-instance v0, Lcom/qbao/sdk/ui/RegisterView$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/qbao/sdk/ui/RegisterView$7;-><init>(Lcom/qbao/sdk/ui/RegisterView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p3, p2, v0}, Lcom/qbao/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qbao/core/a/c;)V

    .line 238
    return-void
.end method

.method private aS()Landroid/widget/LinearLayout;
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 175
    const/16 v0, 0x10

    invoke-virtual {p0, v5, v5, v0, v5}, Lcom/qbao/sdk/ui/RegisterView;->a(ZZII)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 176
    const-string v0, "qb_hide_pwd"

    sget v1, Lcom/qbao/sdk/e/g;->ig:I

    sget v2, Lcom/qbao/sdk/e/g;->ic:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/qbao/sdk/ui/RegisterView;->b(Ljava/lang/String;II)Landroid/widget/ImageView;

    move-result-object v7

    .line 178
    sget v0, Lcom/qbao/sdk/e/g;->hU:I

    sget v1, Lcom/qbao/sdk/e/g;->hU:I

    sget v2, Lcom/qbao/sdk/e/g;->hU:I

    sget v3, Lcom/qbao/sdk/e/g;->hU:I

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 179
    const-string v1, "\u8bbe\u7f6e6-14\u4f4d\u5bc6\u7801"

    const/high16 v2, 0x3f800000

    const/4 v3, 0x1

    sget v4, Lcom/qbao/sdk/e/g;->in:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/qbao/sdk/ui/RegisterView;->a(Ljava/lang/String;FIIZ)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/qbao/sdk/ui/RegisterView;->eA:Landroid/widget/EditText;

    .line 180
    new-instance v0, Lcom/qbao/sdk/ui/RegisterView$6;

    invoke-direct {v0, p0, v7}, Lcom/qbao/sdk/ui/RegisterView$6;-><init>(Lcom/qbao/sdk/ui/RegisterView;Landroid/widget/ImageView;)V

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 198
    iget-object v0, p0, Lcom/qbao/sdk/ui/RegisterView;->eA:Landroid/widget/EditText;

    invoke-virtual {p0, v0, v6}, Lcom/qbao/sdk/ui/RegisterView;->a(Landroid/widget/EditText;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 199
    return-object v0
.end method

.method static synthetic b(Lcom/qbao/sdk/ui/RegisterView;)Lcom/qbao/sdk/e/f;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/qbao/sdk/ui/RegisterView;->eB:Lcom/qbao/sdk/e/f;

    return-object v0
.end method

.method static synthetic c(Lcom/qbao/sdk/ui/RegisterView;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/qbao/sdk/ui/RegisterView;->ez:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/qbao/sdk/ui/RegisterView;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/qbao/sdk/ui/RegisterView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/qbao/sdk/ui/RegisterView;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/qbao/sdk/ui/RegisterView;->eA:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/qbao/sdk/ui/RegisterView;)Z
    .registers 2

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/qbao/sdk/ui/RegisterView;->ex:Z

    return v0
.end method

.method static synthetic g(Lcom/qbao/sdk/ui/RegisterView;)Lcom/qbao/sdk/api/QbaoSdk$ILoginCallback;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/qbao/sdk/ui/RegisterView;->di:Lcom/qbao/sdk/api/QbaoSdk$ILoginCallback;

    return-object v0
.end method


# virtual methods
.method protected aA()Landroid/widget/RelativeLayout;
    .registers 7

    .prologue
    const/4 v2, 0x1

    .line 82
    const-string v1, "\u6ce8\u518c"

    const/4 v4, 0x0

    new-instance v5, Lcom/qbao/sdk/ui/RegisterView$2;

    invoke-direct {v5, p0}, Lcom/qbao/sdk/ui/RegisterView$2;-><init>(Lcom/qbao/sdk/ui/RegisterView;)V

    move-object v0, p0

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/qbao/sdk/ui/RegisterView;->a(Ljava/lang/String;ZZZLandroid/view/View$OnClickListener;)Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method protected aB()Landroid/widget/LinearLayout;
    .registers 12

    .prologue
    .line 93
    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/qbao/sdk/ui/RegisterView;->a(ZZII)Landroid/widget/LinearLayout;

    move-result-object v9

    .line 94
    sget v0, Lcom/qbao/sdk/e/g;->ic:I

    const/4 v1, 0x0

    sget v2, Lcom/qbao/sdk/e/g;->ic:I

    sget v3, Lcom/qbao/sdk/e/g;->ic:I

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 96
    const-string v0, "\u83b7\u53d6\u9a8c\u8bc1\u7801"

    sget v1, Lcom/qbao/sdk/e/g;->hF:I

    sget v2, Lcom/qbao/sdk/e/g;->il:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/qbao/sdk/ui/RegisterView;->a(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/qbao/sdk/ui/RegisterView;->ey:Landroid/widget/TextView;

    .line 98
    const-string v1, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7"

    const v2, 0x3f0a3d71

    const/4 v3, 0x2

    sget v4, Lcom/qbao/sdk/e/g;->in:I

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/qbao/sdk/ui/RegisterView;->a(Ljava/lang/String;FIIZ)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/qbao/sdk/ui/RegisterView;->ez:Landroid/widget/EditText;

    .line 99
    iget-object v0, p0, Lcom/qbao/sdk/ui/RegisterView;->ey:Landroid/widget/TextView;

    new-instance v1, Lcom/qbao/sdk/ui/RegisterView$3;

    invoke-direct {v1, p0}, Lcom/qbao/sdk/ui/RegisterView$3;-><init>(Lcom/qbao/sdk/ui/RegisterView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/qbao/sdk/ui/RegisterView;->ez:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/qbao/sdk/ui/RegisterView;->ey:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/qbao/sdk/ui/RegisterView;->a(Landroid/widget/EditText;Landroid/widget/TextView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 118
    const/4 v0, 0x1

    const/4 v1, 0x0

    sget v2, Lcom/qbao/sdk/e/g;->hR:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/qbao/sdk/ui/RegisterView;->a(ZII)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 120
    const-string v0, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    const/high16 v1, 0x3f400000

    const/4 v2, 0x2

    sget v3, Lcom/qbao/sdk/e/g;->in:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/qbao/sdk/ui/RegisterView;->a(Ljava/lang/String;FII)Landroid/widget/EditText;

    move-result-object v10

    .line 121
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 122
    const/4 v0, 0x1

    const/4 v1, 0x0

    sget v2, Lcom/qbao/sdk/e/g;->hR:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/qbao/sdk/ui/RegisterView;->a(ZII)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 124
    invoke-direct {p0}, Lcom/qbao/sdk/ui/RegisterView;->aS()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 125
    const/4 v0, 0x1

    const/4 v1, 0x0

    sget v2, Lcom/qbao/sdk/e/g;->hU:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/qbao/sdk/ui/RegisterView;->a(ZII)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 127
    const-string v1, "\u7acb\u5373\u6ce8\u518c"

    const/4 v2, -0x1

    sget v3, Lcom/qbao/sdk/e/g;->io:I

    const/high16 v4, 0x3f400000

    const/4 v5, 0x1

    sget v6, Lcom/qbao/sdk/e/g;->hH:I

    sget v7, Lcom/qbao/sdk/e/g;->hH:I

    sget v8, Lcom/qbao/sdk/e/g;->hL:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/qbao/sdk/ui/RegisterView;->a(Ljava/lang/String;IIFIIII)Landroid/widget/Button;

    move-result-object v0

    .line 128
    new-instance v1, Lcom/qbao/sdk/ui/RegisterView$4;

    invoke-direct {v1, p0, v10}, Lcom/qbao/sdk/ui/RegisterView$4;-><init>(Lcom/qbao/sdk/ui/RegisterView;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 160
    const/4 v0, 0x1

    const/4 v1, 0x0

    sget v2, Lcom/qbao/sdk/e/g;->hW:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/qbao/sdk/ui/RegisterView;->a(ZII)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 162
    const-string v1, "\u6ce8\u518c\u5373\u540c\u610f\u300a\u94b1\u5b9d\u6e38\u620f\u6ce8\u518c\u534f\u8bae\u300b"

    sget v2, Lcom/qbao/sdk/e/g;->hG:I

    sget v3, Lcom/qbao/sdk/e/g;->hO:I

    sget v4, Lcom/qbao/sdk/e/g;->im:I

    new-instance v5, Lcom/qbao/sdk/ui/RegisterView$5;

    invoke-direct {v5, p0}, Lcom/qbao/sdk/ui/RegisterView$5;-><init>(Lcom/qbao/sdk/ui/RegisterView;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/qbao/sdk/ui/RegisterView;->a(Ljava/lang/String;IIILandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object v0

    .line 169
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 171
    return-object v9
.end method

.method protected aI()Landroid/widget/LinearLayout;
    .registers 4

    .prologue
    .line 75
    invoke-super {p0}, Lcom/qbao/sdk/ui/BaseView;->aI()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 76
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 77
    return-object v1
.end method
