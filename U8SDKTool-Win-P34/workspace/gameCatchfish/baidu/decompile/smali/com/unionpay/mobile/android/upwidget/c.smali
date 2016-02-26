.class public final Lcom/unionpay/mobile/android/upwidget/c;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:I

.field private j:I

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/c;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/c;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/c;->g:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/unionpay/mobile/android/upwidget/c;->h:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/unionpay/mobile/android/upwidget/c;->i:I

    iput v1, p0, Lcom/unionpay/mobile/android/upwidget/c;->j:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/c;->l:Ljava/util/ArrayList;

    new-instance v0, Lcom/unionpay/mobile/android/upwidget/d;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/upwidget/d;-><init>(Lcom/unionpay/mobile/android/upwidget/c;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/c;->m:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/unionpay/mobile/android/upwidget/c;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/unionpay/mobile/android/upwidget/c;->k:Ljava/util/List;

    iput-object p3, p0, Lcom/unionpay/mobile/android/upwidget/c;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/unionpay/mobile/android/upwidget/c;->f:Ljava/lang/String;

    iput-object p5, p0, Lcom/unionpay/mobile/android/upwidget/c;->g:Ljava/lang/String;

    iput p6, p0, Lcom/unionpay/mobile/android/upwidget/c;->i:I

    iput p7, p0, Lcom/unionpay/mobile/android/upwidget/c;->j:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/c;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object v0

    const/16 v1, 0x3f7

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/resource/c;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/c;->a:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/c;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object v0

    const/16 v1, 0x3f8

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/resource/c;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/c;->b:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/c;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/resource/c;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/c;->c:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/upwidget/c;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/c;->l:Ljava/util/ArrayList;

    return-object v0
.end method

.method private d()Z
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/c;->e:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/c;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private d(I)Z
    .registers 5

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/upwidget/c;->c()I

    move-result v0

    sub-int v0, p1, v0

    iget-object v2, p0, Lcom/unionpay/mobile/android/upwidget/c;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_10

    :goto_f
    return v1

    :cond_10
    iget-object v2, p0, Lcom/unionpay/mobile/android/upwidget/c;->k:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "available"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_29

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    check-cast v0, Ljava/lang/Boolean;

    if-ne v2, v0, :cond_29

    const/4 v0, 0x0

    :goto_27
    move v1, v0

    goto :goto_f

    :cond_29
    move v0, v1

    goto :goto_27
.end method

.method private e()Z
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/c;->f:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/c;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/upwidget/c;->h:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/unionpay/mobile/android/upwidget/c;->h:Z

    return-void

    :cond_8
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final a(I)V
    .registers 2

    iput p1, p0, Lcom/unionpay/mobile/android/upwidget/c;->i:I

    return-void
.end method

.method public final a(Landroid/view/View$OnClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/c;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/upwidget/c;->e:Ljava/lang/String;

    return-void
.end method

.method public final b(I)Landroid/text/Spanned;
    .registers 5

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/upwidget/c;->c()I

    move-result v0

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/c;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/c;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "text1"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "text2"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_f
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/upwidget/c;->g:Ljava/lang/String;

    return-void
.end method

.method public final b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/upwidget/c;->h:Z

    return v0
.end method

.method public final c()I
    .registers 2

    invoke-direct {p0}, Lcom/unionpay/mobile/android/upwidget/c;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final c(I)Z
    .registers 5

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/upwidget/c;->c()I

    move-result v0

    sub-int v0, p1, v0

    iget-object v2, p0, Lcom/unionpay/mobile/android/upwidget/c;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_10

    :goto_f
    return v1

    :cond_10
    iget-object v2, p0, Lcom/unionpay/mobile/android/upwidget/c;->k:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "editable"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_29

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    check-cast v0, Ljava/lang/Boolean;

    if-ne v2, v0, :cond_29

    const/4 v0, 0x0

    :goto_27
    move v1, v0

    goto :goto_f

    :cond_29
    move v0, v1

    goto :goto_27
.end method

.method public final getCount()I
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/c;->k:Ljava/util/List;

    if-nez v1, :cond_6

    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/c;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/upwidget/c;->c()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0}, Lcom/unionpay/mobile/android/upwidget/c;->e()Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v0, 0x1

    :cond_18
    add-int/2addr v0, v1

    goto :goto_5
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/c;->k:Ljava/util/List;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/c;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1b

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/c;->k:Ljava/util/List;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/upwidget/c;->c()I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :cond_1b
    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/c;->d:Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/c;->d:Landroid/content/Context;

    invoke-direct {v3, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/unionpay/mobile/android/global/b;->g:I

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/c;->d:Landroid/content/Context;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v0, -0x342f27

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-direct {v6, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/upwidget/c;->c()I

    move-result v0

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/c;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_bf

    const/4 v0, 0x1

    :goto_3d
    invoke-direct {p0}, Lcom/unionpay/mobile/android/upwidget/c;->d()Z

    move-result v1

    if-eqz v1, :cond_c4

    if-nez p1, :cond_c4

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/c;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const v1, -0xcccccd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v7, -0x2

    invoke-direct {v1, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x9

    const/4 v7, -0x1

    invoke-virtual {v1, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v4, 0xf

    const/4 v7, -0x1

    invoke-virtual {v1, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v4, Lcom/unionpay/mobile/android/global/b;->f:I

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v3, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/c;->g:Ljava/lang/String;

    if-eqz v0, :cond_c2

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/c;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c2

    const/4 v0, 0x1

    :goto_83
    if-eqz v0, :cond_bb

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/c;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const v1, -0xcccccd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/c;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v7, -0x2

    invoke-direct {v1, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xb

    const/4 v7, -0x1

    invoke-virtual {v1, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v4, 0xf

    const/4 v7, -0x1

    invoke-virtual {v1, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v4, Lcom/unionpay/mobile/android/global/b;->f:I

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v3, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_bb
    invoke-virtual {v2, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_be
    :goto_be
    return-object v2

    :cond_bf
    const/4 v0, 0x0

    goto/16 :goto_3d

    :cond_c2
    const/4 v0, 0x0

    goto :goto_83

    :cond_c4
    invoke-direct {p0}, Lcom/unionpay/mobile/android/upwidget/c;->e()Z

    move-result v1

    if-eqz v1, :cond_122

    if-eqz v0, :cond_122

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/c;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const v1, -0x99999a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xf

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v4, 0x9

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v3, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/c;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/c;->d:Landroid/content/Context;

    const/high16 v4, 0x41a00000

    invoke-static {v1, v4}, Lcom/unionpay/mobile/android/utils/d;->a(Landroid/content/Context;F)I

    move-result v1

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xf

    const/4 v5, -0x1

    invoke-virtual {v4, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0xb

    const/4 v5, -0x1

    invoke-virtual {v4, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v3, v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_be

    :cond_122
    new-instance v7, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/c;->d:Landroid/content/Context;

    invoke-direct {v7, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x4

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setId(I)V

    new-instance v8, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/c;->d:Landroid/content/Context;

    invoke-direct {v8, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/upwidget/c;->b(I)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const v1, -0x99999a

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/c;->d:Landroid/content/Context;

    const/high16 v9, 0x41a00000

    invoke-static {v1, v9}, Lcom/unionpay/mobile/android/utils/d;->a(Landroid/content/Context;F)I

    move-result v9

    iget v1, p0, Lcom/unionpay/mobile/android/upwidget/c;->j:I

    if-nez v1, :cond_1cd

    iget-boolean v1, p0, Lcom/unionpay/mobile/android/upwidget/c;->h:Z

    if-eqz v1, :cond_1b6

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/c;->b:Landroid/graphics/drawable/Drawable;

    :goto_168
    iget-boolean v4, p0, Lcom/unionpay/mobile/android/upwidget/c;->h:Z

    if-nez v4, :cond_1b9

    iget v4, p0, Lcom/unionpay/mobile/android/upwidget/c;->i:I

    if-ne v4, p1, :cond_1b9

    if-eqz v1, :cond_1b9

    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_179
    :goto_179
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xf

    const/4 v9, -0x1

    invoke-virtual {v1, v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v4, 0x9

    const/4 v9, -0x1

    invoke-virtual {v1, v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v3, v7, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v9, -0x2

    invoke-direct {v1, v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xf

    const/4 v9, -0x1

    invoke-virtual {v1, v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v4, 0x1

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v1, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v4, Lcom/unionpay/mobile/android/global/b;->g:I

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v3, v8, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1a9
    :goto_1a9
    invoke-direct {p0}, Lcom/unionpay/mobile/android/upwidget/c;->e()Z

    move-result v1

    if-eqz v1, :cond_1b1

    if-nez v0, :cond_be

    :cond_1b1
    invoke-virtual {v2, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_be

    :cond_1b6
    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/c;->a:Landroid/graphics/drawable/Drawable;

    goto :goto_168

    :cond_1b9
    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/upwidget/c;->c(I)Z

    move-result v4

    if-eqz v4, :cond_179

    iget-boolean v4, p0, Lcom/unionpay/mobile/android/upwidget/c;->h:Z

    if-eqz v4, :cond_179

    if-eqz v1, :cond_179

    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_179

    :cond_1cd
    iget v1, p0, Lcom/unionpay/mobile/android/upwidget/c;->j:I

    const/4 v10, 0x1

    if-ne v1, v10, :cond_1a9

    iget v1, p0, Lcom/unionpay/mobile/android/upwidget/c;->i:I

    if-ne v1, p1, :cond_237

    const/16 v1, 0x3f0

    :goto_1d8
    iget-object v10, p0, Lcom/unionpay/mobile/android/upwidget/c;->d:Landroid/content/Context;

    const/high16 v11, 0x41a00000

    invoke-static {v10, v11}, Lcom/unionpay/mobile/android/utils/d;->a(Landroid/content/Context;F)I

    move-result v10

    iget-object v11, p0, Lcom/unionpay/mobile/android/upwidget/c;->d:Landroid/content/Context;

    invoke-static {v11}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object v11

    invoke-virtual {v11, v1, v9, v9}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/upwidget/c;->d(I)Z

    move-result v9

    if-eqz v9, :cond_1f4

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1f4
    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v1, p0, Lcom/unionpay/mobile/android/upwidget/c;->h:Z

    if-eqz v1, :cond_23a

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/c;->b:Landroid/graphics/drawable/Drawable;

    :goto_1fd
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0xf

    const/4 v10, -0x1

    invoke-virtual {v1, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v9, 0xb

    const/4 v10, -0x1

    invoke-virtual {v1, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v3, v7, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v1, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0xf

    const/4 v10, -0x1

    invoke-virtual {v1, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v9, 0x9

    const/4 v10, -0x1

    invoke-virtual {v1, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v9, 0x0

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v1, v9, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v7, Lcom/unionpay/mobile/android/global/b;->g:I

    iput v7, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v3, v8, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_1a9

    :cond_237
    const/16 v1, 0x3ef

    goto :goto_1d8

    :cond_23a
    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/c;->a:Landroid/graphics/drawable/Drawable;

    goto :goto_1fd
.end method

.method public final isEnabled(I)Z
    .registers 3

    invoke-direct {p0}, Lcom/unionpay/mobile/android/upwidget/c;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p1, :cond_e

    :cond_8
    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/upwidget/c;->d(I)Z

    move-result v0

    if-nez v0, :cond_10

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0

    :cond_10
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_f
.end method
