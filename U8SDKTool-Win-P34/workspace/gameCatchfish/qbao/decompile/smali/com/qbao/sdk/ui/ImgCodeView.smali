.class public Lcom/qbao/sdk/ui/ImgCodeView;
.super Lcom/qbao/sdk/ui/BaseView;
.source "ImgCodeView.java"


# instance fields
.field private eD:Ljava/lang/String;

.field private eL:Landroid/widget/ImageView;

.field private eM:Landroid/graphics/Bitmap;

.field private eN:Landroid/widget/EditText;

.field private eO:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 6

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/qbao/sdk/ui/BaseView;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qbao/sdk/ui/ImgCodeView;->eM:Landroid/graphics/Bitmap;

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/qbao/sdk/ui/ImgCodeView;->setOrientation(I)V

    .line 47
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/qbao/sdk/ui/ImgCodeView;->setGravity(I)V

    .line 48
    iput-object p2, p0, Lcom/qbao/sdk/ui/ImgCodeView;->eD:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/qbao/sdk/ui/ImgCodeView;->eO:Ljava/lang/String;

    .line 50
    iput-object p4, p0, Lcom/qbao/sdk/ui/ImgCodeView;->mHandler:Landroid/os/Handler;

    .line 51
    invoke-virtual {p0}, Lcom/qbao/sdk/ui/ImgCodeView;->aF()V

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/qbao/sdk/ui/ImgCodeView;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/qbao/sdk/ui/ImgCodeView;->eL:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a(Landroid/widget/ImageView;)V
    .registers 3

    .prologue
    .line 127
    new-instance v0, Lcom/qbao/sdk/ui/ImgCodeView$4;

    invoke-direct {v0, p0, p1}, Lcom/qbao/sdk/ui/ImgCodeView$4;-><init>(Lcom/qbao/sdk/ui/ImgCodeView;Landroid/widget/ImageView;)V

    invoke-static {v0}, Lcom/qbao/sdk/b/a;->b(Lcom/qbao/core/a/b;)V

    .line 146
    return-void
.end method

.method static synthetic a(Lcom/qbao/sdk/ui/ImgCodeView;Landroid/graphics/Bitmap;)V
    .registers 2

    .prologue
    .line 34
    iput-object p1, p0, Lcom/qbao/sdk/ui/ImgCodeView;->eM:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic a(Lcom/qbao/sdk/ui/ImgCodeView;Landroid/widget/ImageView;)V
    .registers 2

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/qbao/sdk/ui/ImgCodeView;->a(Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic a(Lcom/qbao/sdk/ui/ImgCodeView;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/qbao/sdk/ui/ImgCodeView;->ae(Ljava/lang/String;)V

    return-void
.end method

.method private ae(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 154
    const-string v0, "\u6b63\u5728\u5904\u7406..."

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/qbao/sdk/ui/ImgCodeView;->b(Ljava/lang/String;Z)V

    .line 155
    iget-object v0, p0, Lcom/qbao/sdk/ui/ImgCodeView;->eD:Ljava/lang/String;

    const-string v1, "2"

    iget-object v2, p0, Lcom/qbao/sdk/ui/ImgCodeView;->eO:Ljava/lang/String;

    new-instance v3, Lcom/qbao/sdk/ui/ImgCodeView$5;

    invoke-direct {v3, p0}, Lcom/qbao/sdk/ui/ImgCodeView$5;-><init>(Lcom/qbao/sdk/ui/ImgCodeView;)V

    invoke-static {v0, v1, p1, v2, v3}, Lcom/qbao/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qbao/core/a/b;)V

    .line 177
    return-void
.end method

.method static synthetic b(Lcom/qbao/sdk/ui/ImgCodeView;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/qbao/sdk/ui/ImgCodeView;->eN:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/qbao/sdk/ui/ImgCodeView;)Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/qbao/sdk/ui/ImgCodeView;->eM:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic d(Lcom/qbao/sdk/ui/ImgCodeView;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/qbao/sdk/ui/ImgCodeView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected aA()Landroid/widget/RelativeLayout;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 56
    const-string v0, "20"

    iget-object v1, p0, Lcom/qbao/sdk/ui/ImgCodeView;->eO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v1, "\u627e\u56de\u5bc6\u7801"

    :goto_d
    const/4 v2, 0x1

    new-instance v5, Lcom/qbao/sdk/ui/ImgCodeView$1;

    invoke-direct {v5, p0}, Lcom/qbao/sdk/ui/ImgCodeView$1;-><init>(Lcom/qbao/sdk/ui/ImgCodeView;)V

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/qbao/sdk/ui/ImgCodeView;->a(Ljava/lang/String;ZZZLandroid/view/View$OnClickListener;)Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0

    :cond_1a
    const-string v1, "\u6ce8\u518c"

    goto :goto_d
.end method

.method protected aB()Landroid/widget/LinearLayout;
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 67
    invoke-virtual {p0, v10, v10, v10, v3}, Lcom/qbao/sdk/ui/ImgCodeView;->a(ZZII)Landroid/widget/LinearLayout;

    move-result-object v9

    .line 68
    sget v0, Lcom/qbao/sdk/e/g;->ic:I

    sget v1, Lcom/qbao/sdk/e/g;->ic:I

    sget v2, Lcom/qbao/sdk/e/g;->ic:I

    invoke-virtual {v9, v0, v3, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 70
    const/16 v0, 0x10

    invoke-virtual {p0, v3, v3, v0, v3}, Lcom/qbao/sdk/ui/ImgCodeView;->a(ZZII)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 71
    sget v0, Lcom/qbao/sdk/e/g;->hT:I

    sget v1, Lcom/qbao/sdk/e/g;->hT:I

    invoke-virtual {v6, v0, v3, v1, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 72
    const-string v0, ""

    sget v1, Lcom/qbao/sdk/e/g;->ie:I

    sget v2, Lcom/qbao/sdk/e/g;->if:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/qbao/sdk/ui/ImgCodeView;->b(Ljava/lang/String;II)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/qbao/sdk/ui/ImgCodeView;->eL:Landroid/widget/ImageView;

    .line 74
    iget-object v0, p0, Lcom/qbao/sdk/ui/ImgCodeView;->eM:Landroid/graphics/Bitmap;

    if-nez v0, :cond_ac

    .line 75
    iget-object v0, p0, Lcom/qbao/sdk/ui/ImgCodeView;->eL:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/qbao/sdk/ui/ImgCodeView;->a(Landroid/widget/ImageView;)V

    .line 79
    :goto_31
    iget-object v0, p0, Lcom/qbao/sdk/ui/ImgCodeView;->eL:Landroid/widget/ImageView;

    new-instance v1, Lcom/qbao/sdk/ui/ImgCodeView$2;

    invoke-direct {v1, p0}, Lcom/qbao/sdk/ui/ImgCodeView$2;-><init>(Lcom/qbao/sdk/ui/ImgCodeView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/qbao/sdk/ui/ImgCodeView;->eL:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 87
    const-string v1, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    const/high16 v2, 0x3f800000

    sget v4, Lcom/qbao/sdk/e/g;->in:I

    move-object v0, p0

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/qbao/sdk/ui/ImgCodeView;->a(Ljava/lang/String;FIIZ)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/qbao/sdk/ui/ImgCodeView;->eN:Landroid/widget/EditText;

    .line 90
    iget-object v0, p0, Lcom/qbao/sdk/ui/ImgCodeView;->eN:Landroid/widget/EditText;

    invoke-virtual {p0, v0, v6}, Lcom/qbao/sdk/ui/ImgCodeView;->a(Landroid/widget/EditText;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 91
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 93
    sget v0, Lcom/qbao/sdk/e/g;->hZ:I

    invoke-virtual {p0, v10, v3, v0}, Lcom/qbao/sdk/ui/ImgCodeView;->a(ZII)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 95
    const-string v0, "qb_tip"

    invoke-virtual {p0, v0}, Lcom/qbao/sdk/ui/ImgCodeView;->ac(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    .line 96
    const-string v1, "\u9700\u5148\u8f93\u5165\u56fe\u5f62\u9a8c\u8bc1\u7801\uff0c\u624d\u53ef\u83b7\u53d6\u77ed\u4fe1\u9a8c\u8bc1\u7801"

    sget v2, Lcom/qbao/sdk/e/g;->hI:I

    sget v4, Lcom/qbao/sdk/e/g;->hI:I

    sget v5, Lcom/qbao/sdk/e/g;->il:I

    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/qbao/sdk/ui/ImgCodeView;->a(Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v1

    .line 98
    sget-object v2, Lcom/qbao/core/d/d$a;->aO:Lcom/qbao/core/d/d$a;

    sget v4, Lcom/qbao/sdk/e/g;->hT:I

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/view/View;

    aput-object v0, v5, v3

    aput-object v1, v5, v10

    invoke-virtual {p0, v2, v10, v4, v5}, Lcom/qbao/sdk/ui/ImgCodeView;->a(Lcom/qbao/core/d/d$a;ZI[Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 99
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 101
    sget v0, Lcom/qbao/sdk/e/g;->id:I

    invoke-virtual {p0, v10, v3, v0}, Lcom/qbao/sdk/ui/ImgCodeView;->a(ZII)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 103
    const-string v1, "\u786e\u5b9a"

    const/4 v2, -0x1

    sget v3, Lcom/qbao/sdk/e/g;->io:I

    const/high16 v4, 0x3f400000

    sget v6, Lcom/qbao/sdk/e/g;->hH:I

    sget v7, Lcom/qbao/sdk/e/g;->hH:I

    sget v8, Lcom/qbao/sdk/e/g;->hL:I

    move-object v0, p0

    move v5, v10

    invoke-virtual/range {v0 .. v8}, Lcom/qbao/sdk/ui/ImgCodeView;->a(Ljava/lang/String;IIFIIII)Landroid/widget/Button;

    move-result-object v0

    .line 104
    new-instance v1, Lcom/qbao/sdk/ui/ImgCodeView$3;

    invoke-direct {v1, p0}, Lcom/qbao/sdk/ui/ImgCodeView$3;-><init>(Lcom/qbao/sdk/ui/ImgCodeView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 117
    return-object v9

    .line 77
    :cond_ac
    iget-object v0, p0, Lcom/qbao/sdk/ui/ImgCodeView;->eL:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qbao/sdk/ui/ImgCodeView;->eM:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_31
.end method
