.class Lcom/baidu/bdgame/sdk/obf/ct$c;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/ct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ct;


# direct methods
.method private constructor <init>(Lcom/baidu/bdgame/sdk/obf/ct;)V
    .registers 2

    .prologue
    .line 311
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ct$c;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/bdgame/sdk/obf/ct;Lcom/baidu/bdgame/sdk/obf/ct$1;)V
    .registers 3

    .prologue
    .line 311
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ct$c;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;)V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/baidu/bdgame/sdk/obf/ic;
    .registers 3

    .prologue
    .line 320
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct$c;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->d(Lcom/baidu/bdgame/sdk/obf/ct;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ic;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct$c;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->d(Lcom/baidu/bdgame/sdk/obf/ct;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 311
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ct$c;->a(I)Lcom/baidu/bdgame/sdk/obf/ic;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 325
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 330
    .line 331
    if-nez p2, :cond_d1

    .line 332
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct$c;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->f(Lcom/baidu/bdgame/sdk/obf/ct;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ct$c;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ct;->f(Lcom/baidu/bdgame/sdk/obf/ct;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_paycenter_view_voucher_item"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 333
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ct$b;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct$c;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-direct {v1, v0, v3}, Lcom/baidu/bdgame/sdk/obf/ct$b;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;Lcom/baidu/bdgame/sdk/obf/ct$1;)V

    .line 334
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct$c;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->f(Lcom/baidu/bdgame/sdk/obf/ct;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "bdp_pay_voucher_name"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/baidu/bdgame/sdk/obf/ct$b;->a:Landroid/widget/TextView;

    .line 335
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct$c;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->f(Lcom/baidu/bdgame/sdk/obf/ct;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "bdp_pay_voucher_expire"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/baidu/bdgame/sdk/obf/ct$b;->b:Landroid/widget/TextView;

    .line 336
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 341
    :goto_51
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct$c;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->d(Lcom/baidu/bdgame/sdk/obf/ct;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ic;

    .line 342
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ic;->a()Lcom/baidu/bdgame/sdk/obf/ic$a;

    move-result-object v2

    sget-object v3, Lcom/baidu/bdgame/sdk/obf/ic$a;->b:Lcom/baidu/bdgame/sdk/obf/ic$a;

    if-ne v2, v3, :cond_da

    .line 343
    iget-object v2, v1, Lcom/baidu/bdgame/sdk/obf/ct$b;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ct$c;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-static {v3}, Lcom/baidu/bdgame/sdk/obf/ct;->f(Lcom/baidu/bdgame/sdk/obf/ct;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/ct$c;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-static {v4}, Lcom/baidu/bdgame/sdk/obf/ct;->f(Lcom/baidu/bdgame/sdk/obf/ct;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "bdp_paycenter_use_balance_voucher"

    invoke-static {v4, v5}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ic;->b()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    :goto_8c
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ic;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b9

    .line 349
    iget-object v1, v1, Lcom/baidu/bdgame/sdk/obf/ct$b;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ct$c;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/ct;->f(Lcom/baidu/bdgame/sdk/obf/ct;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ct$c;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-static {v3}, Lcom/baidu/bdgame/sdk/obf/ct;->f(Lcom/baidu/bdgame/sdk/obf/ct;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "bdp_paycenter_voucher_expire"

    invoke-static {v3, v4}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ic;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    :cond_b9
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ct$c;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ct;->d()Lcom/baidu/bdgame/sdk/obf/ic;

    move-result-object v1

    if-ne v0, v1, :cond_102

    .line 353
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct$c;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->f(Lcom/baidu/bdgame/sdk/obf/ct;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_coupon_bg2"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 359
    :goto_d0
    return-object p2

    .line 338
    :cond_d1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ct$b;

    move-object v1, v0

    goto/16 :goto_51

    .line 345
    :cond_da
    iget-object v2, v1, Lcom/baidu/bdgame/sdk/obf/ct$b;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ct$c;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-static {v3}, Lcom/baidu/bdgame/sdk/obf/ct;->f(Lcom/baidu/bdgame/sdk/obf/ct;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/ct$c;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-static {v4}, Lcom/baidu/bdgame/sdk/obf/ct;->f(Lcom/baidu/bdgame/sdk/obf/ct;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "bdp_paycenter_use_voucher"

    invoke-static {v4, v5}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ic;->b()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8c

    .line 355
    :cond_102
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct$c;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->f(Lcom/baidu/bdgame/sdk/obf/ct;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_coupon_bg"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_d0
.end method
