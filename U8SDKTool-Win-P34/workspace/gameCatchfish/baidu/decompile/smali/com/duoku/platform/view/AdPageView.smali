.class public abstract Lcom/duoku/platform/view/AdPageView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/graphics/Bitmap;

.field private e:Lcom/duoku/platform/bean/b;

.field private f:Landroid/content/Context;

.field private g:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/AdPageView;->a(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/AdPageView;->a(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/AdPageView;)Lcom/duoku/platform/bean/b;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/duoku/platform/view/AdPageView;->e:Lcom/duoku/platform/bean/b;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 59
    iput-object p1, p0, Lcom/duoku/platform/view/AdPageView;->f:Landroid/content/Context;

    .line 61
    invoke-static {}, Lcom/duoku/platform/j/a;->a()Lcom/duoku/platform/j/a;

    move-result-object v0

    const-string v1, "30"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/j/a;->a(Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/duoku/platform/j/a;->a()Lcom/duoku/platform/j/a;

    move-result-object v0

    const-string v1, "cp_ad_show_statistic"

    invoke-virtual {v0, p1, v1}, Lcom/duoku/platform/j/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/duoku/platform/view/AdPageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "dk_ad_layout"

    invoke-static {p1, v1}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 67
    const-string v0, "btn_close"

    invoke-static {p1, v0}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/AdPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoku/platform/view/AdPageView;->b:Landroid/widget/ImageView;

    .line 68
    iget-object v0, p0, Lcom/duoku/platform/view/AdPageView;->b:Landroid/widget/ImageView;

    new-instance v1, Lcom/duoku/platform/view/AdPageView$1;

    invoke-direct {v1, p0}, Lcom/duoku/platform/view/AdPageView$1;-><init>(Lcom/duoku/platform/view/AdPageView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    new-instance v0, Lcom/duoku/platform/view/AdPageView$2;

    invoke-direct {v0, p0, p1}, Lcom/duoku/platform/view/AdPageView$2;-><init>(Lcom/duoku/platform/view/AdPageView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/view/AdPageView;->g:Landroid/view/View$OnClickListener;

    .line 128
    const-string v0, "tv_des"

    invoke-static {p1, v0}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/AdPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/view/AdPageView;->c:Landroid/widget/TextView;

    .line 129
    iget-object v0, p0, Lcom/duoku/platform/view/AdPageView;->g:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_5e

    .line 131
    iget-object v0, p0, Lcom/duoku/platform/view/AdPageView;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/view/AdPageView;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    :cond_5e
    const-string v0, "iv_ad"

    invoke-static {p1, v0}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/AdPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoku/platform/view/AdPageView;->a:Landroid/widget/ImageView;

    .line 136
    iget-object v0, p0, Lcom/duoku/platform/view/AdPageView;->g:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_77

    .line 138
    iget-object v0, p0, Lcom/duoku/platform/view/AdPageView;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/duoku/platform/view/AdPageView;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    :cond_77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 142
    new-instance v1, Lcom/duoku/platform/view/AdPageView$3;

    invoke-direct {v1, p0, v0}, Lcom/duoku/platform/view/AdPageView$3;-><init>(Lcom/duoku/platform/view/AdPageView;Landroid/os/Handler;)V

    .line 154
    invoke-virtual {v1}, Lcom/duoku/platform/view/AdPageView$3;->start()V

    .line 155
    return-void
.end method

.method static synthetic b(Lcom/duoku/platform/view/AdPageView;)V
    .registers 1

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/duoku/platform/view/AdPageView;->d()V

    return-void
.end method

.method private d()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 164
    sget-object v0, Lcom/duoku/platform/util/q;->a:Ljava/lang/String;

    sget-object v2, Lcom/duoku/platform/util/q;->e:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/duoku/platform/util/q;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/bean/b;

    iput-object v0, p0, Lcom/duoku/platform/view/AdPageView;->e:Lcom/duoku/platform/bean/b;

    .line 166
    iget-object v0, p0, Lcom/duoku/platform/view/AdPageView;->e:Lcom/duoku/platform/bean/b;

    if-eqz v0, :cond_49

    .line 168
    iget-object v0, p0, Lcom/duoku/platform/view/AdPageView;->e:Lcom/duoku/platform/bean/b;

    invoke-virtual {v0}, Lcom/duoku/platform/bean/b;->b()Ljava/lang/String;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_65

    .line 171
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 172
    const/4 v3, -0x1

    if-eq v2, v3, :cond_28

    .line 174
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 176
    :cond_28
    sget-object v2, Lcom/duoku/platform/util/q;->a:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/duoku/platform/util/q;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 178
    :goto_2e
    if-eqz v0, :cond_35

    .line 180
    iget-object v1, p0, Lcom/duoku/platform/view/AdPageView;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 182
    :cond_35
    iget-object v0, p0, Lcom/duoku/platform/view/AdPageView;->e:Lcom/duoku/platform/bean/b;

    invoke-virtual {v0}, Lcom/duoku/platform/bean/b;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 184
    iget-object v0, p0, Lcom/duoku/platform/view/AdPageView;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/view/AdPageView;->e:Lcom/duoku/platform/bean/b;

    invoke-virtual {v1}, Lcom/duoku/platform/bean/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    :cond_48
    :goto_48
    return-void

    .line 190
    :cond_49
    new-instance v0, Lcom/duoku/platform/bean/b;

    invoke-direct {v0}, Lcom/duoku/platform/bean/b;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/view/AdPageView;->e:Lcom/duoku/platform/bean/b;

    .line 191
    iget-object v0, p0, Lcom/duoku/platform/view/AdPageView;->e:Lcom/duoku/platform/bean/b;

    const-string v1, "http://m.baidu.com"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/bean/b;->e(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/duoku/platform/view/AdPageView;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/duoku/platform/view/AdPageView;->f:Landroid/content/Context;

    const-string v2, "dk_default_ad"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_48

    :cond_65
    move-object v0, v1

    goto :goto_2e
.end method


# virtual methods
.method public abstract a()V
.end method

.method public b()V
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/duoku/platform/view/AdPageView;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 203
    iget-object v0, p0, Lcom/duoku/platform/view/AdPageView;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/view/AdPageView;->d:Landroid/graphics/Bitmap;

    .line 206
    :cond_c
    return-void
.end method

.method public c()V
    .registers 1

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/duoku/platform/view/AdPageView;->b()V

    .line 211
    invoke-virtual {p0}, Lcom/duoku/platform/view/AdPageView;->a()V

    .line 212
    return-void
.end method
